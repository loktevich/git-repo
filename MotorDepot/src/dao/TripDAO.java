package dao;

import java.util.List;

import domain.Trip;
import exception.PersistException;

/**
 * The interface that defines DAO methods to operate with Trip
 * 
 * @author Dzmitry Laktsevich
 */
public interface TripDAO extends DAO<Trip> {
    public List<Trip> readByDeparturePoint(Integer pointId) throws PersistException;

    public List<Trip> readByArrivalPoint(Integer pointId) throws PersistException;
}