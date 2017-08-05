package domain;

/**
 * The enumeration for user roles
 * 
 * @author Dzmitry Laktsevich
 */
public enum Role {
    ADMINISTRATOR("admin"), DISPATCHER("dispatcher"), DRIVER("driver");

    private String name;

    private Role(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public Integer getId() {
        return ordinal() + 1;
    }

    public static Role getById(Integer id) {
        return Role.values()[id - 1];
    }
}