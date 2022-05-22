package com.model;

public class Product {
private int product_id;
private String product_name;
private String product_category;
private String Brand;
private double price;
private int stock;
private String image;
public Product(int product_id, String product_name, String product_category, String brand, double price, int stock,
		String image) {
	super();
	this.product_id = product_id;
	this.product_name = product_name;
	this.product_category = product_category;
	Brand = brand;
	this.price = price;
	this.stock = stock;
	this.image = image;
}
public int getProduct_id() {
	return product_id;
}
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
public String getProduct_name() {
	return product_name;
}
public void setProduct_name(String product_name) {
	this.product_name = product_name;
}
public String getProduct_category() {
	return product_category;
}
public void setProduct_category(String product_category) {
	this.product_category = product_category;
}
public String getBrand() {
	return Brand;
}
public void setBrand(String brand) {
	Brand = brand;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getStock() {
	return stock;
}
public void setStock(int stock) {
	this.stock = stock;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}


}
