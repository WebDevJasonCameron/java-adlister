import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * THIS IS A BEAN
 *
 * Its purpose is to place data from a DB into a usable obj
 */
public class Product implements Serializable {

    // F
    private String name;
    private double price;
    private static List<Product> products = new ArrayList<>();      //  Sim DB

    // CON
    public Product() {
    }
    public Product(String name, double price) {
        this.name = name;
        this.price = price;
    }

    // GETS
    public String getName() {
        return name;
    }
    public double getPrice() {
        return price;
    }
    public static List<Product> getProducts() {
        return products;
    }

    // SETS
    public void setName(String name) {
        this.name = name;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public static void setProducts(List<Product> products) {
        Product.products = products;
    }

    // FUN


}  // <--END
