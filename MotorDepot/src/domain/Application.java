package domain;

import java.util.Date;

/**
 * The class describes application as an object
 * 
 * @author Dzmitry Laktsevich
 */
public class Application extends Entity {
    private Date appDate;
    private Trip trip;
    private LorryType type;
    private Integer cargoWeight;
    private Date deadline;
    private Dispatcher dispatcher;

    public Date getAppDate() {
        return appDate;
    }

    public void setAppDate(Date appDate) {
        this.appDate = appDate;
    }

    public Trip getTrip() {
        return trip;
    }

    public void setTrip(Trip trip) {
        this.trip = trip;
    }

    public LorryType getType() {
        return type;
    }

    public void setType(LorryType type) {
        this.type = type;
    }

    public Integer getCargoWeight() {
        return cargoWeight;
    }

    public void setCargoWeight(Integer cargoWeight) {
        this.cargoWeight = cargoWeight;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public Dispatcher getDispatcher() {
        return dispatcher;
    }

    public void setDispatcher(Dispatcher dispatcher) {
        this.dispatcher = dispatcher;
    }
}