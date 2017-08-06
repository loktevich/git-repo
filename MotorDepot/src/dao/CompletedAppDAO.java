package dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import domain.CompletedApp;
import exception.PersistException;

/**
 * The interface that defines DAO methods to operate with CompletedApp
 * 
 * @author Dzmitry Laktsevich
 */
public interface CompletedAppDAO extends DAO<CompletedApp> {
    public CompletedApp readByApp(Integer applicationId) throws PersistException;

    public List<CompletedApp> readByDriver(Integer driverId) throws PersistException;

    public List<CompletedApp> readUncompleted() throws PersistException;

    public Map<CompletedApp, java.util.Date> readOverdue() throws PersistException;

    public List<CompletedApp> readUncomplitedTrips(Integer driverId) throws PersistException;

    public List<CompletedApp> readComplitedTrips(Integer driverId) throws PersistException;

    public Map<Date, Date> readSchedule(Integer driverId) throws PersistException;
}