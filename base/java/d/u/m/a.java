package d.u.m;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class a {

    /* renamed from: e  reason: collision with root package name */
    public static final Map<String, Lock> f926e = new HashMap();
    public final File a;
    public final Lock b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f927c;

    /* renamed from: d  reason: collision with root package name */
    public FileChannel f928d;

    public a(String str, File file, boolean z) {
        File file2 = new File(file, e.a.a.a.a.b(str, ".lck"));
        this.a = file2;
        this.b = a(file2.getAbsolutePath());
        this.f927c = z;
    }

    public void a() {
        FileChannel fileChannel = this.f928d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException unused) {
            }
        }
        this.b.unlock();
    }

    public static Lock a(String str) {
        Lock lock;
        synchronized (f926e) {
            lock = f926e.get(str);
            if (lock == null) {
                lock = new ReentrantLock();
                f926e.put(str, lock);
            }
        }
        return lock;
    }
}
