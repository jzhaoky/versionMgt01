package com.wondersgroup.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrInputDocument;
import org.junit.Before;
import org.junit.Test;

import com.wondersgroup.pojo.ProductCore;

/**
 * @Description solrj 管理类
 * 添加、删除、修改、查询
 * @author jzhaoky
 * @date 2019年6月9日 下午7:14:26
 */
public class SolrJManager {

	private String BASE_URL = "http://localhost:8088/solr/"; //solr base_url
	
	private HttpSolrClient solrClient = null;
	
	/**
	 * @Description 初始化solr客户端
	 * @throws
	 * @author jzhaoky
	 * @date 2019年6月9日 下午8:37:08
	 */
	@Before
	public void initSolrClient() {
		solrClient = new HttpSolrClient.Builder(BASE_URL).withConnectionTimeout(10000)
                .withSocketTimeout(60000)
                .build();
	}
	
	/**
	 * @Description 向solr索引库中添加数据
	 * @throws SolrServerException
	 * @throws IOException {@link void}
	 * @author jzhaoky
	 * @date 2019年6月9日 下午7:46:11
	 */
	@Test
	public void testAdd() throws SolrServerException, IOException {
		//普通添加
		/*SolrInputDocument doc = new SolrInputDocument();  //创建document
		doc.addField("id", "1");  //创建域
		doc.addField("name", "华为");
		solrClient.add("product",doc); *///向指定collection里面添加doc
		//封装成bean对象添加
		/*ProductCore productCore = new ProductCore("1","华为");
		ProductCore productCore1 = new ProductCore("2","中兴");*/
		ProductCore productCore2 = new ProductCore("3","阿里");
		List<ProductCore> productCores = new ArrayList<ProductCore>();
		/*productCores.add(productCore);
		productCores.add(productCore1);*/
		productCores.add(productCore2);
		solrClient.addBeans("product",productCores);
		
		//提交数据
		solrClient.commit("product");
	}
	
	/**
	 * @Description 查询
	 * @throws SolrServerException
	 * @throws IOException {@link void}
	 * @author jzhaoky
	 * @date 2019年6月9日 下午7:46:32
	 */
	@Test
	public void testQuery() throws SolrServerException, IOException {
		SolrQuery query = new SolrQuery();
		query.setQuery("name:*");
		query.setStart(0);
		query.setRows(3);
		query.set("sort", "name asc");
		query.setFields("name");
		//query.set("", val)
		//SolrQuery.SortClause
		//query.setSort();
		//query.setSort(field, order)
		QueryResponse queryResponse = solrClient.query("product",query);
		
		//普通获取
		/*SolrDocumentList results = queryResponse.getResults();
		for (SolrDocument solrDocument : results) {
			System.out.println("id:"+solrDocument.get("id")+",name:"+solrDocument.get("name"));
		}*/
		
		//转换成bean
		List<ProductCore> productList = queryResponse.getBeans(ProductCore.class);
		for (ProductCore productCore : productList) {
			System.out.println("id:"+productCore.getId()+",name:"+productCore.getName());
		}
	}
	
	/**
	 * @Description 删除
	 * @throws SolrServerException
	 * @throws IOException {@link void}
	 * @author jzhaoky
	 * @date 2019年6月9日 下午8:22:25
	 */
	@Test
	public void testDelete() throws SolrServerException, IOException {
		//solrClient.deleteById(id); 通过id删除
		solrClient.deleteByQuery("product","name:小明"); //通过条件删除
		solrClient.commit("product");
	}
}
