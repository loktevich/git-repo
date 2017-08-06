package dao;

import java.util.List;

import domain.Application;
import exception.PersistException;

/**
 * The interface that defines DAO methods to operate with Application
 * 
 * @author Dzmitry Laktsevich
 */
public interface ApplicationDAO extends DAO<Application> {

    public List<Application> readByTrip(Integer tripId) throws PersistException;

    public List<Application> readByType(Integer typeId) throws PersistException;

    public List<Application> readByDispatcher(Integer dispatcherId) throws PersistException;

    public List<Application> readUndistributed() throws PersistException;
}