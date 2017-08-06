package exception;

/**
 * The class describes object to define exceptions during operations with DAO
 * 
 * @author Dzmitry Laktsevich
 */
public class PersistException extends Exception {
    private static final long serialVersionUID = 1L;

    public PersistException() {
    }

    public PersistException(String message, Throwable cause) {
        super(message, cause);
    }

    public PersistException(String message) {
        super(message);
    }

    public PersistException(Throwable cause) {
        super(cause);
    }
}
