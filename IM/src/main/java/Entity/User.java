package Entity;

import java.io.Serializable;

public class User implements Serializable {
    private int id;
    private String name;
    private String email;
    private int iin;
    private String password;
    private String city;
    private String address;

    public User(){}

    public User(int id, String name, String email, int iin, String password, String city, String address) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.iin = iin;
        this.password = password;
        this.city = city;
        this.address = address;
    }

    public User(String name, String email, int iin, String password, String city, String address) {
        this.name = name;
        this.email = email;
        this.iin = iin;
        this.password = password;
        this.city = city;
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public int getIin() {
        return iin;
    }

    public void setIin(int iin) {
        this.iin = iin;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
