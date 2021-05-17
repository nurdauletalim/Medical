package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    static Connection getConnection() throws SQLException, ClassNotFoundException {
        final String jdbcURL = "jdbc:postgresql://localhost:5432/IM";
        final String dbUser = "postgres";
        final String dbPassword = "123";

        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        return connection;
    }
}
