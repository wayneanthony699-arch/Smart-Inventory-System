package inventory;

import java.sql.Timestamp;

public class Products {
	//global
	int id;
    int categoryId;
    String productName;
    double price;
    int quantity;
    int minStock;
    String description;
    Timestamp createdAt;


	public Products(int id, int categoryId, String productName, double price, int quantity, int minStock,String description, Timestamp createdAt) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
		this.minStock = minStock;
		this.description = description;
		this.createdAt = createdAt;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getCategoryId() {
		return categoryId;
	}



	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public double getPrice() {
		return price;
	}



	public void setPrice(double price) {
		this.price = price;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public int getMinStock() {
		return minStock;
	}



	public void setMinStock(int minStock) {
		this.minStock = minStock;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public Timestamp getCreatedAt() {
		return createdAt;
	}



	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}

	
}
