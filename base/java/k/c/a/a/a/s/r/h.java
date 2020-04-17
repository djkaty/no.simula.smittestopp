package k.c.a.a.a.s.r;

import java.io.IOException;
import java.io.InputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.net.SocketTimeoutException;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class h implements Runnable {
    public static final String E = h.class.getName();
    public final Object A = new Object();
    public InputStream B;
    public Thread C = null;
    public PipedOutputStream D;
    public b x = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", E);
    public boolean y = false;
    public boolean z = false;

    public h(InputStream inputStream, PipedInputStream pipedInputStream) {
        this.B = inputStream;
        PipedOutputStream pipedOutputStream = new PipedOutputStream();
        this.D = pipedOutputStream;
        pipedInputStream.connect(pipedOutputStream);
    }

    public void a(String str) {
        this.x.b(E, "start", "855");
        synchronized (this.A) {
            if (!this.y) {
                this.y = true;
                Thread thread = new Thread(this, str);
                this.C = thread;
                thread.start();
            }
        }
    }

    public void run() {
        while (this.y && this.B != null) {
            try {
                this.x.b(E, "run", "852");
                this.B.available();
                InputStream inputStream = this.B;
                byte read = (byte) (((byte) inputStream.read()) & 15);
                int i2 = 2;
                byte[] bArr = null;
                boolean z2 = true;
                if (read == 2) {
                    byte read2 = (byte) inputStream.read();
                    if ((read2 & 128) == 0) {
                        z2 = false;
                    }
                    int i3 = (byte) (read2 & Byte.MAX_VALUE);
                    if (i3 == 127) {
                        i2 = 8;
                    } else if (i3 != 126) {
                        i2 = 0;
                    }
                    if (i2 > 0) {
                        i3 = 0;
                    }
                    while (true) {
                        i2--;
                        if (i2 < 0) {
                            break;
                        }
                        i3 |= (((byte) inputStream.read()) & 255) << (i2 * 8);
                    }
                    if (z2) {
                        bArr = new byte[4];
                        inputStream.read(bArr, 0, 4);
                    }
                    byte[] bArr2 = new byte[i3];
                    int i4 = i3;
                    int i5 = 0;
                    while (i5 != i3) {
                        int read3 = inputStream.read(bArr2, i5, i4);
                        i5 += read3;
                        i4 -= read3;
                    }
                    if (z2) {
                        for (int i6 = 0; i6 < i3; i6++) {
                            bArr2[i6] = (byte) (bArr2[i6] ^ bArr[i6 % 4]);
                        }
                    }
                    bArr = bArr2;
                    z2 = false;
                } else if (read != 8) {
                    throw new IOException("Invalid Frame: Opcode: " + read);
                }
                if (!z2) {
                    for (byte write : bArr) {
                        this.D.write(write);
                    }
                    this.D.flush();
                } else if (!this.z) {
                    throw new IOException("Server sent a WebSocket Frame with the Stop OpCode");
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                a();
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:2|3|(3:5|6|7)(1:8)|9|10) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001f */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
            r6 = this;
            r0 = 1
            r6.z = r0
            java.lang.Object r1 = r6.A
            monitor-enter(r1)
            k.c.a.a.a.t.b r2 = r6.x     // Catch:{ all -> 0x0044 }
            java.lang.String r3 = E     // Catch:{ all -> 0x0044 }
            java.lang.String r4 = "stop"
            java.lang.String r5 = "850"
            r2.b(r3, r4, r5)     // Catch:{ all -> 0x0044 }
            boolean r2 = r6.y     // Catch:{ all -> 0x0044 }
            r3 = 0
            if (r2 == 0) goto L_0x001e
            r6.y = r3     // Catch:{ all -> 0x0044 }
            java.io.PipedOutputStream r2 = r6.D     // Catch:{ IOException -> 0x001f }
            r2.close()     // Catch:{ IOException -> 0x001f }
            goto L_0x001f
        L_0x001e:
            r0 = 0
        L_0x001f:
            monitor-exit(r1)     // Catch:{ all -> 0x0044 }
            if (r0 == 0) goto L_0x0035
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.Thread r1 = r6.C
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0035
            java.lang.Thread r0 = r6.C
            if (r0 == 0) goto L_0x0035
            r0.join()     // Catch:{ InterruptedException -> 0x0035 }
        L_0x0035:
            r0 = 0
            r6.C = r0
            k.c.a.a.a.t.b r0 = r6.x
            java.lang.String r1 = E
            java.lang.String r2 = "stop"
            java.lang.String r3 = "851"
            r0.b(r1, r2, r3)
            return
        L_0x0044:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0044 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.r.h.a():void");
    }
}
