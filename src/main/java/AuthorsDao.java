import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AuthorsDao implements Authors{

    // F
    private Connection connection;

    // CON
    public AuthorsDao() {
        try {
            // Get the secret stuff...
            Config config = new Config();
            // Get Driver into our app
            DriverManager.registerDriver(new Driver());
            // Create connection obj
            //   ... Note: link takes you to the db you want to use...
            connection = DriverManager.getConnection(
                    config.getURL(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    // OVR
    @Override
    public List<Author> all() {
        List<Author> authors = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM code_test_db.authors");
            while (rs.next()){
                Author author = new Author(
                        rs.getLong("id"),
                        rs.getString("author_name")
                );
                authors.add(author);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to db", e);
        }
        return authors;
    }

    @Override
    public Author getAuthorById(long id) {
        try{
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM code_test_db.authors WHERE id=" + id);
            rs.next();
            Author author = new Author(
                    rs.getLong("id"),
                    rs.getString("author_name")
            );
            return author;
        } catch (SQLException e){
            throw new RuntimeException("Error Connecting to db ", e);
        }

    }

    @Override
    public long insert(Author author) {
        String author_name = author.getAuthor_name();
        String query = "INSERT INTO code_test_db.authors (author_name)" +
                "VALUES('" + author_name + "')";
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getResultSet();
            rs.next();
            long key = rs.getLong(1);
            return key;
        } catch (SQLException e){
            throw new RuntimeException("Error connecting to db", e);
        }
    }
}
