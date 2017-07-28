/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Product;

/**
 *
 * @author richa yadav
 */
public class Product {
    private int productID;
    private String ProductName ="";
    private String ProductDescription ="";
    private String ProductCategory ="";
    private String ProductPrice ="";

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public String getProductDescription() {
        return ProductDescription;
    }

    public void setProductDescription(String ProductDescription) {
        this.ProductDescription = ProductDescription;
    }

    public String getProductCategory() {
        return ProductCategory;
    }

    public void setProductCategory(String ProductCategory) {
        this.ProductCategory = ProductCategory;
    }
    
    public String getProductPrice() {
        return ProductPrice;
    }
    public void setProductPrice(String ProductPrice) {
        this.ProductPrice = ProductPrice;
    }
    
    
}
