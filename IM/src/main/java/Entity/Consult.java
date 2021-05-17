package Entity;

import java.util.Date;

public class Consult {
    private int id;
    private String name;
    private String text;
    private String phone;
    private String email;
    private int userid;
    private String department;

    public Consult( String name, String text, String phone, String email, int userid, String department) {
        this.name = name;
        this.text = text;
        this.phone = phone;
        this.email = email;
        this.userid = userid;
        this.department = department;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

}
