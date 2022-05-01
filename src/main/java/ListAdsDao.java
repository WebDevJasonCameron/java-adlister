/**
 * DAO
 *
 * Used for Ad Objects
 */
import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {

    // F
    private List<Ad> ads;

    // CONST
    public ListAdsDao() {                       //   NOT NEEDED... But written here as a
    }                                           // reminder that this is called in the
                                                // DaoFactory if getAdsDao finds the
                                                // interface (adsDao) is null

    // OVR
    @Override
    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    // METH
    // Using this in place of an actual DB
    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
            1,
            1,
            "playstation for sale",
            "This is a slightly used playstation"
        ));
        ads.add(new Ad(
            2,
            1,
            "Super Nintendo",
            "Get your game on with this old-school classic!"
        ));
        ads.add(new Ad(
            3,
            2,
            "Junior Java Developer Position",
            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
        ));
        ads.add(new Ad(
            4,
            2,
            "JavaScript Developer needed",
            "Must have strong Java skills"
        ));
        return ads;
    }
}
