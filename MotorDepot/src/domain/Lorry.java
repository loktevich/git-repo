package domain;

/**
 * The class describes lorry as an object
 * 
 * @author Dzmitry Laktsevich
 */
public class Lorry extends Entity {
    private String model;
    private Integer carryingCapacity;
    private LorryType type;
    private Byte lorryState;

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public Integer getCarryingCapacity() {
        return carryingCapacity;
    }

    public void setCarryingCapacity(Integer carryingCapacity) {
        this.carryingCapacity = carryingCapacity;
    }

    public LorryType getType() {
        return type;
    }

    public void setType(LorryType type) {
        this.type = type;
    }

    public Byte getLorryState() {
        return lorryState;
    }

    public void setLorryState(Byte lorryState) {
        this.lorryState = lorryState;
    }
    
}