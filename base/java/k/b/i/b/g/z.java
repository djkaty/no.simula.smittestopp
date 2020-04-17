package k.b.i.b.g;

import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.HashSet;
import java.util.Set;

public class z extends ObjectInputStream {
    public static final Set z;
    public final Class x;
    public boolean y = false;

    static {
        HashSet hashSet = new HashSet();
        z = hashSet;
        hashSet.add("java.util.TreeMap");
        z.add("java.lang.Integer");
        z.add("java.lang.Number");
        z.add("org.bouncycastle.pqc.crypto.xmss.BDS");
        z.add("java.util.ArrayList");
        z.add("org.bouncycastle.pqc.crypto.xmss.XMSSNode");
        z.add("[B");
        z.add("java.util.LinkedList");
        z.add("java.util.Stack");
        z.add("java.util.Vector");
        z.add("[Ljava.lang.Object;");
        z.add("org.bouncycastle.pqc.crypto.xmss.BDSTreeHash");
    }

    public z(Class cls, InputStream inputStream) {
        super(inputStream);
        this.x = cls;
    }

    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) {
        if (!this.y) {
            if (objectStreamClass.getName().equals(this.x.getName())) {
                this.y = true;
            } else {
                throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
            }
        } else if (!z.contains(objectStreamClass.getName())) {
            throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
        }
        return super.resolveClass(objectStreamClass);
    }
}
