package dao;

import java.util.List;
import domain.Driver;
import exception.PersistException;

/**
 * The interface that defines DAO methods to operate with Driver
 * 
 * @author Dzmitry Laktsevich
 */
public interface DriverDAO extends DAO<Driver> {
    public List<Driver> readByAvailability(Byte availability) throws PersistException;

    public Driver readByLorry(Integer lorryId) throws PersistException;

    public Driver readByUserId(Integer userId) throws PersistException;
}