package d.u;

import d.w.a.d;
import d.w.a.e;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class i implements e, d {
    public static final TreeMap<Integer, i> F = new TreeMap<>();
    public final String[] A;
    public final byte[][] B;
    public final int[] C;
    public final int D;
    public int E;
    public volatile String x;
    public final long[] y;
    public final double[] z;

    public i(int i2) {
        this.D = i2;
        int i3 = i2 + 1;
        this.C = new int[i3];
        this.y = new long[i3];
        this.z = new double[i3];
        this.A = new String[i3];
        this.B = new byte[i3][];
    }

    public static i a(String str, int i2) {
        synchronized (F) {
            Map.Entry<Integer, i> ceilingEntry = F.ceilingEntry(Integer.valueOf(i2));
            if (ceilingEntry != null) {
                F.remove(ceilingEntry.getKey());
                i value = ceilingEntry.getValue();
                value.x = str;
                value.E = i2;
                return value;
            }
            i iVar = new i(i2);
            iVar.x = str;
            iVar.E = i2;
            return iVar;
        }
    }

    public void b() {
        synchronized (F) {
            F.put(Integer.valueOf(this.D), this);
            if (F.size() > 15) {
                int size = F.size() - 10;
                Iterator<Integer> it = F.descendingKeySet().iterator();
                while (true) {
                    int i2 = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i2;
                }
            }
        }
    }

    public void bindBlob(int i2, byte[] bArr) {
        this.C[i2] = 5;
        this.B[i2] = bArr;
    }

    public void bindDouble(int i2, double d2) {
        this.C[i2] = 3;
        this.z[i2] = d2;
    }

    public void bindLong(int i2, long j2) {
        this.C[i2] = 2;
        this.y[i2] = j2;
    }

    public void bindNull(int i2) {
        this.C[i2] = 1;
    }

    public void bindString(int i2, String str) {
        this.C[i2] = 4;
        this.A[i2] = str;
    }

    public void close() {
    }

    public String a() {
        return this.x;
    }

    public void a(d dVar) {
        for (int i2 = 1; i2 <= this.E; i2++) {
            int i3 = this.C[i2];
            if (i3 == 1) {
                dVar.bindNull(i2);
            } else if (i3 == 2) {
                dVar.bindLong(i2, this.y[i2]);
            } else if (i3 == 3) {
                dVar.bindDouble(i2, this.z[i2]);
            } else if (i3 == 4) {
                dVar.bindString(i2, this.A[i2]);
            } else if (i3 == 5) {
                dVar.bindBlob(i2, this.B[i2]);
            }
        }
    }
}
