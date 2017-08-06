package dao;

import exception.PersistException;

/**
 * The interface that defines creating of DAO
 * 
 * @author Dzmitry Laktsevich
 */
public interface Transaction {
    <Type extends DAO<?>> Type createDAO(Class<Type> key) throws PersistException;

    void commit() throws PersistException;

    void rollback() throws PersistException;
}