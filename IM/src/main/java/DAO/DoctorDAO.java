package DAO;

import Entity.Doctors;
import Entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAO {
    public static Doctors getById(int id) throws SQLException, ClassNotFoundException {
        Connection connection = DBConnection.getConnection();
        Doctors doc = new Doctors();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM doctors WHERE id = ?");
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();
        resultSet.next();

        doc.setId(resultSet.getInt("id"));
        doc.setName(resultSet.getString("name"));
        doc.setDep(resultSet.getString("dep"));
        doc.setMore(resultSet.getString("more"));

        resultSet.close();
        statement.close();
        connection.close();

        return doc;
    }

    public static List<Doctors> findAll() throws SQLException,ClassNotFoundException{
        List<Doctors> doctors = new ArrayList<>();

        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM doctors");
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String dep = resultSet.getString("dep");
            String more = resultSet.getString("more");
            Doctors doc = new Doctors(id,name,dep, more);
            doctors.add(doc);
        }
        return doctors;
    }

    public static List<Doctors> findByName(String name) throws SQLException,ClassNotFoundException{
        List<Doctors> doctors = new ArrayList<>();

        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM doctors where name = ?");
        statement.setString(1,name);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String name1 = resultSet.getString("name");
            String dep = resultSet.getString("dep");
            String more = resultSet.getString("more");
            Doctors doc = new Doctors(id,name1,dep, more);
            doctors.add(doc);
        }
        return doctors;
    }

    public static List<Doctors> findByDep(String dep) throws SQLException,ClassNotFoundException{
        List<Doctors> doctors = new ArrayList<>();

        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM doctors where dep = ?");
        statement.setString(1,dep);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String dep1 = resultSet.getString("dep");
            String more = resultSet.getString("more");
            Doctors doc = new Doctors(id,name,dep1, more);
            doctors.add(doc);
        }
        return doctors;
    }
}
