package domain;

/**
 * The base class for all domain classes
 * 
 * @author Dzmitry Laktsevich
 */
public abstract class Entity {
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj != null) {
            if (obj != this) {
                if (obj.getClass() == getClass() && id != null) {
                    return id.equals(((Entity) obj).id);
                }
                return false;
            }
            return true;
        }
        return false;
    }
}