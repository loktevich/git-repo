package dao;

import domain.User;
import exception.PersistException;

/**
 * The interface that defines DAO methods to operate with User
 * 
 * @author Dzmitry Laktsevich
 */
public interface UserDAO extends DAO<User> {
    public User readByLoginAndPassword(String login, String password) throws PersistException;

    public User readByLogin(String login) throws PersistException;
}