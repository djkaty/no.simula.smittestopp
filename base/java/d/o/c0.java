package d.o;

public class c0 implements a0 {
    public <T extends y> T a(Class<T> cls) {
        try {
            return (y) cls.newInstance();
        } catch (InstantiationException e2) {
            throw new RuntimeException("Cannot create an instance of " + cls, e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Cannot create an instance of " + cls, e3);
        }
    }
}
