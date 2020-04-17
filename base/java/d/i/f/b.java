package d.i.f;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import com.microsoft.azure.sdk.iot.deps.serializer.ConfigurationParser;
import com.microsoft.azure.storage.core.SR;
import d.b.a.r;
import d.f.h;
import d.i.f.c;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

public class b {
    public static final d.f.f<String, Typeface> a = new d.f.f<>(16);
    public static final c b = new c("fonts", 10, 10000);

    /* renamed from: c  reason: collision with root package name */
    public static final Object f583c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static final h<String, ArrayList<c.C0025c<g>>> f584d = new h<>();

    /* renamed from: e  reason: collision with root package name */
    public static final Comparator<byte[]> f585e = new d();

    public static class a implements Callable<g> {
        public final /* synthetic */ Context a;
        public final /* synthetic */ a b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ int f586c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f587d;

        public a(Context context, a aVar, int i2, String str) {
            this.a = context;
            this.b = aVar;
            this.f586c = i2;
            this.f587d = str;
        }

        public Object call() {
            g a2 = b.a(this.a, this.b, this.f586c);
            Typeface typeface = a2.a;
            if (typeface != null) {
                b.a.a(this.f587d, typeface);
            }
            return a2;
        }
    }

    /* renamed from: d.i.f.b$b  reason: collision with other inner class name */
    public static class C0024b implements c.C0025c<g> {
        public final /* synthetic */ d.i.b.b.g a;
        public final /* synthetic */ Handler b;

        public C0024b(d.i.b.b.g gVar, Handler handler) {
            this.a = gVar;
            this.b = handler;
        }

        public void a(Object obj) {
            g gVar = (g) obj;
            if (gVar == null) {
                this.a.a(1, this.b);
                return;
            }
            int i2 = gVar.b;
            if (i2 == 0) {
                this.a.a(gVar.a, this.b);
            } else {
                this.a.a(i2, this.b);
            }
        }
    }

    public static class c implements c.C0025c<g> {
        public final /* synthetic */ String a;

