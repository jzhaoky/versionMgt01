package com.wondersgroup.fwy.service;

import java.io.IOException;
import java.util.List;

import org.apache.solr.client.solrj.SolrServerException;

import com.wondersgroup.fwy.common.Page;
import com.wondersgroup.fwy.controller.ProductManageCondition;

/**
 * @Description 产品管理接口实现类
 * @author jzhaoky
 * @date 2019年6月10日 下午3:23:12
 */
public interface IProductManageService {

	/**
	 * @Description 从solr库里面查询产品列表
	 * @param condition {@link void}
	 * @author jzhaoky
	 * @date 2019年6月10日 下午3:38:12
	 */
	Page queryProductsByPage(ProductManageCondition condition) throws SolrServerException, IOException;
	
	/**
	 * @Description 搜索建议查询
	 * @param keywords
	 * @throws SolrServerException
	 * @throws IOException {@link List<String>}
	 * @author jzhaoky
	 * @date 2019年6月11日 下午7:07:48
	 */
	List<String> querySuggestWordList(String keywords) throws SolrServerException, IOException;
}
