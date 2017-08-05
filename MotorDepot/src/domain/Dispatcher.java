package domain;

/**
 * The class describes dispatcher as an object
 * 
 * @author Dzmitry Laktsevich
 */
public class Dispatcher extends Entity {
    private User user;
    private String fullName;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}