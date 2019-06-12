package com.wondersgroup.fwy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.solr.client.solrj.SolrServerException;
import org.noggit.JSONUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wondersgroup.fwy.common.Page;
import com.wondersgroup.fwy.service.IProductManageService;

/**
 * @Description: TODO
 * @author jzhaoky
 * @date 2019年6月9日 下午10:31:20
 */
@Controller
@RequestMapping("/product")
public class ProductManageController {

	@Autowired
	private IProductManageService productManageService;
	
	/**
	 * @Description 产品列表
	 * @param condition
	 * @return {@link ModelMap}
	 * @author jzhaoky
	 * @date 2019年6月11日 下午6:59:25
	 */
	@RequestMapping("/product_list")
	public ModelMap searchProductList(ProductManageCondition condition) {
		ModelMap modelMap = new ModelMap();
		try {
			Page page = productManageService.queryProductsByPage(condition);
			modelMap.put("page", page);
			modelMap.put("condition", condition);
		} catch (SolrServerException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return modelMap;
	}
	
	/**
	 * @Description 搜索建议
	 * @param keywords {@link void}
	 * @author jzhaoky
	 * @date 2019年6月11日 下午6:59:43
	 */
	@RequestMapping("/suggest_word_list")
	public void querySuggestWordList(HttpServletResponse response,String keywords){
		try {
			List<String> suggestWordList = productManageService.querySuggestWordList(keywords);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter pw = response.getWriter();
			pw.write(JSONUtil.toJSON(suggestWordList));
			pw.flush();
			pw.close();
		} catch (SolrServerException | IOException e) {
			e.printStackTrace();
		}
	}
	
}
