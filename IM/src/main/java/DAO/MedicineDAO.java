package DAO;

import Entity.Medicine;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MedicineDAO {
    public static Medicine getMedicine(int id){
        Medicine med = new Medicine();

        try{
            Connection connection=DBConnection.getConnection();
            PreparedStatement ps=connection.prepareStatement("select * from medicine where id=?");
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                med.setId(rs.getInt(1));
                med.setImg(rs.getString(2));
                med.setName(rs.getString(3));
                med.setPrice(rs.getInt(4));
                med.setExists(rs.getBoolean(5));
                med.setDescription(rs.getString(6));
            }
            connection.close();
        }catch(Exception ex){ex.printStackTrace();}

        return med;
    }

    public static List<Medicine> getAll(){

        List<Medicine> list=new ArrayList<>();

        try{
            Connection con=DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from medicine");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Medicine med = new Medicine();
                med.setId(rs.getInt(1));
                med.setImg(rs.getString(2));
                med.setName(rs.getString(3));
                med.setPrice(rs.getInt(4));
                med.setExists(rs.getBoolean(5));
                med.setDescription(rs.getString(6));
                list.add(med);
            }
            con.close();
        }catch(Exception e){e.printStackTrace();}
        return list;
    }
}
