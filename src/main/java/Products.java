import java.util.List;

/**
 * INTERFACE ...
 *
 *   This will sim the DB interactions....
 *   It is also used in the ListProductDao because Data Access Obj will need to perform
 *   these listed functions
 */
public interface Products {
    // Matches the SELECT * FROM products....
    List<Product> all();
    // Matches INSERT INTO products (name, price)....
    void insert(Product product);
}
