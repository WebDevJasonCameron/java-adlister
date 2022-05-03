import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.mysql.cj.jdbc.Driver;

public class JDBCTest {
    // Test of Java Database Connectivity ... Requires:
    // 1. Connection Obj
    // 2. Statement Obj
    // 3. Result Obj

    private static List<String> getAuthorNames(){
        List<String> authorNames = new ArrayList<>();
        try {
            Config config = new Config();
            // Get Driver into our app
            DriverManager.registerDriver(new Driver());
            // Create connection obj
            //   ... Note: link takes you to the db you want to use...
            Connection connection = DriverManager.getConnection(
                    config.getURL(),
                    config.getUser(),
                    config.getPassword()
            );
            // Create statement obj
            Statement statement = connection.createStatement();
            // Execute statement and get results
            ResultSet rs = statement.executeQuery("SELECT author_name FROM code_test_db.authors");

            while (rs.next()){
                authorNames.add(rs.getString("author_name"));
            }

        } catch (SQLException e){
            e.printStackTrace();
        }
        return authorNames;
    }

    public static void main(String[] args) {
        List<String> authorNames = getAuthorNames();
        for(String name : authorNames){
            System.out.println(name);
        }
    }

}