        public c(String str) {
            this.a = str;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:11:0x001e, code lost:
            if (r0 >= r1.size()) goto L_0x002c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0020, code lost:
            ((d.i.f.c.C0025c) r1.get(r0)).a(r5);
            r0 = r0 + 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x002c, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0019, code lost:
            r0 = 0;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(d.i.f.b.g r5) {
            /*
                r4 = this;
                java.lang.Object r0 = d.i.f.b.f583c
                monitor-enter(r0)
                d.f.h<java.lang.String, java.util.ArrayList<d.i.f.c$c<d.i.f.b$g>>> r1 = d.i.f.b.f584d     // Catch:{ all -> 0x002d }
                java.lang.String r2 = r4.a     // Catch:{ all -> 0x002d }
                java.lang.Object r1 = r1.get(r2)     // Catch:{ all -> 0x002d }
                java.util.ArrayList r1 = (java.util.ArrayList) r1     // Catch:{ all -> 0x002d }
                if (r1 != 0) goto L_0x0011
                monitor-exit(r0)     // Catch:{ all -> 0x002d }
                return
            L_0x0011:
                d.f.h<java.lang.String, java.util.ArrayList<d.i.f.c$c<d.i.f.b$g>>> r2 = d.i.f.b.f584d     // Catch:{ all -> 0x002d }
                java.lang.String r3 = r4.a     // Catch:{ all -> 0x002d }
                r2.remove(r3)     // Catch:{ all -> 0x002d }
                monitor-exit(r0)     // Catch:{ all -> 0x002d }
                r0 = 0
            L_0x001a:
                int r2 = r1.size()
                if (r0 >= r2) goto L_0x002c
                java.lang.Object r2 = r1.get(r0)
                d.i.f.c$c r2 = (d.i.f.c.C0025c) r2
                r2.a(r5)
                int r0 = r0 + 1
                goto L_0x001a
            L_0x002c:
                return
            L_0x002d:
                r5 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x002d }
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: d.i.f.b.c.a(d.i.f.b$g):void");
        }
    }

    public static class d implements Comparator<byte[]> {
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v2, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v2, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v5, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v5, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v6, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v6, resolved type: byte} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int compare(java.lang.Object r5, java.lang.Object r6) {
            /*
                r4 = this;
                byte[] r5 = (byte[]) r5
                byte[] r6 = (byte[]) r6
                int r0 = r5.length
                int r1 = r6.length
                r2 = 0
                if (r0 == r1) goto L_0x000c
                int r5 = r5.length
                int r6 = r6.length
                goto L_0x001a
            L_0x000c:
                r0 = 0
            L_0x000d:
                int r1 = r5.length
                if (r0 >= r1) goto L_0x0020
                byte r1 = r5[r0]
                byte r3 = r6[r0]
                if (r1 == r3) goto L_0x001d
                byte r5 = r5[r0]
                byte r6 = r6[r0]
            L_0x001a:
                int r2 = r5 - r6
                goto L_0x0020
            L_0x001d:
                int r0 = r0 + 1
                goto L_0x000d
            L_0x0020:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: d.i.f.b.d.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    public static class e {
        public final int a;
        public final f[] b;

        public e(int i2, f[] fVarArr) {
            this.a = i2;
            this.b = fVarArr;
        }
    }

    public static class f {
        public final Uri a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f588c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f589d;

        /* renamed from: e  reason: collision with root package name */
        public final int f590e;

        public f(Uri uri, int i2, int i3, boolean z, int i4) {
            if (uri != null) {
                this.a = uri;
                this.b = i2;
                this.f588c = i3;
                this.f589d = z;
                this.f590e = i4;
                return;
            }
            throw null;
        }
    }

    public static final class g {
        public final Typeface a;
        public final int b;

        public g(Typeface typeface, int i2) {
            this.a = typeface;
            this.b = i2;
        }
    }

    public static g a(Context context, a aVar, int i2) {
        try {
            e a2 = a(context, (CancellationSignal) null, aVar);
            int i3 = a2.a;
            int i4 = -3;
            if (i3 == 0) {
                Typeface a3 = d.i.c.c.a.a(context, (CancellationSignal) null, a2.b, i2);
                if (a3 != null) {
                    i4 = 0;
                }
                return new g(a3, i4);
            }
            if (i3 == 1) {
                i4 = -2;
            }
            return new g((Typeface) null, i4);
        } catch (PackageManager.NameNotFoundException unused) {
            return new g((Typeface) null, -1);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0070, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0081, code lost:
        r3 = b;
        r4 = new d.i.f.b.c(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0088, code lost:
        if (r3 == null) goto L_0x0098;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x008a, code lost:
        r3.b(new d.i.f.d(r3, r1, new android.os.Handler(), r4));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0097, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0098, code lost:
        throw null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Typeface a(android.content.Context r2, d.i.f.a r3, d.i.b.b.g r4, android.os.Handler r5, boolean r6, int r7, int r8) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r3.f582f
            r0.append(r1)
            java.lang.String r1 = "-"
            r0.append(r1)
            r0.append(r8)
            java.lang.String r0 = r0.toString()
            d.f.f<java.lang.String, android.graphics.Typeface> r1 = a
            java.lang.Object r1 = r1.a(r0)
            android.graphics.Typeface r1 = (android.graphics.Typeface) r1
            if (r1 == 0) goto L_0x0026
            if (r4 == 0) goto L_0x0025
            r4.a(r1)
        L_0x0025:
            return r1
        L_0x0026:
            if (r6 == 0) goto L_0x0041
            r1 = -1
            if (r7 != r1) goto L_0x0041
            d.i.f.b$g r2 = a((android.content.Context) r2, (d.i.f.a) r3, (int) r8)
            if (r4 == 0) goto L_0x003e
            int r3 = r2.b
            if (r3 != 0) goto L_0x003b
            android.graphics.Typeface r3 = r2.a
            r4.a((android.graphics.Typeface) r3, (android.os.Handler) r5)
            goto L_0x003e
        L_0x003b:
            r4.a((int) r3, (android.os.Handler) r5)
        L_0x003e:
            android.graphics.Typeface r2 = r2.a
            return r2
        L_0x0041:
            d.i.f.b$a r1 = new d.i.f.b$a
            r1.<init>(r2, r3, r8, r0)
            r2 = 0
            if (r6 == 0) goto L_0x0054
            d.i.f.c r3 = b     // Catch:{ InterruptedException -> 0x0053 }
            java.lang.Object r3 = r3.a(r1, r7)     // Catch:{ InterruptedException -> 0x0053 }
            d.i.f.b$g r3 = (d.i.f.b.g) r3     // Catch:{ InterruptedException -> 0x0053 }
            android.graphics.Typeface r2 = r3.a     // Catch:{ InterruptedException -> 0x0053 }
        L_0x0053:
            return r2
        L_0x0054:
            if (r4 != 0) goto L_0x0058
            r3 = r2
            goto L_0x005d
        L_0x0058:
            d.i.f.b$b r3 = new d.i.f.b$b
            r3.<init>(r4, r5)
        L_0x005d:
            java.lang.Object r4 = f583c
            monitor-enter(r4)
            d.f.h<java.lang.String, java.util.ArrayList<d.i.f.c$c<d.i.f.b$g>>> r5 = f584d     // Catch:{ all -> 0x0099 }
            java.lang.Object r5 = r5.getOrDefault(r0, r2)     // Catch:{ all -> 0x0099 }
            java.util.ArrayList r5 = (java.util.ArrayList) r5     // Catch:{ all -> 0x0099 }
            if (r5 == 0) goto L_0x0071
            if (r3 == 0) goto L_0x006f
            r5.add(r3)     // Catch:{ all -> 0x0099 }
        L_0x006f:
            monitor-exit(r4)     // Catch:{ all -> 0x0099 }
            return r2
        L_0x0071:
            if (r3 == 0) goto L_0x0080
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch:{ all -> 0x0099 }
            r5.<init>()     // Catch:{ all -> 0x0099 }
            r5.add(r3)     // Catch:{ all -> 0x0099 }
            d.f.h<java.lang.String, java.util.ArrayList<d.i.f.c$c<d.i.f.b$g>>> r3 = f584d     // Catch:{ all -> 0x0099 }
            r3.put(r0, r5)     // Catch:{ all -> 0x0099 }
        L_0x0080:
            monitor-exit(r4)     // Catch:{ all -> 0x0099 }
            d.i.f.c r3 = b
            d.i.f.b$c r4 = new d.i.f.b$c
            r4.<init>(r0)
            if (r3 == 0) goto L_0x0098
            android.os.Handler r5 = new android.os.Handler
            r5.<init>()
            d.i.f.d r6 = new d.i.f.d
            r6.<init>(r3, r1, r5, r4)
            r3.b(r6)
            return r2
        L_0x0098:
            throw r2
        L_0x0099:
            r2 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0099 }
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d.i.f.b.a(android.content.Context, d.i.f.a, d.i.b.b.g, android.os.Handler, boolean, int, int):android.graphics.Typeface");
    }

    public static Map<Uri, ByteBuffer> a(Context context, f[] fVarArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (f fVar : fVarArr) {
            if (fVar.f590e == 0) {
                Uri uri = fVar.a;
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, r.a(context, cancellationSignal, uri));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* JADX WARNING: type inference failed for: r7v2, types: [android.database.Cursor, d.i.f.b$f[]] */
    public static e a(Context context, CancellationSignal cancellationSignal, a aVar) {
        Cursor cursor;
        Uri uri;
        boolean z;
        a aVar2 = aVar;
        PackageManager packageManager = context.getPackageManager();
        Resources resources = context.getResources();
        String str = aVar2.a;
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException(e.a.a.a.a.b("No package found for authority: ", str));
        } else if (resolveContentProvider.packageName.equals(aVar2.b)) {
            Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature byteArray : signatureArr) {
                arrayList.add(byteArray.toByteArray());
            }
            Collections.sort(arrayList, f585e);
            List<List<byte[]>> list = aVar2.f580d;
            if (list == null) {
                list = r.a(resources, aVar2.f581e);
            }
            int i2 = 0;
            while (true) {
                cursor = 0;
                if (i2 >= list.size()) {
                    resolveContentProvider = cursor;
                    break;
                }
                ArrayList arrayList2 = new ArrayList(list.get(i2));
                Collections.sort(arrayList2, f585e);
                if (arrayList.size() == arrayList2.size()) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= arrayList.size()) {
                            z = true;
                            break;
                        } else if (!Arrays.equals((byte[]) arrayList.get(i3), (byte[]) arrayList2.get(i3))) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
                z = false;
                if (z) {
                    break;
                }
                i2++;
            }
            if (resolveContentProvider == null) {
                return new e(1, cursor);
            }
            String str2 = resolveContentProvider.authority;
            ArrayList arrayList3 = new ArrayList();
            Uri build = new Uri.Builder().scheme(ConfigurationParser.CONTENT_NAME).authority(str2).build();
            Uri build2 = new Uri.Builder().scheme(ConfigurationParser.CONTENT_NAME).authority(str2).appendPath(SR.FILE).build();
            try {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar2.f579c}, (String) null, cancellationSignal);
                if (cursor != null && cursor.getCount() > 0) {
                    int columnIndex = cursor.getColumnIndex("result_code");
                    arrayList3 = new ArrayList();
                    int columnIndex2 = cursor.getColumnIndex("_id");
                    int columnIndex3 = cursor.getColumnIndex("file_id");
                    int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                    int columnIndex5 = cursor.getColumnIndex("font_weight");
                    int columnIndex6 = cursor.getColumnIndex("font_italic");
                    while (cursor.moveToNext()) {
                        int i4 = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                        int i5 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                        if (columnIndex3 == -1) {
                            uri = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                        } else {
                            uri = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                        }
                        arrayList3.add(new f(uri, i5, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i4));
                    }
                }
                return new e(0, (f[]) arrayList3.toArray(new f[0]));
            } finally {
                if (cursor != 0) {
                    cursor.close();
                }
            }
        } else {
            throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + aVar2.b);
        }
    }
}
