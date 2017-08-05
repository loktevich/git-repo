package domain;

/**
 * The class describes type of lorry as an object
 * 
 * @author Dzmitry Laktsevich
 */
public class LorryType extends Entity {
    private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return type;
    }
}