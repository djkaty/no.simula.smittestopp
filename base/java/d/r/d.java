package d.r;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.azure.storage.Constants;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import d.b.a.r;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public final class d implements Closeable {
    public final RandomAccessFile A;
    public final FileChannel B;
    public final FileLock C;
    public final File x;
    public final long y;
    public final File z;

    public static class a extends File {
        public long x = -1;

        public a(File file, String str) {
            super(file, str);
        }
    }

    public d(File file, File file2) {
        StringBuilder a2 = e.a.a.a.a.a("MultiDexExtractor(");
        a2.append(file.getPath());
        a2.append(", ");
        a2.append(file2.getPath());
        a2.append(")");
        Log.i("MultiDex", a2.toString());
        this.x = file;
        this.z = file2;
        this.y = b(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.A = randomAccessFile;
        try {
            this.B = randomAccessFile.getChannel();
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.C = this.B.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException e2) {
                e = e2;
                a((Closeable) this.B);
                throw e;
            } catch (RuntimeException e3) {
                e = e3;
                a((Closeable) this.B);
                throw e;
            } catch (Error e4) {
                e = e4;
                a((Closeable) this.B);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e5) {
            a((Closeable) this.A);
            throw e5;
        }
    }

    /* JADX INFO: finally extract failed */
    public static long b(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            e a2 = r.a(randomAccessFile);
            CRC32 crc32 = new CRC32();
            long j2 = a2.b;
            randomAccessFile.seek(a2.a);
            int min = (int) Math.min(16384, j2);
            byte[] bArr = new byte[Constants.MIN_PERMITTED_BLOCK_SIZE];
            int read = randomAccessFile.read(bArr, 0, min);
            while (true) {
                if (read == -1) {
                    break;
                }
                crc32.update(bArr, 0, read);
                j2 -= (long) read;
                if (j2 == 0) {
                    break;
                }
                read = randomAccessFile.read(bArr, 0, (int) Math.min(16384, j2));
            }
            long value = crc32.getValue();
            randomAccessFile.close();
            return value == -1 ? value - 1 : value;
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x007e A[SYNTHETIC, Splitter:B:10:0x007e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<? extends java.io.File> a(android.content.Context r13, java.lang.String r14, boolean r15) {
        /*
            r12 = this;
            java.lang.String r0 = "MultiDexExtractor.load("
            java.lang.StringBuilder r0 = e.a.a.a.a.a(r0)
            java.io.File r1 = r12.x
            java.lang.String r1 = r1.getPath()
            r0.append(r1)
            java.lang.String r1 = ", "
            r0.append(r1)
            r0.append(r15)
            r0.append(r1)
            r0.append(r14)
            java.lang.String r1 = ")"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "MultiDex"
            android.util.Log.i(r1, r0)
            java.nio.channels.FileLock r0 = r12.C
            boolean r0 = r0.isValid()
            if (r0 == 0) goto L_0x00d6
            if (r15 != 0) goto L_0x009c
            java.io.File r0 = r12.x
            long r2 = r12.y
            r4 = 4
            java.lang.String r5 = "multidex.version"
            android.content.SharedPreferences r4 = r13.getSharedPreferences(r5, r4)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r14)
            java.lang.String r6 = "timestamp"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            r6 = -1
            long r8 = r4.getLong(r5, r6)
            long r10 = a((java.io.File) r0)
            int r0 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x007b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r14)
            java.lang.String r5 = "crc"
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            long r4 = r4.getLong(r0, r6)
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 == 0) goto L_0x0079
            goto L_0x007b
        L_0x0079:
            r0 = 0
            goto L_0x007c
        L_0x007b:
            r0 = 1
        L_0x007c:
            if (r0 != 0) goto L_0x009c
            java.util.List r13 = r12.a(r13, r14)     // Catch:{ IOException -> 0x0083 }
            goto L_0x00bc
        L_0x0083:
            r15 = move-exception
            java.lang.String r0 = "Failed to reload existing extracted secondary dex files, falling back to fresh extraction"
            android.util.Log.w(r1, r0, r15)
            java.util.List r15 = r12.a()
            java.io.File r0 = r12.x
            long r4 = a((java.io.File) r0)
            long r6 = r12.y
            r2 = r13
            r3 = r14
            r8 = r15
            a(r2, r3, r4, r6, r8)
            goto L_0x00bb
        L_0x009c:
            if (r15 == 0) goto L_0x00a4
            java.lang.String r15 = "Forced extraction must be performed."
            android.util.Log.i(r1, r15)
            goto L_0x00a9
        L_0x00a4:
            java.lang.String r15 = "Detected that extraction must be performed."
            android.util.Log.i(r1, r15)
        L_0x00a9:
            java.util.List r15 = r12.a()
            java.io.File r0 = r12.x
            long r4 = a((java.io.File) r0)
            long r6 = r12.y
            r2 = r13
            r3 = r14
            r8 = r15
            a(r2, r3, r4, r6, r8)
        L_0x00bb:
            r13 = r15
        L_0x00bc:
            java.lang.String r14 = "load found "
            java.lang.StringBuilder r14 = e.a.a.a.a.a(r14)
            int r15 = r13.size()
            r14.append(r15)
            java.lang.String r15 = " secondary dex files"
            r14.append(r15)
            java.lang.String r14 = r14.toString()
            android.util.Log.i(r1, r14)
            return r13
        L_0x00d6:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "MultiDexExtractor was closed"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: d.r.d.a(android.content.Context, java.lang.String, boolean):java.util.List");
    }

    public void close() {
        this.C.release();
        this.B.close();
        this.A.close();
    }

    public final List<a> a(Context context, String str) {
        String str2 = str;
        Log.i("MultiDex", "loading existing secondary dex files");
        String str3 = this.x.getName() + ".classes";
        SharedPreferences sharedPreferences = context.getSharedPreferences("multidex.version", 4);
        int i2 = sharedPreferences.getInt(str2 + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i2 + -1);
        int i3 = 2;
        while (i3 <= i2) {
            a aVar = new a(this.z, e.a.a.a.a.b(str3, i3, ".zip"));
            if (aVar.isFile()) {
                aVar.x = b(aVar);
                long j2 = sharedPreferences.getLong(str2 + "dex.crc." + i3, -1);
                long j3 = sharedPreferences.getLong(str2 + "dex.time." + i3, -1);
                long lastModified = aVar.lastModified();
                if (j3 == lastModified) {
                    String str4 = str3;
                    SharedPreferences sharedPreferences2 = sharedPreferences;
                    if (j2 == aVar.x) {
                        arrayList.add(aVar);
                        i3++;
                        sharedPreferences = sharedPreferences2;
                        str3 = str4;
                    }
                }
                throw new IOException("Invalid extracted dex: " + aVar + " (key \"" + str2 + "\"), expected modification time: " + j3 + ", modification time: " + lastModified + ", expected crc: " + j2 + ", file crc: " + aVar.x);
            }
            StringBuilder a2 = e.a.a.a.a.a("Missing extracted secondary dex file '");
            a2.append(aVar.getPath());
            a2.append("'");
            throw new IOException(a2.toString());
        }
        return arrayList;
    }

    public static long a(File file) {
        long lastModified = file.lastModified();
        return lastModified == -1 ? lastModified - 1 : lastModified;
    }

    public final List<a> a() {
        a aVar;
        boolean z2;
        String str = this.x.getName() + ".classes";
        File[] listFiles = this.z.listFiles(new c(this));
        if (listFiles == null) {
            StringBuilder a2 = e.a.a.a.a.a("Failed to list secondary dex dir content (");
            a2.append(this.z.getPath());
            a2.append(").");
            Log.w("MultiDex", a2.toString());
        } else {
            for (File file : listFiles) {
                StringBuilder a3 = e.a.a.a.a.a("Trying to delete old file ");
                a3.append(file.getPath());
                a3.append(" of size ");
                a3.append(file.length());
                Log.i("MultiDex", a3.toString());
                if (!file.delete()) {
                    StringBuilder a4 = e.a.a.a.a.a("Failed to delete old file ");
                    a4.append(file.getPath());
                    Log.w("MultiDex", a4.toString());
                } else {
                    StringBuilder a5 = e.a.a.a.a.a("Deleted old file ");
                    a5.append(file.getPath());
                    Log.i("MultiDex", a5.toString());
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.x);
        int i2 = 2;
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            while (entry != null) {
                aVar = new a(this.z, str + i2 + ".zip");
                arrayList.add(aVar);
                Log.i("MultiDex", "Extraction is needed for file " + aVar);
                int i3 = 0;
                z2 = false;
                while (i3 < 3 && !z2) {
                    i3++;
                    a(zipFile, entry, aVar, str);
                    aVar.x = b(aVar);
                    z2 = true;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z2 ? TelemetryEventStrings.Value.SUCCEEDED : TelemetryEventStrings.Value.FAILED);
                    sb.append(" '");
                    sb.append(aVar.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(aVar.length());
                    sb.append(" - crc: ");
                    sb.append(aVar.x);
                    Log.i("MultiDex", sb.toString());
                    if (!z2) {
                        aVar.delete();
                        if (aVar.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + aVar.getPath() + "'");
                        }
                    }
                }
                if (z2) {
                    i2++;
                    entry = zipFile.getEntry("classes" + i2 + ".dex");
                } else {
                    throw new IOException("Could not create zip file " + aVar.getAbsolutePath() + " for secondary dex (" + i2 + ")");
                }
            }
            try {
                zipFile.close();
            } catch (IOException e2) {
                Log.w("MultiDex", "Failed to close resource", e2);
            }
            return arrayList;
        } catch (IOException e3) {
            Log.w("MultiDex", "Failed to read crc from " + aVar.getAbsolutePath(), e3);
            z2 = false;
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (IOException e4) {
                Log.w("MultiDex", "Failed to close resource", e4);
            }
            throw th;
        }
    }

    public static void a(Context context, String str, long j2, long j3, List<a> list) {
        SharedPreferences.Editor edit = context.getSharedPreferences("multidex.version", 4).edit();
        edit.putLong(str + AbstractLog.TIMESTAMP, j2);
        edit.putLong(e.a.a.a.a.a(new StringBuilder(), str, "crc"), j3);
        edit.putInt(str + "dex.number", list.size() + 1);
        int i2 = 2;
        for (a next : list) {
            edit.putLong(str + "dex.crc." + i2, next.x);
            edit.putLong(str + "dex.time." + i2, next.lastModified());
            i2++;
        }
        edit.commit();
    }

    public static void a(ZipFile zipFile, ZipEntry zipEntry, File file, String str) {
        ZipOutputStream zipOutputStream;
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile(e.a.a.a.a.b("tmp-", str), ".zip", file.getParentFile());
        StringBuilder a2 = e.a.a.a.a.a("Extracting ");
        a2.append(createTempFile.getPath());
        Log.i("MultiDex", a2.toString());
        try {
            zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            ZipEntry zipEntry2 = new ZipEntry("classes.dex");
            zipEntry2.setTime(zipEntry.getTime());
            zipOutputStream.putNextEntry(zipEntry2);
            byte[] bArr = new byte[Constants.MIN_PERMITTED_BLOCK_SIZE];
            for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                zipOutputStream.write(bArr, 0, read);
            }
            zipOutputStream.closeEntry();
            zipOutputStream.close();
            if (createTempFile.setReadOnly()) {
                Log.i("MultiDex", "Renaming to " + file.getPath());
                if (createTempFile.renameTo(file)) {
                    a((Closeable) inputStream);
                    createTempFile.delete();
                    return;
                }
                throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            }
            throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
        } catch (Throwable th) {
            a((Closeable) inputStream);
            createTempFile.delete();
            throw th;
        }
    }

    public static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
            Log.w("MultiDex", "Failed to close resource", e2);
        }
    }
}
