package domain;

/**
 * The class describes driver as an object
 * 
 * @author Dzmitry Laktsevich
 */
public class Driver extends Entity {
    private User user;
    private String fullName;
    private Lorry lorry;
    private Byte availability;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Lorry getLorry() {
        return lorry;
    }

    public void setLorry(Lorry lorry) {
        this.lorry = lorry;
    }

    public Byte getAvailability() {
        return availability;
    }

    public void setAvailability(Byte availability) {
        this.availability = availability;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}