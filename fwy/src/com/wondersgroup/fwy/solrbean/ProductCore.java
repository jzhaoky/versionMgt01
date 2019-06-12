package com.wondersgroup.fwy.solrbean;


import java.io.Serializable;
import java.util.Date;

import org.apache.solr.client.solrj.beans.Field;

public class ProductCore implements Serializable{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Field("id")
	private String productId; //产品id
	@Field
    private String productName; //产品名称
	@Field
    private String productType; //产品类型
	@Field
    private String serviceType; //服务类型
	@Field
    private String picPath;//产品图片
	@Field
    private String priceType;//收费模式
	@Field
    private Double priceLower;//收费区间最小值
	@Field
    private Double priceUpper; //收费区间最大值
	@Field
    private String serviceTypeSub; //服务子类型
	@Field
    private String serviceTarget; //服务对象
	@Field
    private Integer orderCount; //成交量
	@Field
    private Date modifyTime;//最后修改时间/上线时间
	@Field
    private String shopName; //店铺名称
	@Field
    private String city; //区域
	@Field
	private String serviceNature; //社会服务、公共服务
	@Field
    private String employeeNum;//机构人数
    
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }
    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }
    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    } 
    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }
	public String getPriceType() {
		return priceType;
	}

	public Double getPriceLower() {
		return priceLower;
	}

	public void setPriceLower(Double priceLower) {
		this.priceLower = priceLower;
	}

	public Double getPriceUpper() {
		return priceUpper;
	}

	public void setPriceUpper(Double priceUpper) {
		this.priceUpper = priceUpper;
	}


	public String getServiceTypeSub() {
		return serviceTypeSub;
	}

	public void setServiceTypeSub(String serviceTypeSub) {
		this.serviceTypeSub = serviceTypeSub;
	}

	public String getServiceTarget() {
		return serviceTarget;
	}

	public void setServiceTarget(String serviceTarget) {
		this.serviceTarget = serviceTarget;
	}

	public Integer getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(Integer orderCount) {
		this.orderCount = orderCount;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmployeeNum() {
		return employeeNum;
	}

	public void setEmployeeNum(String employeeNum) {
		this.employeeNum = employeeNum;
	}

	public void setPriceType(String priceType) {
		this.priceType = priceType;
	}
	public void setServiceNature(String serviceNature) {
		this.serviceNature = serviceNature;
	}
	public String getServiceNature() {
		return serviceNature;
	}
}
