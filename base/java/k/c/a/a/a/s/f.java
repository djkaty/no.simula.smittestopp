package k.c.a.a.a.s;

import com.microsoft.appcenter.ingestion.models.CustomPropertiesLog;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import k.c.a.a.a.j;
import k.c.a.a.a.k;
import k.c.a.a.a.q;
import k.c.a.a.a.s.s.o;
import k.c.a.a.a.s.s.u;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class f {
    public b a;
    public final Hashtable b;

    /* renamed from: c  reason: collision with root package name */
    public String f2219c;

    /* renamed from: d  reason: collision with root package name */
    public k f2220d = null;

    public f(String str) {
        b a2 = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "k.c.a.a.a.s.f");
        this.a = a2;
        a2.a(str);
        this.b = new Hashtable();
        this.f2219c = str;
        this.a.b("k.c.a.a.a.s.f", "<Init>", "308");
    }

    public q a(u uVar) {
        return (q) this.b.get(uVar.i());
    }

    public q b(u uVar) {
        if (uVar != null) {
            return a(uVar.i());
        }
        return null;
    }

    public j[] c() {
        j[] jVarArr;
        synchronized (this.b) {
            this.a.b("k.c.a.a.a.s.f", "getOutstandingDelTokens", "311");
            Vector vector = new Vector();
            Enumeration elements = this.b.elements();
            while (elements.hasMoreElements()) {
                q qVar = (q) elements.nextElement();
                if (qVar != null && (qVar instanceof j) && !qVar.a.o) {
                    vector.addElement(qVar);
                }
            }
            jVarArr = (j[]) vector.toArray(new j[vector.size()]);
        }
        return jVarArr;
    }

    public Vector d() {
        Vector vector;
        synchronized (this.b) {
            this.a.b("k.c.a.a.a.s.f", "getOutstandingTokens", "312");
            vector = new Vector();
            Enumeration elements = this.b.elements();
            while (elements.hasMoreElements()) {
                q qVar = (q) elements.nextElement();
                if (qVar != null) {
                    vector.addElement(qVar);
                }
            }
        }
        return vector;
    }

    public void e() {
        synchronized (this.b) {
            this.a.b("k.c.a.a.a.s.f", "open", "310");
            this.f2220d = null;
        }
    }

    public String toString() {
        String stringBuffer;
        String property = System.getProperty("line.separator", "\n");
        StringBuffer stringBuffer2 = new StringBuffer();
        synchronized (this.b) {
            Enumeration elements = this.b.elements();
            while (elements.hasMoreElements()) {
                stringBuffer2.append("{" + ((q) elements.nextElement()).a + "}" + property);
            }
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }

    public int b() {
        int size;
        synchronized (this.b) {
            size = this.b.size();
        }
        return size;
    }

    public q a(String str) {
        this.a.b("k.c.a.a.a.s.f", "removeToken", "306", new Object[]{str});
        if (str != null) {
            return (q) this.b.remove(str);
        }
        return null;
    }

    public j a(o oVar) {
        j jVar;
        synchronized (this.b) {
            String num = Integer.toString(oVar.b);
            if (this.b.containsKey(num)) {
                jVar = (j) this.b.get(num);
                this.a.b("k.c.a.a.a.s.f", "restoreToken", "302", new Object[]{num, oVar, jVar});
            } else {
                jVar = new j(this.f2219c);
                jVar.a.f2247j = num;
                this.b.put(num, jVar);
                this.a.b("k.c.a.a.a.s.f", "restoreToken", "303", new Object[]{num, oVar, jVar});
            }
        }
        return jVar;
    }

    public void a(q qVar, u uVar) {
        synchronized (this.b) {
            if (this.f2220d == null) {
                String i2 = uVar.i();
                this.a.b("k.c.a.a.a.s.f", "saveToken", "300", new Object[]{i2, uVar});
                a(qVar, i2);
            } else {
                throw this.f2220d;
            }
        }
    }

    public void a(q qVar, String str) {
        synchronized (this.b) {
            this.a.b("k.c.a.a.a.s.f", "saveToken", "307", new Object[]{str, qVar.toString()});
            qVar.a.f2247j = str;
            this.b.put(str, qVar);
        }
    }

    public void a(k kVar) {
        synchronized (this.b) {
            this.a.b("k.c.a.a.a.s.f", "quiesce", "309", new Object[]{kVar});
            this.f2220d = kVar;
        }
    }

    public void a() {
        this.a.b("k.c.a.a.a.s.f", CustomPropertiesLog.PROPERTY_TYPE_CLEAR, "305", new Object[]{Integer.valueOf(this.b.size())});
        synchronized (this.b) {
            this.b.clear();
        }
    }
}
