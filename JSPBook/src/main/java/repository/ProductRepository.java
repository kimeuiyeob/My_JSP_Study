package repository;

import java.util.ArrayList;
import java.util.List;

import dao.Product;

public class ProductRepository {

	private ArrayList<Product> productList = new ArrayList<>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance() {
		return instance;
	}

	public void addProduct(Product product) {
		productList.add(product);
	}

	public List<Product> getAllProducts() {
		return productList;
	}

	public ProductRepository() {

		/*
		 * Product phone1 = new Product("p1234", "iphone", 500000);
		 * phone1.setDescription("this is iphone"); phone1.setCategory("handphone");
		 * phone1.setManufacturer("apple"); phone1.setStock(5000);
		 * 
		 * Product phone2 = new Product("p1235", "samsung", 400000);
		 * phone2.setDescription("this is galaxy"); phone2.setCategory("handphone");
		 * phone2.setManufacturer("samsung"); phone2.setStock(6500);
		 * 
		 * Product phone3 = new Product("p1236", "tesla", 8900000);
		 * phone3.setDescription("this is tesla"); phone3.setCategory("car");
		 * phone3.setManufacturer("tesla"); phone3.setStock(6500);
		 * 
		 * productList.add(phone1); productList.add(phone2); productList.add(phone3);
		 */
	}

}
