package dao.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import exception.PersistException;

/**
 * The base class to interact with MySql data base
 * 
 * @author Dzmitry Laktsevich
 */
public abstract class MySqlDAO {
    protected Connection connection;

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public void delete(String table, Integer id) throws PersistException {
        String script = "DELETE FROM " + table + " WHERE id = ?";
        PreparedStatement prStatement = null;
        try {
            prStatement = connection.prepareStatement(script);
            prStatement.setInt(1, id);
            prStatement.executeUpdate();
        } catch (SQLException e) {
            throw new PersistException("Can't delete " + table, e);
        } finally {
            try {
                prStatement.close();
            } catch (SQLException | NullPointerException e) {
            }
        }
    }
}