package domain;

import java.util.Date;

/**
 * The class describes distributed/completed application as an object
 * 
 * @author Dzmitry Laktsevich
 */
public class CompletedApp extends Entity {
    private Application application;
    private Driver driver;
    private Lorry lorry;
    private Date departureTime;
    private Date planArrivalTime;
    private Date actualArrivalTime;
    public Application getApplication() {
        return application;
    }
    public void setApplication(Application application) {
        this.application = application;
    }
    public Driver getDriver() {
        return driver;
    }
    public void setDriver(Driver driver) {
        this.driver = driver;
    }
    public Lorry getLorry() {
        return lorry;
    }
    public void setLorry(Lorry lorry) {
        this.lorry = lorry;
    }
    public Date getDepartureTime() {
        return departureTime;
    }
    public void setDepartureTime(Date departureTime) {
        this.departureTime = departureTime;
    }
    public Date getPlanArrivalTime() {
        return planArrivalTime;
    }
    public void setPlanArrivalTime(Date planArrivalTime) {
        this.planArrivalTime = planArrivalTime;
    }
    public Date getActualArrivalTime() {
        return actualArrivalTime;
    }
    public void setActualArrivalTime(Date actualArrivalTime) {
        this.actualArrivalTime = actualArrivalTime;
    }
    
}
