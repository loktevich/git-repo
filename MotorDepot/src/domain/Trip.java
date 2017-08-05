package domain;

/**
 * The class describes trip as an object
 * 
 * @author Dzmitry Laktsevich
 */
public class Trip extends Entity {
    private DestinationPoint departurePoint;
    private DestinationPoint arrivalPoint;
    private Integer distance;
    private String roadConditions;

    public DestinationPoint getDeparturePoint() {
        return departurePoint;
    }

    public void setDeparturePoint(DestinationPoint departurePoint) {
        this.departurePoint = departurePoint;
    }

    public DestinationPoint getArrivalPoint() {
        return arrivalPoint;
    }

    public void setArrivalPoint(DestinationPoint arrivalPoint) {
        this.arrivalPoint = arrivalPoint;
    }

    public Integer getDistance() {
        return distance;
    }

    public void setDistance(Integer distance) {
        this.distance = distance;
    }

    public String getRoadConditions() {
        return roadConditions;
    }

    public void setRoadConditions(String roadConditions) {
        this.roadConditions = roadConditions;
    }

    @Override
    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(departurePoint).append(" - ").append(arrivalPoint);
        return buffer.toString();
    }

}
