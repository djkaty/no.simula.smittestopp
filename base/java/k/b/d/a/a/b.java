package k.b.d.a.a;

import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;
import k.b.j.f;

public class b extends BasicPermission {
    public final String x;
    public final int y;

    public b(String str, String str2) {
        super(str, str2);
        this.x = str2;
        StringTokenizer stringTokenizer = new StringTokenizer(f.b(str2), " ,");
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.equals("threadlocalecimplicitlyca")) {
                i2 |= 1;
            } else if (nextToken.equals("ecimplicitlyca")) {
                i2 |= 2;
            } else if (nextToken.equals("threadlocaldhdefaultparams")) {
                i2 |= 4;
            } else if (nextToken.equals("dhdefaultparams")) {
                i2 |= 8;
            } else if (nextToken.equals("acceptableeccurves")) {
                i2 |= 16;
            } else if (nextToken.equals("additionalecparameters")) {
                i2 |= 32;
            } else if (nextToken.equals("all")) {
                i2 |= 63;
            }
        }
        if (i2 != 0) {
            this.y = i2;
            return;
        }
        throw new IllegalArgumentException("unknown permissions passed to mask");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.y == bVar.y && getName().equals(bVar.getName());
    }

    public String getActions() {
        return this.x;
    }

    public int hashCode() {
        return getName().hashCode() + this.y;
    }

    public boolean implies(Permission permission) {
        if (!(permission instanceof b) || !getName().equals(permission.getName())) {
            return false;
        }
        int i2 = this.y;
        int i3 = ((b) permission).y;
        return (i2 & i3) == i3;
    }
}
