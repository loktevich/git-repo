package dao.mysql;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import dao.UserDAO;
import domain.Role;
import domain.User;
import exception.PersistException;

/**
 * The class that implements corresponding interface to interact with MySql data
 * base
 * 
 * @author Dzmitry Laktsevich
 */
public class MySqlUserDAO extends MySqlDAO implements UserDAO {
    private static Logger logger = Logger.getLogger(MySqlUserDAO.class);

    @Override
    public Integer create(User user) throws PersistException {
        String script = "INSERT INTO user "
                + "(login, password, role_id) "
                + "VALUES (?, ?, ?)";
        ResultSet resSet = null;
        PreparedStatement prStatement = null;
        try {
            prStatement = connection.prepareStatement(script,
                    Statement.RETURN_GENERATED_KEYS);
            prStatement.setString(1, user.getLogin());
            prStatement.setString(2, user.getPassword());
            prStatement.setInt(3, user.getRole().getId());
            prStatement.executeUpdate();
            resSet = prStatement.getGeneratedKeys();
            if (resSet.next()) {
                return resSet.getInt(1);
            } else {
                logger.error(
                        "There is no autoincremented index after trying to add record into table motor_depot.user");
                throw new PersistException();
            }
        } catch (SQLException e) {
            throw new PersistException("Can't create user", e);
        } finally {
            try {
                resSet.close();
            } catch (SQLException | NullPointerException e) {
            }
            try {
                prStatement.close();
            } catch (SQLException | NullPointerException e) {
            }
        }
    }

    @Override
    public User read(Integer id) throws PersistException {
        String script = "SELECT login, password, role_id "
                + "FROM user WHERE id_user = ?";
        ResultSet resSet = null;
        PreparedStatement prStatement = null;
        try {
            prStatement = connection.prepareStatement(script);
            prStatement.setInt(1, id);
            resSet = prStatement.executeQuery();
            User user = null;
            if (resSet.next()) {
                user = new User();
                user.setId(id);
                user.setLogin(resSet.getString("login"));
                user.setPassword(resSet.getString("password"));
                user.setRole(Role.getById(resSet.getInt("role_id")));
            }
            return user;
        } catch (SQLException e) {
            throw new PersistException("Can't read user", e);
        } finally {
            try {
                resSet.close();
            } catch (SQLException | NullPointerException e) {
            }
            try {
                prStatement.close();
            } catch (SQLException | NullPointerException e) {
            }
        }
    }

    @Override
    public List<User> readAll() throws PersistException {
        String script = "SELECT id_user, login, password, role_id "
                + "FROM user";
        ResultSet resSet = null;
        PreparedStatement prStatement = null;
        try {
            prStatement = connection.prepareStatement(script);
            resSet = prStatement.executeQuery();
            List<User> users = new ArrayList<>();
            User user = null;
            while (resSet.next()) {
                user = new User();
                user.setId(resSet.getInt("id_user"));
                user.setLogin(resSet.getString("login"));
                user.setPassword(resSet.getString("password"));
                user.setRole(Role.getById(resSet.getInt("role_id")));
                users.add(user);
            }
            return users;
        } catch (SQLException e) {
            throw new PersistException("Can't read users", e);
        } finally {
            try {
                resSet.close();
            } catch (SQLException | NullPointerException e) {
            }
            try {
                prStatement.close();
            } catch (SQLException | NullPointerException e) {
            }
        }
    }

    @Override
    public User readByLogin(String login) throws PersistException {
        String script = "SELECT id_user, role_id, password "
                + "FROM user WHERE login = ?";
        ResultSet resSet = null;
        PreparedStatement prStatement = null;
        try {
            prStatement = connection.prepareStatement(script);
            prStatement.setString(1, login);
            resSet = prStatement.executeQuery();
            User user = null;
            if (resSet.next()) {
                user = new User();
                user.setId(resSet.getInt("id_user"));
                user.setLogin(login);
                user.setPassword(resSet.getString("password"));
                user.setRole(Role.getById(resSet.getInt("role_id")));
            }
            return user;
        } catch (SQLException e) {
            throw new PersistException("Can't read user", e);
        } finally {
            try {
                resSet.close();
            } catch (SQLException | NullPointerException e) {
            }
            try {
                prStatement.close();
            } catch (SQLException | NullPointerException e) {
            }
        }
    }

    @Override
    public User readByLoginAndPassword(String login, String password) throws PersistException {
        String script = "SELECT id_user, role_id "
                + "FROM user WHERE (login = ? AND password = ?)";
        ResultSet resSet = null;
        PreparedStatement prStatement = null;
        try {
            prStatement = connection.prepareStatement(script);
            prStatement.setString(1, login);
            prStatement.setString(2, password);
            resSet = prStatement.executeQuery();
            User user = null;
            if (resSet.next()) {
                user = new User();
                user.setId(resSet.getInt("id_user"));
                user.setLogin(login);
                user.setPassword(password);
                user.setRole(Role.getById(resSet.getInt("role_id")));
            }
            return user;
        } catch (SQLException e) {
            throw new PersistException("Can't read user", e);
        } finally {
            try {
                resSet.close();
            } catch (SQLException | NullPointerException e) {
            }
            try {
                prStatement.close();
            } catch (SQLException | NullPointerException e) {
            }
        }
    }

    @Override
    public void update(User user) throws PersistException {
        String script = "UPDATE user SET login = ?, password = ?, role_id = ? "
                + "WHERE id_user = ?";
        PreparedStatement prStatement = null;
        try {
            prStatement = connection.prepareStatement(script,
                    Statement.RETURN_GENERATED_KEYS);
            prStatement.setString(1, user.getLogin());
            prStatement.setString(2, user.getPassword());
            prStatement.setInt(3, user.getRole().getId());
            prStatement.setInt(4, user.getId());
            prStatement.executeUpdate();
        } catch (SQLException e) {
            throw new PersistException("Can't update user", e);
        } finally {
            try {
                prStatement.close();
            } catch (SQLException | NullPointerException e) {
            }
        }
    }

    @Override
    public void delete(Integer id) throws PersistException {
        String table = "user";
        delete(table, id);
    }
}