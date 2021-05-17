package Entity;

public class Medicine {
    private int id;
    private String img;
    private String name;
    private String description;
    private int price;
    private boolean exists;

    public Medicine(){}

    public Medicine(int id, String name, int price,String img, boolean exists,String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.exists = exists;
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public boolean isExists() {
        return exists;
    }

    public void setExists(boolean exists) {
        this.exists = exists;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
