package dao;

import java.util.List;

import domain.Entity;
import exception.PersistException;

/**
 * The interface defines CRUD methods for data access object
 * 
 * @author Dzmitry Laktsevich
 * 
 * @param <T>
 *            extends domain.Entity
 * @see Entity
 */
public interface DAO<T extends Entity> {
    public Integer create(T entity) throws PersistException;

    public T read(Integer id) throws PersistException;

    public List<T> readAll() throws PersistException;

    public void update(T entity) throws PersistException;

    public void delete(Integer id) throws PersistException;
}