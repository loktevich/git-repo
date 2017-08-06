package dao;

import domain.Dispatcher;
import exception.PersistException;

/**
 * The interface that defines DAO methods to operate with Dispatcher
 * 
 * @author Dzmitry Laktsevich
 */
public interface DispatcherDAO extends DAO<Dispatcher> {
    public Dispatcher readByUserId(Integer id) throws PersistException;
}