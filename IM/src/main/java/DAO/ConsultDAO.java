package DAO;

import Entity.Consult;
import Entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConsultDAO {
    public static int newCansult(Consult con) throws SQLException, ClassNotFoundException {
        int res = 0;
        Connection connection = DBConnection.getConnection();

        PreparedStatement statement = connection.prepareStatement("INSERT INTO consult(name, txt, userid, dep, phone, email) values(?,?,?,?,?,?)");

        statement.setString(1, con.getName());
        statement.setString(2, con.getText());
        statement.setInt(3, con.getUserid());
        statement.setString(4, con.getDepartment());
        statement.setString(5, con.getPhone());
        statement.setString(6,con.getEmail());

        res = statement.executeUpdate();

        statement.close();
        connection.close();

        return res;
    }

}
