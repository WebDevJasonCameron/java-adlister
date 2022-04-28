/**
 *  Although this is titled DaoFactory, it really is a class that manages
 *  multiple DAO logics. I think of it as the mid-level controller between
 *  CRUD and outside interactions
 */

public class DaoFactory {

    // F
    private static Products productsDao;

    // METH
    public static Products getProductsDao(){
        if (productsDao == null) {
            productsDao = new ListProductsDao();
        }
        return productsDao;
    }
}
