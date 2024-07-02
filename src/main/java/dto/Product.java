
package dto;

import java.io.Serializable;

public class Product implements Serializable{
	
	//맴버 변수 선언하기
	private static final long serialVersionUID = -427470057203867700L;
	
	private String productId;		//상품 아이디
	private String pname;			//상품명
	private Integer unitPrice;		//상품 가격
	private String description;		//상품 설명
	private String manufacturer;	//제조사
	private String category;		//분류
	private long unitsInStock;		//재고 수
	private String condition;		//신상품 or 중고품 or 재생품
	
	
	
	//기본 생성자 작성 : 기본 생성자와 선언된 멤버 변수인 '상품 아이디','상품명','가격' 을 매개변수로 하는 생성자를 추가 작성한다. 
	
	public Product() {
		super();
	}



	public Product(String productId, String pname, Integer unitPrice) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	//모든 맴버 변수의 Setter/Getter() 메소드 작성

	public String getProductId() {
		return productId;
	}



	public void setProductId(String productId) {
		this.productId = productId;
	}



	public String getPname() {
		return pname;
	}



	public void setPname(String pname) {
		this.pname = pname;
	}



	public Integer getUnitPrice() {
		return unitPrice;
	}



	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public String getManufacturer() {
		return manufacturer;
	}



	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public long getUnitsInStock() {
		return unitsInStock;
	}



	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}



	public String getCondition() {
		return condition;
	}



	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
	
	
	
}