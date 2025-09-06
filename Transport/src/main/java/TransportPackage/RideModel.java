//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package TransportPackage;

public class RideModel {
    private int id;
    private String name;
    private String contact;
    private String email;
    private String pickup_location;
    private String drop_location;

    public RideModel(int id, String name, String contact, String email, String pickup_location, String drop_location) {
        this.id = id;
        this.name = name;
        this.contact = contact;
        this.email = email;
        this.pickup_location = pickup_location;
        this.drop_location = drop_location;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return this.contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPickup_location() {
        return this.pickup_location;
    }

    public void setPickup_location(String pickup_location) {
        this.pickup_location = pickup_location;
    }

    public String getDrop_location() {
        return this.drop_location;
    }

    public void setDrop_location(String drop_location) {
        this.drop_location = drop_location;
    }
}
