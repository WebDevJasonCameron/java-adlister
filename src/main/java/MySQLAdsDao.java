import com.mysql.cj.jdbc.Driver;                    //  <-- KEY IMPORT!!!

import java.sql.Connection;
import java.sql.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    // F
    private Connection connection;
    private Config config = new Config();

    // CON
    public MySQLAdsDao(){
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getURL(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error DB connection during MySQLAdsDao" +
                    " CON: ", e);
        }
    }

    // OVR
    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(
                    "SELECT * FROM adlister_db.ads"
            );
            return createAdsFromRS(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error DB connection during MySQLAdsDao" +
                    " all() method: ", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(createInsertQuery(ad), Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new Ad");
        }
    }

    private String createInsertQuery(Ad ad) {                                   //   Used in insert()
        return "INSERT INTO ads(user_id, title, description) VALUES" +          //   This is the SQL needed
                "(" + ad.getUserId() + "," +
                "'" + ad.getTitle() + "', " +
                "'" + ad.getDescription() + "')";
    }

    private Ad extractAd(ResultSet rs) throws SQLException {                    //   Used in createAdsFromRS()
        return new Ad(                                                          //   Needed to read data from result
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private List<Ad> createAdsFromRS(ResultSet rs) throws SQLException {        //   Will be used to display data
        List<Ad> ads = new ArrayList<>();
        while (rs.next()){
            ads.add(extractAd(rs));
        }
        return ads;
    }

}  //  <--END
