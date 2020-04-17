package g.b.a;

import e.c.a.a.b.l.c;
import g.a.d.b;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelectableChannel;
import java.nio.channels.spi.AbstractSelector;
import java.nio.channels.spi.SelectorProvider;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class j extends AbstractSelector {
    public final int[] A = {-1, -1};
    public final Object B = new Object();
    public final Map<SelectionKey, Boolean> C = new ConcurrentHashMap();
    public final Set<SelectionKey> D = new HashSet();
    public i[] x = new i[0];
    public ByteBuffer y = null;
    public int z;

    public j(SelectorProvider selectorProvider) {
        super(selectorProvider);
        d.a.a(this.A);
        this.y = ByteBuffer.allocateDirect(8).order(ByteOrder.nativeOrder());
        b(0, this.A[0]);
        a(0, 1);
        this.z = 1;
        this.x = new i[1];
    }

    public final void a(int i2, int i3) {
        this.y.putShort((i2 * 8) + 4, (short) i3);
    }

    public final void b(i iVar) {
        int i2 = iVar.f1342e;
        synchronized (this.B) {
            if (i2 < this.z - 1) {
                i iVar2 = this.x[this.z - 1];
                this.x[i2] = iVar2;
                b(i2, this.y.getInt((iVar2.f1342e * 8) + 0));
                a(i2, this.y.getShort((iVar2.f1342e * 8) + 4));
                iVar2.f1342e = i2;
            } else {
                b(i2, -1);
                a(i2, 0);
            }
            this.x[this.z - 1] = null;
            this.z--;
            synchronized (this.D) {
                this.D.remove(iVar);
            }
            this.C.remove(iVar);
        }
        deregister(iVar);
    }

    public void implCloseSelector() {
        int[] iArr = this.A;
        if (iArr[0] != -1) {
            c.a(iArr[0]);
        }
        int[] iArr2 = this.A;
        if (iArr2[1] != -1) {
            c.a(iArr2[1]);
        }
        Iterator<SelectionKey> it = this.C.keySet().iterator();
        while (it.hasNext()) {
            b((i) it.next());
        }
    }

    public Set<SelectionKey> keys() {
        return new HashSet(Arrays.asList(this.x).subList(0, this.z));
    }

    public SelectionKey register(AbstractSelectableChannel abstractSelectableChannel, int i2, Object obj) {
        i iVar = new i(this, (g) abstractSelectableChannel);
        a(iVar);
        iVar.attach(obj);
        iVar.interestOps(i2);
        return iVar;
    }

    public int select(long j2) {
        if (j2 <= 0) {
            j2 = -1;
        }
        return a(j2);
    }

    public int selectNow() {
        return a(0);
    }

    public Set<SelectionKey> selectedKeys() {
        return this.D;
    }

    public Selector wakeup() {
        try {
            c.b(this.A[1], ByteBuffer.allocate(1));
            return this;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final void a(i iVar) {
        synchronized (this.B) {
            int i2 = this.z + 1;
            this.z = i2;
            if (this.x.length < i2) {
                int i3 = (i2 / 2) + i2;
                i[] iVarArr = new i[i3];
                System.arraycopy(this.x, 0, iVarArr, 0, i2 - 1);
                this.x = iVarArr;
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i3 * 8);
                if (this.y != null) {
                    allocateDirect.put(this.y);
                }
                allocateDirect.position(0);
                this.y = allocateDirect.order(ByteOrder.nativeOrder());
            }
            int i4 = this.z - 1;
            iVar.f1342e = i4;
            this.x[this.z - 1] = iVar;
            b(i4, iVar.b.getFD());
            a(iVar.f1342e, 0);
            this.C.put(iVar, true);
        }
    }

    public int select() {
        return a(-1);
    }

    /* JADX INFO: finally extract failed */
    public final int a(long j2) {
        int a;
        Set<SelectionKey> cancelledKeys = cancelledKeys();
        synchronized (cancelledKeys) {
            Iterator<SelectionKey> it = cancelledKeys.iterator();
            while (it.hasNext()) {
                b((i) it.next());
            }
            cancelledKeys.clear();
        }
        try {
            begin();
            do {
                a = d.a.a(this.y, this.z, (int) j2);
                if (a >= 0 || !b.EINTR.equals(b.valueOf((long) d.b.a()))) {
                    end();
                }
                a = d.a.a(this.y, this.z, (int) j2);
                break;
            } while (!b.EINTR.equals(b.valueOf((long) d.b.a())));
            end();
            if (a < 1) {
                return a;
            }
            if ((this.y.getShort(6) & 1) != 0) {
                c.a(this.A[0], ByteBuffer.allocate(1));
            }
            int i2 = 0;
            for (SelectionKey next : this.C.keySet()) {
                i iVar = (i) next;
                short s = this.y.getShort((iVar.f1342e * 8) + 6);
                if (s != 0) {
                    this.y.putShort((iVar.f1342e * 8) + 6, (short) 0);
                    int interestOps = next.interestOps();
                    int i3 = (s & 1) != 0 ? (interestOps & 17) | 0 : 0;
                    if ((s & 4) != 0) {
                        i3 |= interestOps & 12;
                    }
                    if ((s & 24) == 0) {
                        interestOps = i3;
                    }
                    ((i) next).f1341d = interestOps;
                    i2++;
                    if (!this.D.contains(next)) {
                        this.D.add(next);
                    }
                }
            }
            return i2;
        } catch (Throwable th) {
            end();
            throw th;
        }
    }

    public final void b(int i2, int i3) {
        this.y.putInt((i2 * 8) + 0, i3);
    }
}
