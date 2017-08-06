package dao;

import domain.DestinationPoint;
import exception.PersistException;

/**
 * The interface that defines DAO methods to operate with DestinationPoint
 * 
 * @author Dzmitry Laktsevich
 */
public interface DestinationPointDAO extends DAO<DestinationPoint> {
    DestinationPoint readByName(String name) throws PersistException;
}