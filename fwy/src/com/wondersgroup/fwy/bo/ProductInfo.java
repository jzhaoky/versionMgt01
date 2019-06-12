package com.wondersgroup.fwy.bo;


import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PRODUCT_INFO")
public class ProductInfo implements Serializable{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String productId; //产品id
    private String productName; //产品名称
    private String productType; //产品类型
    private String serviceType; //服务类型
    private String picPath;//产品图片
    private String priceType;//收费模式
    private Double priceLower;//收费区间最小值
    private Double priceUpper; //收费区间最大值
    private String serviceTypeSub; //服务子类型
    private String serviceTarget; //服务对象
    private Integer orderCount; //成交量
    private Date modifyTime; //最后修改时间/上线时间
    private String shopName; //店铺名称
    private String city; //机构所在区域
    private String serviceNature; //社会服务、公共服务
    private String employeeNum; //机构人数
    
	@Id
	@Column(name = "product_id")
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }
    @Column(name = "product_name")
    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    @Column(name = "product_type")
    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }
    @Column(name = "service_type")
    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    } 
    @Column(name = "pic_path")
    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }
	@Column(name = "price_type")
	public String getPriceType() {
		return priceType;
	}

	@Column(name = "price_lower")
	public Double getPriceLower() {
		return priceLower;
	}

	public void setPriceLower(Double priceLower) {
		this.priceLower = priceLower;
	}

	@Column(name = "price_upper")
	public Double getPriceUpper() {
		return priceUpper;
	}

	public void setPriceUpper(Double priceUpper) {
		this.priceUpper = priceUpper;
	}


	@Column(name = "service_type_sub")
	public String getServiceTypeSub() {
		return serviceTypeSub;
	}

	public void setServiceTypeSub(String serviceTypeSub) {
		this.serviceTypeSub = serviceTypeSub;
	}

	@Column(name = "SERVICE_TARGET")
	public String getServiceTarget() {
		return serviceTarget;
	}

	public void setServiceTarget(String serviceTarget) {
		this.serviceTarget = serviceTarget;
	}

	@Column(name = "ORDER_COUNT")
	public Integer getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(Integer orderCount) {
		this.orderCount = orderCount;
	}

	@Column(name = "MODIFY_TIME")
	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	@Column(name = "SHOP_NAME")
	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	@Column(name = "CITY")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "EMPLOYEE_NUM")
	public String getEmployeeNum() {
		return employeeNum;
	}

	public void setEmployeeNum(String employeeNum) {
		this.employeeNum = employeeNum;
	}

	public void setPriceType(String priceType) {
		this.priceType = priceType;
	}

	@Column(name = "SERVICE_NATURE")
	public String getServiceNature() {
		return serviceNature;
	}

	public void setServiceNature(String serviceNature) {
		this.serviceNature = serviceNature;
	}
}
