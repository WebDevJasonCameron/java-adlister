

public class DaoFactory {

    private static Ads adsDao;
    private static AuthorsDao authorsDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
        }
        return adsDao;
    }

    public static Authors getAuthorDao() {
        if (authorsDao == null){
            authorsDao = new AuthorsDao();
        }
        return getAuthorDao();
    }
}
