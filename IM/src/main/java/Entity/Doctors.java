package Entity;

public class Doctors {
    private int id;
    private String name;
    private String dep;
    private String more;

    public Doctors(){}

    public Doctors(int id, String name, String dep, String more) {
        this.id = id;
        this.name = name;
        this.dep = dep;
        this.more = more;
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

    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    public String getMore() {
        return more;
    }

    public void setMore(String more) {
        this.more = more;
    }
}
