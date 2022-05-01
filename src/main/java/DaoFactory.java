public class DaoFactory {

    // F
    private static Ads adsDao;

    // METH
    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
        }
        return adsDao;
    }
}
