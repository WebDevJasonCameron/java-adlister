package com.codeup.adlister.dao;

import com.mysql.cj.jdbc.Driver;                //   <-- KEY IMPORTANT
import com.codeup.adlister.models.User;

import java.sql.*;

public class MySQLUsersDao implements Users  {

    // F
    private Connection connection;

    // CON
    public MySQLUsersDao(Config config) {
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getURL(),
                    config.getUser(),
                    config.getPassword()
            );

        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the DB (From UsersDAO): ", e);
        }
    }

    @Override
    public User findByUsername(String un) {
        String q = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try{
            PreparedStatement ps = connection.prepareStatement(q);
            ps.setString(1, un);
            return extractUser(ps.executeQuery());
        } catch (SQLException e){
            throw new RuntimeException("Error finding a user by username (From UsersDAO): ", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if ( ! rs.next()) {
            return null;
        }
        return new User(
                rs.getLong("id"),
                rs.getString("username"),
                rs.getString("email"),
                rs.getString("password")
        );
    }

    @Override
    public Long insert(User u) {
       String q = "INSERT INTO user(username, email, password) VALUES (?, ?, ?)";

       try{
            PreparedStatement ps = connection.prepareStatement(q, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());
            ps.executeQuery();

            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
       } catch (SQLException e) {
           throw new RuntimeException("Error creating a new user (From UsersDao): ", e);
       }
    }
}
