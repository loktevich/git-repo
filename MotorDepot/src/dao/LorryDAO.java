package dao;

import java.util.List;

import domain.Lorry;
import exception.PersistException;

/**
 * The interface that defines DAO methods to operate with Lorry
 * 
 * @author Dzmitry Laktsevich
 */
public interface LorryDAO extends DAO<Lorry> {
    public List<Lorry> readByType(Integer typeId) throws PersistException;

    public List<Lorry> readByCapacity(Integer capacity) throws PersistException;

    public List<Lorry> readByState(Byte condition) throws PersistException;

    public List<Lorry> readUnassigned() throws PersistException;
}