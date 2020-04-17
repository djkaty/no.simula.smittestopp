package k.f.e;

import java.io.Serializable;
import k.f.b;

public abstract class a implements b, Serializable {
    public String toString() {
        return getClass().getName() + "(" + "NOP" + ")";
    }
}
