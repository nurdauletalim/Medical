package DAO;

import Entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public static User login(String email, String password) throws SQLException, ClassNotFoundException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE email = ? and password = ?");
        statement.setString(1, email);
        statement.setString(2, password);

        ResultSet resultSet = statement.executeQuery();

        User user = null;

        if (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String email1 = resultSet.getString("email");
            int iin = resultSet.getInt("iin");
            String password1 = resultSet.getString("password");
            String city = resultSet.getString("city");
            String address = resultSet.getString("address");
            user = new User(id, name, email1, iin, password, city, address);
        }

        resultSet.close();
        statement.close();
        connection.close();

        return user;
    }

    public static User getById(int id) throws SQLException, ClassNotFoundException {
        Connection connection = DBConnection.getConnection();
        User user = new User();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE id = ?");
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();
        resultSet.next();

        user.setId(resultSet.getInt("id"));
        user.setName(resultSet.getString("name"));
        user.setEmail(resultSet.getString("email"));
        user.setPassword(resultSet.getString("password"));
        user.setIin(resultSet.getInt("iin"));
        user.setAddress(resultSet.getString("address"));
        user.setCity(resultSet.getString("city"));

        resultSet.close();
        statement.close();
        connection.close();

        return user;
    }

    public static int register(User user) throws SQLException, ClassNotFoundException {
        int res = 0;
        Connection connection = DBConnection.getConnection();

        PreparedStatement statement = connection.prepareStatement("INSERT INTO users(name, email, iin, password, city, address) values(?,?,?,?,?,?)");

        statement.setString(1, user.getName());
        statement.setString(2, user.getEmail());
        statement.setInt(3, user.getIin());
        statement.setString(4, user.getPassword());
        statement.setString(5, user.getCity());
        statement.setString(6,user.getAddress());

        res = statement.executeUpdate();

        statement.close();
        connection.close();

        return res;
    }



}
