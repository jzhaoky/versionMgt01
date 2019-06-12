package com.wondersgroup.pojo;

import org.apache.solr.client.solrj.beans.Field;


/**
 * @Description: TODO
 * @author jzhaoky
 * @date 2019年6月9日 下午8:10:51
 */
public class ProductCore {
	
	@Field
	private String id;
	
	@Field
	private String name;
	
	public ProductCore() {
		// TODO Auto-generated constructor stub
	}
	
	public ProductCore(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}


	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
