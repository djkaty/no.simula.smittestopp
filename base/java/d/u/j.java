package d.u;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import d.u.m.a;
import d.u.m.b;
import d.w.a.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;

public class j implements c {
    public final Context a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final File f920c;

    /* renamed from: d  reason: collision with root package name */
    public final int f921d;

    /* renamed from: e  reason: collision with root package name */
    public final c f922e;

    /* renamed from: f  reason: collision with root package name */
    public a f923f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f924g;

    public void a(boolean z) {
        this.f922e.a(z);
    }

    public String b() {
        return this.f922e.b();
    }

    public final void c() {
        String b2 = this.f922e.b();
        File databasePath = this.a.getDatabasePath(b2);
        a aVar = this.f923f;
        a aVar2 = new a(b2, this.a.getFilesDir(), aVar == null || aVar.f874j);
        try {
            aVar2.b.lock();
            if (aVar2.f927c) {
                FileChannel channel = new FileOutputStream(aVar2.a).getChannel();
                aVar2.f928d = channel;
                channel.lock();
            }
            if (!databasePath.exists()) {
                a(databasePath);
                aVar2.a();
            } else if (this.f923f == null) {
                aVar2.a();
            } else {
                try {
                    int a2 = b.a(databasePath);
                    if (a2 == this.f921d) {
                        aVar2.a();
                    } else if (this.f923f.a(a2, this.f921d)) {
                        aVar2.a();
                    } else {
                        if (this.a.deleteDatabase(b2)) {
                            try {
                                a(databasePath);
                            } catch (IOException e2) {
                                Log.w("ROOM", "Unable to copy database file.", e2);
                            }
                        } else {
                            Log.w("ROOM", "Failed to delete database file (" + b2 + ") for a copy destructive migration.");
                        }
                        aVar2.a();
                    }
                } catch (IOException e3) {
                    Log.w("ROOM", "Unable to read database version.", e3);
                    aVar2.a();
                }
            }
        } catch (IOException e4) {
            throw new RuntimeException("Unable to copy database file.", e4);
        } catch (IOException e5) {
            throw new IllegalStateException("Unable to grab copy lock.", e5);
        } catch (Throwable th) {
            aVar2.a();
            throw th;
        }
    }

    public synchronized d.w.a.b a() {
        if (!this.f924g) {
            c();
            this.f924g = true;
        }
        return this.f922e.a();
    }

    /* JADX INFO: finally extract failed */
    public final void a(File file) {
        ReadableByteChannel readableByteChannel;
        if (this.b != null) {
            readableByteChannel = Channels.newChannel(this.a.getAssets().open(this.b));
        } else if (this.f920c != null) {
            readableByteChannel = new FileInputStream(this.f920c).getChannel();
        } else {
            throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.a.getCacheDir());
        createTempFile.deleteOnExit();
        FileChannel channel = new FileOutputStream(createTempFile).getChannel();
        try {
            if (Build.VERSION.SDK_INT <= 23) {
                InputStream newInputStream = Channels.newInputStream(readableByteChannel);
                OutputStream newOutputStream = Channels.newOutputStream(channel);
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = newInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    newOutputStream.write(bArr, 0, read);
                }
            } else {
                channel.transferFrom(readableByteChannel, 0, Long.MAX_VALUE);
            }
            channel.force(false);
            readableByteChannel.close();
            channel.close();
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                StringBuilder a2 = e.a.a.a.a.a("Failed to create directories for ");
                a2.append(file.getAbsolutePath());
                throw new IOException(a2.toString());
            } else if (!createTempFile.renameTo(file)) {
                StringBuilder a3 = e.a.a.a.a.a("Failed to move intermediate file (");
                a3.append(createTempFile.getAbsolutePath());
                a3.append(") to destination (");
                a3.append(file.getAbsolutePath());
                a3.append(").");
                throw new IOException(a3.toString());
            }
        } catch (Throwable th) {
            readableByteChannel.close();
            channel.close();
            throw th;
        }
    }
}
