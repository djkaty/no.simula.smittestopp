package k.f.d;

import java.util.Queue;
import k.f.b;
import k.f.e.d;

public class a implements b {
    public String x;
    public d y;
    public Queue<d> z;

    public a(d dVar, Queue<d> queue) {
        this.y = dVar;
        this.x = dVar.x;
        this.z = queue;
    }

    public final void a(b bVar, String str, Object[] objArr, Throwable th) {
        d dVar = new d();
        System.currentTimeMillis();
        dVar.a = this.y;
        dVar.b = objArr;
        Thread.currentThread().getName();
        this.z.add(dVar);
    }

    public boolean a() {
        return true;
    }

    public void b(String str, Object... objArr) {
        a(b.TRACE, str, objArr, (Throwable) null);
    }

    public boolean b() {
        return true;
    }

    public void c(String str, Throwable th) {
        a(b.TRACE, str, (Object[]) null, th);
    }

    public void d(String str, Object obj) {
        a(b.TRACE, str, new Object[]{obj}, (Throwable) null);
    }

    public boolean d() {
        return true;
    }

    public void e(String str) {
        a(b.TRACE, str, (Object[]) null, (Throwable) null);
    }

    public boolean e() {
        return true;
    }

    public boolean f() {
        return true;
    }

    public String getName() {
        return this.x;
    }

    public void b(String str) {
        a(b.DEBUG, str, (Object[]) null, (Throwable) null);
    }

    public void c(String str, Object obj, Object obj2) {
        a(b.DEBUG, str, new Object[]{obj, obj2}, (Throwable) null);
    }

    public void d(String str, Throwable th) {
        a(b.DEBUG, str, (Object[]) null, th);
    }

    public void e(String str, Object obj, Object obj2) {
        a(b.TRACE, str, new Object[]{obj, obj2}, (Throwable) null);
    }

    public void b(String str, Object obj) {
        a(b.INFO, str, new Object[]{obj}, (Throwable) null);
    }

    public void c(String str) {
        a(b.INFO, str, (Object[]) null, (Throwable) null);
    }

    public void d(String str) {
        a(b.WARN, str, (Object[]) null, (Throwable) null);
    }

    public void e(String str, Object obj) {
        a(b.DEBUG, str, new Object[]{obj}, (Throwable) null);
    }

    public void b(String str, Object obj, Object obj2) {
        a(b.WARN, str, new Object[]{obj, obj2}, (Throwable) null);
    }

    public void c(String str, Object obj) {
        a(b.WARN, str, new Object[]{obj}, (Throwable) null);
    }

    public void d(String str, Object obj, Object obj2) {
        a(b.ERROR, str, new Object[]{obj, obj2}, (Throwable) null);
    }

    public void e(String str, Throwable th) {
        a(b.ERROR, str, (Object[]) null, th);
    }

    public void b(String str, Throwable th) {
        a(b.WARN, str, (Object[]) null, th);
    }

    public void c(String str, Object... objArr) {
        a(b.WARN, str, objArr, (Throwable) null);
    }

    public void a(String str, Object obj, Object obj2) {
        a(b.INFO, str, new Object[]{obj, obj2}, (Throwable) null);
    }

    public void a(String str, Throwable th) {
        a(b.INFO, str, (Object[]) null, th);
    }

    public void a(String str) {
        a(b.ERROR, str, (Object[]) null, (Throwable) null);
    }

    public void a(String str, Object obj) {
        a(b.ERROR, str, new Object[]{obj}, (Throwable) null);
    }

    public void a(String str, Object... objArr) {
        a(b.ERROR, str, objArr, (Throwable) null);
    }
}
