package com.wondersgroup.fwy.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.client.solrj.response.SpellCheckResponse;
import org.apache.solr.client.solrj.response.SpellCheckResponse.Suggestion;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wondersgroup.fwy.common.Page;
import com.wondersgroup.fwy.controller.ProductManageCondition;
import com.wondersgroup.fwy.service.IProductManageService;
import com.wondersgroup.fwy.solrbean.ProductCore;

/**
 * @Description 产品管理实现类
 * @author jzhaoky
 * @date 2019年6月10日 下午3:25:00
 */
@Service
@Transactional
public class ProductManageServiceImpl implements IProductManageService{

	//@Value("${solr.base_url}")
	private String solr_base_url = "http://localhost:8088/solr/";
	@Autowired
	private SolrClient solrClient;
	
	@Override
	public Page queryProductsByPage(ProductManageCondition condition) throws SolrServerException, IOException {
		/*SolrClient solrClient = new HttpSolrClient.Builder(solr_base_url) //创建solr连接客户端
		.withConnectionTimeout(10000)
		.withSocketTimeout(50000).build();*/
		//搜索起始位置
		SolrQuery solrQuery = packQuery(condition);
		QueryResponse queryResponse = solrClient.query("product",solrQuery);
		
		Map<String, Map<String, List<String>>> hlResponse = queryResponse.getHighlighting(); //是否有高亮
		SolrDocumentList docsList = queryResponse.getResults();
		
		for (SolrDocument doc : docsList) {
			Map<String, List<String>> tempMap = hlResponse.get(doc.get("id"));
			if (tempMap!=null&&tempMap.get("productName")!=null) {
				doc.setField("productName", tempMap.get("productName").get(0));
			}
			if (tempMap!=null&&tempMap.get("shopName")!=null) {
				doc.setField("shopName", tempMap.get("shopName").get(0));
			}
		}
		
		List<ProductCore> resultList = queryResponse.getBeans(ProductCore.class);
		int totalSize = (int)docsList.getNumFound();
		Page page = new Page(0,resultList.size(), totalSize, 20, resultList);
		return page;
	}
	
	public List<String> querySuggestWordList(String keywords) throws SolrServerException, IOException{
		/*HttpSolrClient solrClient = new HttpSolrClient.Builder(solr_base_url) //创建solr连接客户端
		.withConnectionTimeout(10000)
		.withSocketTimeout(50000).build();*/
		List<String> dataList = new LinkedList<String>();
		 SolrQuery query = new SolrQuery();
		 query.set("qt", "/spell");
		 query.setQuery(keywords);
		 query.set("spellcheck.dictionary", "suggest");
		 query.set("spellcheck.count", "10");//返回数量 
		 QueryResponse queryResponse = solrClient.query("product",query);
		 //获取拼写检查的结果集 
         SpellCheckResponse re = queryResponse.getSpellCheckResponse();
		 if (re != null) 
         {
             for(Suggestion s :  re.getSuggestions())
             { 
                  List<String> list = s.getAlternatives();//获取所有 的检索词 
                  for(String spellWord : list)
                  { 
                	  dataList.add(spellWord);
                  } 
            }   
         }
		 return dataList;
	}
	
	
	private SolrQuery packQuery(ProductManageCondition condition){
		SolrQuery solrQuery = new SolrQuery();
		int startIndex = 0;
		if ( null != condition.getPageNo()) {
			startIndex = Page.getStartOfAnyPage(condition.getPageNo(),20);
		}
		solrQuery.setStart(startIndex);
		solrQuery.setRows(20);
		if (StringUtils.isNotBlank(condition.getKeywords())) {
			solrQuery.setQuery("text_str:"+condition.getKeywords().replace(":", " "));
		}else {
			solrQuery.setQuery("*:*");
		}
		List<String> fqStr = new ArrayList<String>();//过滤条件
		if (StringUtils.isNotBlank(condition.getArea())) {
			fqStr.add("city:"+condition.getArea());
		}
		if (StringUtils.isNotBlank(condition.getProductNature())) {
			fqStr.add("serviceNature:"+(condition.getProductNature().indexOf("公共")>-1?"PUBLIC":"SOCIAL"));
		}
		if (StringUtils.isNotBlank(condition.getPriceType())) {
			fqStr.add("priceType:"+condition.getPriceType());
		}
		if (fqStr.size()>0) {
			String[] fqArr = new String[fqStr.size()];
			solrQuery.setFilterQueries(fqStr.toArray(fqArr));
		}
		solrQuery.setHighlight(true);
		solrQuery.addHighlightField("productName,shopName");
		solrQuery.setHighlightSimplePre("<font color='red'>");
		solrQuery.setHighlightSimplePost("</font>");
		return solrQuery;
	}
}
