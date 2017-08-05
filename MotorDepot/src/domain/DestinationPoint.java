package domain;

/**
 * The class describes destination point as an object
 * 
 * @author Dzmitry Laktsevich
 */
public class DestinationPoint extends Entity {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}