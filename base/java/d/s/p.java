package d.s;

import android.os.Bundle;
import d.s.i;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

public abstract class p<D extends i> {

    public interface a {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface b {
        String value();
    }

    public abstract D a();

    public abstract i a(D d2, Bundle bundle, n nVar, a aVar);

    public void a(Bundle bundle) {
    }

    public Bundle b() {
        return null;
    }

    public abstract boolean c();
}
