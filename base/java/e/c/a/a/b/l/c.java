package e.c.a.a.b.l;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.microsoft.appcenter.ingestion.models.properties.DoubleTypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.LongTypedProperty;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import e.c.a.b.g.c;
import e.e.a.i;
import e.e.a.l;
import e.e.a.r;
import e.e.a.u.g;
import e.e.b.b;
import i.a.b.d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.ByteBuffer;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPrivateKey;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import k.a.b.a.c.c1.h;
import k.a.b.a.c.c1.j;
import k.a.b.a.c.c1.k;
import k.a.b.a.c.c1.m;
import k.a.b.a.c.s;
import k.a.b.a.c.x;
import k.a.b.a.c.z0.c0;
import k.a.b.a.c.z0.d0;
import k.a.b.a.c.z0.n;
import k.a.b.a.c.z0.o;
import k.a.b.a.c.z0.p;
import k.a.b.a.c.z0.u;
import k.a.b.a.c.z0.v;
import k.a.b.a.c.z0.w;
import k.a.b.a.c.z0.y;
import k.a.b.a.c.z0.z;
import k.a.b.a.d.g0.b0;
import k.b.a.a0;
import k.b.a.e;
import k.b.a.j1;
import k.b.a.k2.a;
import k.b.a.t;
import k.b.j.g.f;
import k.e.a.q;

public final class c {
    public static Boolean a;
    public static Boolean b;

    /* renamed from: c  reason: collision with root package name */
    public static Boolean f1207c;

    public static float a(float f2, float f3, float f4) {
        return (f4 * f3) + ((1.0f - f4) * f2);
    }

    public static void a(StringBuffer stringBuffer, a aVar, Hashtable hashtable) {
        String str = (String) hashtable.get(aVar.x);
        if (str == null) {
            str = aVar.x.x;
        }
        stringBuffer.append(str);
        stringBuffer.append(Mqtt.MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR);
        stringBuffer.append(b(aVar.y));
    }

    public static final int b(int i2) {
        if (i2 < 0) {
            return i2;
        }
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((((float) i2) / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static final int b(int i2, int i3) {
        int i4 = i2 % i3;
        return i4 >= 0 ? i4 : i4 + i3;
    }

    public static String b(e eVar) {
        int i2;
        StringBuffer stringBuffer = new StringBuffer();
        int i3 = 0;
        if (!(eVar instanceof a0) || (eVar instanceof j1)) {
            try {
                stringBuffer.append('#');
                stringBuffer.append(f.b(eVar.c().a("DER")));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Other value has no encoded form");
            }
        } else {
            String d2 = ((a0) eVar).d();
            if (d2.length() > 0 && d2.charAt(0) == '#') {
                stringBuffer.append('\\');
            }
            stringBuffer.append(d2);
        }
        int length = stringBuffer.length();
        int i4 = 2;
        if (!(stringBuffer.length() >= 2 && stringBuffer.charAt(0) == '\\' && stringBuffer.charAt(1) == '#')) {
            i4 = 0;
        }
        while (i2 != length) {
            char charAt = stringBuffer.charAt(i2);
            if (!(charAt == '\"' || charAt == '\\' || charAt == '+' || charAt == ',')) {
                switch (charAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        i2++;
                        continue;
                }
            }
            stringBuffer.insert(i2, "\\");
            i2 += 2;
            length++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.length() > i3 && stringBuffer.charAt(i3) == ' ') {
                stringBuffer.insert(i3, "\\");
                i3 += 2;
            }
        }
        int length2 = stringBuffer.length() - 1;
        while (length2 >= 0 && stringBuffer.charAt(length2) == ' ') {
            stringBuffer.insert(length2, '\\');
            length2--;
        }
        return stringBuffer.toString();
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static e.e.a.u.f d(d dVar) {
        return e.e.a.u.f.a(d(dVar, "kty"));
    }

    public static g e(d dVar) {
        if (dVar.containsKey("use")) {
            return g.a(d(dVar, "use"));
        }
        return null;
    }

    public static List<e.e.a.v.a> f(d dVar) {
        if (!dVar.containsKey("x5c")) {
            return null;
        }
        List<e.e.a.v.a> a2 = a(a(dVar, "x5c"));
        if (!a2.isEmpty()) {
            return a2;
        }
        throw new ParseException("The X.509 certificate chain \"x5c\" must not be empty", 0);
    }

    public static e.e.a.v.c g(d dVar) {
        if (dVar.containsKey("x5t#S256")) {
            return new e.e.a.v.c(d(dVar, "x5t#S256"));
        }
        return null;
    }

    public static e.e.a.v.c h(d dVar) {
        if (dVar.containsKey("x5t")) {
            return new e.e.a.v.c(d(dVar, "x5t"));
        }
        return null;
    }

    public static URI i(d dVar) {
        if (dVar.containsKey("x5u")) {
            return f(dVar, "x5u");
        }
        return null;
    }

    @TargetApi(26)
    public static boolean b(Context context) {
        if (a(context)) {
            if (Build.VERSION.SDK_INT >= 24) {
                if (b == null) {
                    b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
                }
                if (!b.booleanValue() || c()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static Set<e.e.a.u.e> c(d dVar) {
        if (dVar.containsKey("key_ops")) {
            return e.e.a.u.e.parse(e(dVar, "key_ops"));
        }
        return null;
    }

    public static String d(d dVar, String str) {
        return (String) a(dVar, str, String.class);
    }

    public static List<String> e(d dVar, String str) {
        String[] strArr;
        i.a.b.a a2 = a(dVar, str);
        if (a2 == null) {
            strArr = null;
        } else {
            try {
                strArr = (String[]) a2.toArray(new String[0]);
            } catch (ArrayStoreException unused) {
                throw new ParseException(e.a.a.a.a.a("JSON object member with key \"", str, "\" is not an array of strings"), 0);
            }
        }
        if (strArr == null) {
            return null;
        }
        return Arrays.asList(strArr);
    }

    public static long c(d dVar, String str) {
        Number number = (Number) a(dVar, str, Number.class);
        if (number != null) {
            return number.longValue();
        }
        throw new ParseException(e.a.a.a.a.a("JSON object member with key \"", str, "\" is missing or null"), 0);
    }

    public static URI f(d dVar, String str) {
        String d2 = d(dVar, str);
        if (d2 == null) {
            return null;
        }
        try {
            return new URI(d2);
        } catch (URISyntaxException e2) {
            throw new ParseException(e2.getMessage(), 0);
        }
    }

    public static q[] c(int i2) {
        q[] qVarArr = new q[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            qVarArr[i3] = new q();
        }
        return qVarArr;
    }

    public static String a(e eVar) {
        String b2 = b(eVar);
        if (b2.length() > 0 && b2.charAt(0) == '#') {
            try {
                t a2 = t.a(f.a(b2, 1, b2.length() - 1));
                if (a2 instanceof a0) {
                    b2 = ((a0) a2).d();
                }
            } catch (IOException e2) {
                throw new IllegalStateException("unknown encoding in name: " + e2);
            }
        }
        String b3 = k.b.j.f.b(b2);
        int length = b3.length();
        if (length < 2) {
            return b3;
        }
        int i2 = length - 1;
        int i3 = 0;
        while (i3 < i2 && b3.charAt(i3) == '\\' && b3.charAt(i3 + 1) == ' ') {
            i3 += 2;
        }
        int i4 = i3 + 1;
        int i5 = i2;
        while (i5 > i4 && b3.charAt(i5 - 1) == '\\' && b3.charAt(i5) == ' ') {
            i5 -= 2;
        }
        if (i3 > 0 || i5 < i2) {
            b3 = b3.substring(i3, i5 + 1);
        }
        if (b3.indexOf("  ") < 0) {
            return b3;
        }
        StringBuffer stringBuffer = new StringBuffer();
        char charAt = b3.charAt(0);
        stringBuffer.append(charAt);
        for (int i6 = 1; i6 < b3.length(); i6++) {
            char charAt2 = b3.charAt(i6);
            if (charAt != ' ' || charAt2 != ' ') {
                stringBuffer.append(charAt2);
                charAt = charAt2;
            }
        }
        return stringBuffer.toString();
    }

    public static b b(String str) {
        int indexOf = str.indexOf(CryptoConstants.ALIAS_SEPARATOR);
        if (indexOf != -1) {
            try {
                e.e.a.a a2 = e.e.a.e.a(b(new e.e.a.v.c(str.substring(0, indexOf)).e()));
                if (a2.equals(e.e.a.a.y)) {
                    e.e.a.v.c[] a3 = e.e.a.g.a(str);
                    if (a3[2].x.isEmpty()) {
                        return new e.e.b.d(a3[0], a3[1]);
                    }
                    throw new ParseException("Unexpected third Base64URL part in the unsecured JWT object", 0);
                } else if (a2 instanceof l) {
                    e.e.a.v.c[] a4 = e.e.a.g.a(str);
                    if (a4.length == 3) {
                        return new e.e.b.e(a4[0], a4[1], a4[2]);
                    }
                    throw new ParseException("Unexpected number of Base64URL parts, must be three", 0);
                } else if (a2 instanceof i) {
                    e.e.a.v.c[] a5 = e.e.a.g.a(str);
                    if (a5.length == 5) {
                        return new e.e.b.a(a5[0], a5[1], a5[2], a5[3], a5[4]);
                    }
                    throw new ParseException("Unexpected number of Base64URL parts, must be five", 0);
                } else {
                    throw new AssertionError("Unexpected algorithm type: " + a2);
                }
            } catch (ParseException e2) {
                StringBuilder a6 = e.a.a.a.a.a("Invalid unsecured/JWS/JWE header: ");
                a6.append(e2.getMessage());
                throw new ParseException(a6.toString(), 0);
            }
        } else {
            throw new ParseException("Invalid JWT serialization: Missing dot delimiter(s)", 0);
        }
    }

    public static final boolean a(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        if (bluetoothGattCharacteristic != null) {
            return h.k.b.g.a((Object) bluetoothGattCharacteristic.getUuid(), (Object) j.b.a.a0.b);
        }
        h.k.b.g.a("$this$isDeviceIdentifier");
        throw null;
    }

    @TargetApi(20)
    public static boolean a(Context context) {
        if (a == null) {
            a = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return a.booleanValue();
    }

    public static float a(float f2, float f3, float f4, float f5) {
        return (float) Math.hypot((double) (f4 - f2), (double) (f5 - f3));
    }

    public static int a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int min = Math.min(byteBuffer.remaining(), byteBuffer2.remaining());
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.limit(duplicate.position() + min);
        byteBuffer2.put(duplicate);
        byteBuffer.position(byteBuffer.position() + min);
        return min;
    }

    public static final boolean a(char c2, char c3, boolean z) {
        if (c2 == c3) {
            return true;
        }
        if (!z) {
            return false;
        }
        return Character.toUpperCase(c2) == Character.toUpperCase(c3) || Character.toLowerCase(c2) == Character.toLowerCase(c3);
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return obj == obj2;
        }
        if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
            return Arrays.deepEquals((Object[]) obj, (Object[]) obj2);
        }
        if ((obj instanceof boolean[]) && (obj2 instanceof boolean[])) {
            return Arrays.equals((boolean[]) obj, (boolean[]) obj2);
        }
        if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        if ((obj instanceof char[]) && (obj2 instanceof char[])) {
            return Arrays.equals((char[]) obj, (char[]) obj2);
        }
        if ((obj instanceof double[]) && (obj2 instanceof double[])) {
            return Arrays.equals((double[]) obj, (double[]) obj2);
        }
        if ((obj instanceof float[]) && (obj2 instanceof float[])) {
            return Arrays.equals((float[]) obj, (float[]) obj2);
        }
        if ((obj instanceof int[]) && (obj2 instanceof int[])) {
            return Arrays.equals((int[]) obj, (int[]) obj2);
        }
        if ((obj instanceof long[]) && (obj2 instanceof long[])) {
            return Arrays.equals((long[]) obj, (long[]) obj2);
        }
        if (!(obj instanceof short[]) || !(obj2 instanceof short[])) {
            return obj.equals(obj2);
        }
        return Arrays.equals((short[]) obj, (short[]) obj2);
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static String b() {
        return g.b.a.d.a.a(g.b.a.d.b.a());
    }

    /* JADX WARNING: Removed duplicated region for block: B:6:0x001d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int b(int r3, java.nio.ByteBuffer r4) {
        /*
            if (r4 == 0) goto L_0x0026
        L_0x0002:
            g.b.a.c r0 = g.b.a.d.a
            int r1 = r4.remaining()
            long r1 = (long) r1
            int r0 = r0.a((int) r3, (java.nio.ByteBuffer) r4, (long) r1)
            if (r0 >= 0) goto L_0x001b
            g.a.d.b r1 = g.a.d.b.EINTR
            g.a.d.b r2 = a()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L_0x0002
        L_0x001b:
            if (r0 <= 0) goto L_0x0025
            int r3 = r4.position()
            int r3 = r3 + r0
            r4.position(r3)
        L_0x0025:
            return r0
        L_0x0026:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException
            java.lang.String r4 = "Source buffer cannot be null"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.l.c.b(int, java.nio.ByteBuffer):int");
    }

    /* renamed from: b  reason: collision with other method in class */
    public static d m9b(String str) {
        try {
            Object a2 = new i.a.b.l.a(640).a(str);
            if (a2 instanceof d) {
                return (d) a2;
            }
            throw new ParseException("JSON entity is not an object", 0);
        } catch (i.a.b.l.e e2) {
            StringBuilder a3 = e.a.a.a.a.a("Invalid JSON: ");
            a3.append(e2.getMessage());
            throw new ParseException(a3.toString(), 0);
        } catch (Exception e3) {
            StringBuilder a4 = e.a.a.a.a.a("Unexpected exception: ");
            a4.append(e3.getMessage());
            throw new ParseException(a4.toString(), 0);
        }
    }

    public static void a(AnimatorSet animatorSet, List<Animator> list) {
        int size = list.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Animator animator = list.get(i2);
            j2 = Math.max(j2, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{0, 0});
        ofInt.setDuration(j2);
        list.add(0, ofInt);
        animatorSet.playTogether(list);
    }

    public static String b(d dVar) {
        if (dVar.containsKey(AccessTokenRecord.SerializedNames.KID)) {
            return d(dVar, AccessTokenRecord.SerializedNames.KID);
        }
        return null;
    }

    public static d b(d dVar, String str) {
        return (d) a(dVar, str, d.class);
    }

    public static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    public static final <T> int a(Iterable<? extends T> iterable, int i2) {
        if (iterable != null) {
            return iterable instanceof Collection ? ((Collection) iterable).size() : i2;
        }
        h.k.b.g.a("$this$collectionSizeOrDefault");
        throw null;
    }

    public static DateFormat a(int i2, int i3) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (i2 == 0) {
            str = "EEEE, MMMM d, yyyy";
        } else if (i2 == 1) {
            str = "MMMM d, yyyy";
        } else if (i2 == 2) {
            str = "MMM d, yyyy";
        } else if (i2 == 3) {
            str = "M/d/yy";
        } else {
            throw new IllegalArgumentException(e.a.a.a.a.a("Unknown DateFormat style: ", i2));
        }
        sb.append(str);
        sb.append(" ");
        if (i3 == 0 || i3 == 1) {
            str2 = "h:mm:ss a z";
        } else if (i3 == 2) {
            str2 = "h:mm:ss a";
        } else if (i3 == 3) {
            str2 = "h:mm a";
        } else {
            throw new IllegalArgumentException(e.a.a.a.a.a("Unknown DateFormat style: ", i3));
        }
        sb.append(str2);
        return new SimpleDateFormat(sb.toString(), Locale.US);
    }

    public static ColorStateList a(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        ColorStateList b2;
        if (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (b2 = d.b.b.a.a.b(context, resourceId)) == null) {
            return typedArray.getColorStateList(i2);
        }
        return b2;
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0016, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001c, code lost:
        throw new e.c.c.k((java.lang.Throwable) r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001d, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0023, code lost:
        throw new e.c.c.s((java.lang.Throwable) r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x002a, code lost:
        return e.c.c.l.a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0030, code lost:
        throw new e.c.c.s((java.lang.Throwable) r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x000d, code lost:
        r2 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x000f, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0015, code lost:
        throw new e.c.c.s((java.lang.Throwable) r2);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0016 A[ExcHandler: IOException (r2v5 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:0:0x0000] */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x001d A[ExcHandler: d (r2v4 'e' e.c.c.y.d A[CUSTOM_DECLARE]), Splitter:B:0:0x0000] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0028  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x000f A[ExcHandler: NumberFormatException (r2v6 'e' java.lang.NumberFormatException A[CUSTOM_DECLARE]), Splitter:B:0:0x0000] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static e.c.c.j a(e.c.c.y.a r2) {
        /*
            r2.r()     // Catch:{ EOFException -> 0x0024, d -> 0x001d, IOException -> 0x0016, NumberFormatException -> 0x000f }
            r0 = 0
            com.google.gson.TypeAdapter<e.c.c.j> r1 = com.google.gson.internal.bind.TypeAdapters.X     // Catch:{ EOFException -> 0x000d, d -> 0x001d, IOException -> 0x0016, NumberFormatException -> 0x000f }
            java.lang.Object r2 = r1.read(r2)     // Catch:{ EOFException -> 0x000d, d -> 0x001d, IOException -> 0x0016, NumberFormatException -> 0x000f }
            e.c.c.j r2 = (e.c.c.j) r2     // Catch:{ EOFException -> 0x000d, d -> 0x001d, IOException -> 0x0016, NumberFormatException -> 0x000f }
            return r2
        L_0x000d:
            r2 = move-exception
            goto L_0x0026
        L_0x000f:
            r2 = move-exception
            e.c.c.s r0 = new e.c.c.s
            r0.<init>((java.lang.Throwable) r2)
            throw r0
        L_0x0016:
            r2 = move-exception
            e.c.c.k r0 = new e.c.c.k
            r0.<init>((java.lang.Throwable) r2)
            throw r0
        L_0x001d:
            r2 = move-exception
            e.c.c.s r0 = new e.c.c.s
            r0.<init>((java.lang.Throwable) r2)
            throw r0
        L_0x0024:
            r2 = move-exception
            r0 = 1
        L_0x0026:
            if (r0 == 0) goto L_0x002b
            e.c.c.l r2 = e.c.c.l.a
            return r2
        L_0x002b:
            e.c.c.s r0 = new e.c.c.s
            r0.<init>((java.lang.Throwable) r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.l.c.a(e.c.c.y.a):e.c.c.j");
    }

    public static PorterDuff.Mode a(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static Animator a(e.c.a.b.g.c cVar, float f2, float f3, float f4) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(cVar, c.C0070c.a, c.b.b, new c.e[]{new c.e(f2, f3, f4)});
        c.e revealInfo = cVar.getRevealInfo();
        if (revealInfo != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) cVar, (int) f2, (int) f3, revealInfo.f1267c, f4);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(new Animator[]{ofObject, createCircularReveal});
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }

    public static List<e.e.a.v.a> a(i.a.b.a aVar) {
        if (aVar == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        int i2 = 0;
        while (i2 < aVar.size()) {
            Object obj = aVar.get(i2);
            if (obj == null) {
                throw new ParseException(e.a.a.a.a.b("The X.509 certificate at position ", i2, " must not be null"), 0);
            } else if (obj instanceof String) {
                linkedList.add(new e.e.a.v.a((String) obj));
                i2++;
            } else {
                throw new ParseException(e.a.a.a.a.b("The X.509 certificate at position ", i2, " must be encoded as a Base64 string"), 0);
            }
        }
        return linkedList;
    }

    public static k.a.b.a.g.d a(k.a.b.a.g.f fVar, k.a.b.a.d.l... lVarArr) {
        k.a.b.a.g.i.d dVar = new k.a.b.a.g.i.d(new k.a.b.a.g.i.c(), fVar);
        for (k.a.b.a.d.l add : lVarArr) {
            dVar.F().add(add);
        }
        return dVar;
    }

    public static final <T> Class<T> a(h.m.b<T> bVar) {
        if (bVar != null) {
            Class<?> a2 = ((h.k.b.c) bVar).a();
            if (!a2.isPrimitive()) {
                return a2;
            }
            String name = a2.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    return name.equals(DoubleTypedProperty.TYPE) ? Double.class : a2;
                case 104431:
                    if (name.equals("int")) {
                        return Integer.class;
                    }
                    return a2;
                case 3039496:
                    if (name.equals("byte")) {
                        return Byte.class;
                    }
                    return a2;
                case 3052374:
                    if (name.equals("char")) {
                        return Character.class;
                    }
                    return a2;
                case 3327612:
                    if (name.equals(LongTypedProperty.TYPE)) {
                        return Long.class;
                    }
                    return a2;
                case 3625364:
                    if (name.equals("void")) {
                        return Void.class;
                    }
                    return a2;
                case 64711720:
                    if (name.equals("boolean")) {
                        return Boolean.class;
                    }
                    return a2;
                case 97526364:
                    if (name.equals("float")) {
                        return Float.class;
                    }
                    return a2;
                case 109413500:
                    if (name.equals("short")) {
                        return Short.class;
                    }
                    return a2;
                default:
                    return a2;
            }
        } else {
            h.k.b.g.a("$this$javaObjectType");
            throw null;
        }
    }

    public static int a(ByteBuffer byteBuffer, b0 b0Var) {
        if (b0Var.capacity() != -1) {
            int remaining = byteBuffer.remaining();
            while (byteBuffer.hasRemaining() && b0Var.capacity() > 0) {
                a(byteBuffer, b0Var.tail());
                b0Var.process();
            }
            return remaining - byteBuffer.remaining();
        } else if (!byteBuffer.hasRemaining()) {
            return -1;
        } else {
            throw new IllegalStateException("Destination has reached end of stream: " + b0Var);
        }
    }

    public static int a(PrivateKey privateKey) {
        if (!(privateKey instanceof RSAPrivateKey)) {
            return -1;
        }
        try {
            return ((RSAPrivateKey) privateKey).getModulus().bitLength();
        } catch (Exception unused) {
            return -1;
        }
    }

    /*  JADX ERROR: StackOverflow in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: 
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    public static int a(int r3) {
        /*
        L_0x0000:
            g.b.a.c r0 = g.b.a.d.a
            int r0 = r0.b(r3)
            if (r0 >= 0) goto L_0x0014
            g.a.d.b r1 = g.a.d.b.EINTR
            g.a.d.b r2 = a()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L_0x0000
        L_0x0014:
            if (r0 < 0) goto L_0x0017
            return r0
        L_0x0017:
            r0 = 2
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = 0
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r0[r1] = r3
            r3 = 1
            java.lang.String r1 = b()
            r0[r3] = r1
            java.lang.String r3 = "Error closing fd %d: %s"
            java.lang.String r3 = java.lang.String.format(r3, r0)
            g.b.a.f r0 = new g.b.a.f
            g.a.d.b r1 = a()
            r0.<init>(r3, r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.l.c.a(int):int");
    }

    public static g.a.d.b a() {
        return g.a.d.b.valueOf((long) g.b.a.d.b.a());
    }

    public static X509Certificate a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        Certificate generateCertificate = CertificateFactory.getInstance(SecurityProvider.DEFAULT_CERT_INSTANCE).generateCertificate(new ByteArrayInputStream(bArr));
        if (generateCertificate instanceof X509Certificate) {
            return (X509Certificate) generateCertificate;
        }
        StringBuilder a2 = e.a.a.a.a.a("Not a X.509 certificate: ");
        a2.append(generateCertificate.getType());
        throw new CertificateException(a2.toString());
    }

    public static List<X509Certificate> a(List<e.e.a.v.a> list) {
        X509Certificate x509Certificate;
        if (list == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2) != null) {
                try {
                    x509Certificate = a(list.get(i2).b());
                } catch (CertificateException unused) {
                    x509Certificate = null;
                }
                if (x509Certificate != null) {
                    linkedList.add(x509Certificate);
                } else {
                    throw new ParseException(e.a.a.a.a.a("Invalid X.509 certificate at position ", i2), 0);
                }
            }
        }
        return linkedList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(int r3, java.nio.ByteBuffer r4) {
        /*
            if (r4 == 0) goto L_0x0034
            boolean r0 = r4.isReadOnly()
            if (r0 != 0) goto L_0x002c
        L_0x0008:
            g.b.a.c r0 = g.b.a.d.a
            int r1 = r4.remaining()
            long r1 = (long) r1
            int r0 = r0.b(r3, r4, r1)
            if (r0 >= 0) goto L_0x0021
            g.a.d.b r1 = g.a.d.b.EINTR
            g.a.d.b r2 = a()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L_0x0008
        L_0x0021:
            if (r0 <= 0) goto L_0x002b
            int r3 = r4.position()
            int r3 = r3 + r0
            r4.position(r3)
        L_0x002b:
            return r0
        L_0x002c:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "Read-only buffer"
            r3.<init>(r4)
            throw r3
        L_0x0034:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException
            java.lang.String r4 = "Destination buffer cannot be null"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.l.c.a(int, java.nio.ByteBuffer):int");
    }

    public static e.e.a.a a(d dVar) {
        if (dVar.containsKey("alg")) {
            return new e.e.a.a(d(dVar, "alg"), (r) null);
        }
        return null;
    }

    public static <T> T a(d dVar, String str, Class<T> cls) {
        if (dVar.get(str) == null) {
            return null;
        }
        T t = dVar.get(str);
        if (cls.isAssignableFrom(t.getClass())) {
            return t;
        }
        throw new ParseException(e.a.a.a.a.a("Unexpected type of JSON object member with key \"", str, "\""), 0);
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static void a(k.a.b.a.c.i iVar, x xVar) {
        k.a.b.a.c.c1.l lVar = new k.a.b.a.c.c1.l(xVar);
        for (Object a2 : k.a.b.a.c.c1.l.f1686d) {
            ((k.a.b.a.c.r) iVar).a(a2, (s) lVar);
        }
        xVar.a(lVar);
        k.a.b.a.c.c1.b bVar = new k.a.b.a.c.c1.b(xVar);
        for (Object a3 : k.a.b.a.c.c1.b.f1671d) {
            ((k.a.b.a.c.r) iVar).a(a3, (s) bVar);
        }
        xVar.a(bVar);
        k.a.b.a.c.c1.a aVar = new k.a.b.a.c.c1.a(xVar);
        for (Object a4 : k.a.b.a.c.c1.a.f1669d) {
            ((k.a.b.a.c.r) iVar).a(a4, (s) aVar);
        }
        xVar.a(aVar);
        k kVar = new k(xVar);
        for (Object a5 : k.f1684d) {
            ((k.a.b.a.c.r) iVar).a(a5, (s) kVar);
        }
        xVar.a(kVar);
        m mVar = new m(xVar);
        for (Object a6 : m.f1688d) {
            ((k.a.b.a.c.r) iVar).a(a6, (s) mVar);
        }
        xVar.a(mVar);
        k.a.b.a.c.c1.e eVar = new k.a.b.a.c.c1.e(xVar);
        for (Object a7 : k.a.b.a.c.c1.e.f1677d) {
            ((k.a.b.a.c.r) iVar).a(a7, (s) eVar);
        }
        xVar.a(eVar);
        k.a.b.a.c.c1.d dVar = new k.a.b.a.c.c1.d(xVar);
        for (Object a8 : k.a.b.a.c.c1.d.f1675d) {
            ((k.a.b.a.c.r) iVar).a(a8, (s) dVar);
        }
        xVar.a(dVar);
        k.a.b.a.c.c1.f fVar = new k.a.b.a.c.c1.f(xVar);
        for (Object a9 : k.a.b.a.c.c1.f.f1679d) {
            ((k.a.b.a.c.r) iVar).a(a9, (s) fVar);
        }
        xVar.a(fVar);
        k.a.b.a.c.c1.c cVar = new k.a.b.a.c.c1.c(xVar);
        for (Object a10 : k.a.b.a.c.c1.c.f1673d) {
            ((k.a.b.a.c.r) iVar).a(a10, (s) cVar);
        }
        xVar.a(cVar);
        k.a.b.a.c.c1.g gVar = new k.a.b.a.c.c1.g(xVar);
        for (Object a11 : k.a.b.a.c.c1.g.f1681d) {
            ((k.a.b.a.c.r) iVar).a(a11, (s) gVar);
        }
        xVar.a(gVar);
        k.a.b.a.c.c1.i iVar2 = new k.a.b.a.c.c1.i(xVar);
        for (Object put : k.a.b.a.c.c1.i.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put, iVar2);
        }
        xVar.a(iVar2);
        j jVar = new j(xVar);
        for (Object put2 : j.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put2, jVar);
        }
        xVar.a(jVar);
        h hVar = new h(xVar);
        for (Object put3 : h.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put3, hVar);
        }
        xVar.a(hVar);
        v vVar = new v(xVar);
        for (Object a12 : v.f1830d) {
            ((k.a.b.a.c.r) iVar).a(a12, (s) vVar);
        }
        xVar.a(vVar);
        k.a.b.a.c.z0.a aVar2 = new k.a.b.a.c.z0.a(xVar);
        for (Object a13 : k.a.b.a.c.z0.a.f1796d) {
            ((k.a.b.a.c.r) iVar).a(a13, (s) aVar2);
        }
        xVar.a(aVar2);
        y yVar = new y(xVar);
        for (Object a14 : y.f1836d) {
            ((k.a.b.a.c.r) iVar).a(a14, (s) yVar);
        }
        xVar.a(yVar);
        k.a.b.a.c.z0.j jVar2 = new k.a.b.a.c.z0.j(xVar);
        for (Object a15 : k.a.b.a.c.z0.j.f1822d) {
            ((k.a.b.a.c.r) iVar).a(a15, (s) jVar2);
        }
        xVar.a(jVar2);
        w wVar = new w(xVar);
        for (Object a16 : w.f1832d) {
            ((k.a.b.a.c.r) iVar).a(a16, (s) wVar);
        }
        xVar.a(wVar);
        k.a.b.a.c.z0.d dVar2 = new k.a.b.a.c.z0.d(xVar);
        for (Object a17 : k.a.b.a.c.z0.d.f1808d) {
            ((k.a.b.a.c.r) iVar).a(a17, (s) dVar2);
        }
        xVar.a(dVar2);
        k.a.b.a.c.z0.e eVar2 = new k.a.b.a.c.z0.e(xVar);
        for (Object a18 : k.a.b.a.c.z0.e.f1812d) {
            ((k.a.b.a.c.r) iVar).a(a18, (s) eVar2);
        }
        xVar.a(eVar2);
        k.a.b.a.c.z0.b bVar2 = new k.a.b.a.c.z0.b(xVar);
        for (Object a19 : k.a.b.a.c.z0.b.f1800d) {
            ((k.a.b.a.c.r) iVar).a(a19, (s) bVar2);
        }
        xVar.a(bVar2);
        k.a.b.a.c.z0.c cVar2 = new k.a.b.a.c.z0.c(xVar);
        for (Object a20 : k.a.b.a.c.z0.c.f1804d) {
            ((k.a.b.a.c.r) iVar).a(a20, (s) cVar2);
        }
        xVar.a(cVar2);
        u uVar = new u(xVar);
        for (Object a21 : u.f1828d) {
            ((k.a.b.a.c.r) iVar).a(a21, (s) uVar);
        }
        xVar.a(uVar);
        z zVar = new z(xVar);
        for (Object a22 : z.f1838d) {
            ((k.a.b.a.c.r) iVar).a(a22, (s) zVar);
        }
        xVar.a(zVar);
        k.a.b.a.c.z0.a0 a0Var = new k.a.b.a.c.z0.a0(xVar);
        for (Object a23 : k.a.b.a.c.z0.a0.f1798d) {
            ((k.a.b.a.c.r) iVar).a(a23, (s) a0Var);
        }
        xVar.a(a0Var);
        k.a.b.a.c.z0.b0 b0Var = new k.a.b.a.c.z0.b0(xVar);
        for (Object a24 : k.a.b.a.c.z0.b0.f1802d) {
            ((k.a.b.a.c.r) iVar).a(a24, (s) b0Var);
        }
        xVar.a(b0Var);
        k.a.b.a.c.z0.x xVar2 = new k.a.b.a.c.z0.x(xVar);
        for (Object a25 : k.a.b.a.c.z0.x.f1834d) {
            ((k.a.b.a.c.r) iVar).a(a25, (s) xVar2);
        }
        xVar.a(xVar2);
        c0 c0Var = new c0(xVar);
        for (Object a26 : c0.f1806d) {
            ((k.a.b.a.c.r) iVar).a(a26, (s) c0Var);
        }
        xVar.a(c0Var);
        d0 d0Var = new d0(xVar);
        for (Object a27 : d0.f1810d) {
            ((k.a.b.a.c.r) iVar).a(a27, (s) d0Var);
        }
        xVar.a(d0Var);
        k.a.b.a.c.z0.f fVar2 = new k.a.b.a.c.z0.f(xVar);
        for (Object a28 : k.a.b.a.c.z0.f.f1814d) {
            ((k.a.b.a.c.r) iVar).a(a28, (s) fVar2);
        }
        xVar.a(fVar2);
        k.a.b.a.c.z0.h hVar2 = new k.a.b.a.c.z0.h(xVar);
        for (Object a29 : k.a.b.a.c.z0.h.f1818d) {
            ((k.a.b.a.c.r) iVar).a(a29, (s) hVar2);
        }
        xVar.a(hVar2);
        k.a.b.a.c.z0.i iVar3 = new k.a.b.a.c.z0.i(xVar);
        for (Object a30 : k.a.b.a.c.z0.i.f1820d) {
            ((k.a.b.a.c.r) iVar).a(a30, (s) iVar3);
        }
        xVar.a(iVar3);
        k.a.b.a.c.z0.g gVar2 = new k.a.b.a.c.z0.g(xVar);
        for (Object a31 : k.a.b.a.c.z0.g.f1816d) {
            ((k.a.b.a.c.r) iVar).a(a31, (s) gVar2);
        }
        xVar.a(gVar2);
        k.a.b.a.c.z0.r rVar = new k.a.b.a.c.z0.r(xVar);
        for (Object put4 : k.a.b.a.c.z0.r.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put4, rVar);
        }
        xVar.a(rVar);
        k.a.b.a.c.z0.k kVar2 = new k.a.b.a.c.z0.k(xVar);
        for (Object put5 : k.a.b.a.c.z0.k.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put5, kVar2);
        }
        xVar.a(kVar2);
        k.a.b.a.c.z0.t tVar = new k.a.b.a.c.z0.t(xVar);
        for (Object put6 : k.a.b.a.c.z0.t.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put6, tVar);
        }
        xVar.a(tVar);
        p pVar = new p(xVar);
        for (Object put7 : p.f1826c) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put7, pVar);
        }
        xVar.a(pVar);
        k.a.b.a.c.z0.s sVar = new k.a.b.a.c.z0.s(xVar);
        for (Object put8 : k.a.b.a.c.z0.s.f1827c) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put8, sVar);
        }
        xVar.a(sVar);
        n nVar = new n(xVar);
        for (Object put9 : n.f1825c) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put9, nVar);
        }
        xVar.a(nVar);
        o oVar = new o(xVar);
        for (Object put10 : o.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put10, oVar);
        }
        xVar.a(oVar);
        k.a.b.a.c.z0.l lVar2 = new k.a.b.a.c.z0.l(xVar);
        for (Object put11 : k.a.b.a.c.z0.l.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put11, lVar2);
        }
        xVar.a(lVar2);
        k.a.b.a.c.z0.m mVar2 = new k.a.b.a.c.z0.m(xVar);
        for (Object put12 : k.a.b.a.c.z0.m.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put12, mVar2);
        }
        xVar.a(mVar2);
        k.a.b.a.c.z0.q qVar = new k.a.b.a.c.z0.q(xVar);
        for (Object put13 : k.a.b.a.c.z0.q.b) {
            ((k.a.b.a.c.r) iVar).f1770e.put(put13, qVar);
        }
        xVar.a(qVar);
        k.a.b.a.c.b1.a aVar3 = new k.a.b.a.c.b1.a(xVar);
        for (Object a32 : k.a.b.a.c.b1.a.f1657d) {
            ((k.a.b.a.c.r) iVar).a(a32, (s) aVar3);
        }
        xVar.a(aVar3);
        k.a.b.a.c.b1.b bVar3 = new k.a.b.a.c.b1.b(xVar);
        for (Object a33 : k.a.b.a.c.b1.b.f1659d) {
            ((k.a.b.a.c.r) iVar).a(a33, (s) bVar3);
        }
        xVar.a(bVar3);
        k.a.b.a.c.b1.d dVar3 = new k.a.b.a.c.b1.d(xVar);
        for (Object a34 : k.a.b.a.c.b1.d.f1663d) {
            ((k.a.b.a.c.r) iVar).a(a34, (s) dVar3);
        }
        xVar.a(dVar3);
        k.a.b.a.c.b1.c cVar3 = new k.a.b.a.c.b1.c(xVar);
        for (Object a35 : k.a.b.a.c.b1.c.f1661d) {
            ((k.a.b.a.c.r) iVar).a(a35, (s) cVar3);
        }
        xVar.a(cVar3);
        k.a.b.a.c.b1.e eVar3 = new k.a.b.a.c.b1.e(xVar);
        for (Object a36 : k.a.b.a.c.b1.e.f1665d) {
            ((k.a.b.a.c.r) iVar).a(a36, (s) eVar3);
        }
        xVar.a(eVar3);
        k.a.b.a.c.a1.c cVar4 = new k.a.b.a.c.a1.c(xVar);
        for (Object a37 : k.a.b.a.c.a1.c.f1648d) {
            ((k.a.b.a.c.r) iVar).a(a37, (s) cVar4);
        }
        xVar.a(cVar4);
        k.a.b.a.c.a1.b bVar4 = new k.a.b.a.c.a1.b(xVar);
        for (Object a38 : k.a.b.a.c.a1.b.f1646d) {
            ((k.a.b.a.c.r) iVar).a(a38, (s) bVar4);
        }
        xVar.a(bVar4);
        k.a.b.a.c.a1.a aVar4 = new k.a.b.a.c.a1.a(xVar);
        for (Object a39 : k.a.b.a.c.a1.a.f1644d) {
            ((k.a.b.a.c.r) iVar).a(a39, (s) aVar4);
        }
        xVar.a(aVar4);
        k.a.b.a.c.a1.e eVar4 = new k.a.b.a.c.a1.e(xVar);
        for (Object a40 : k.a.b.a.c.a1.e.f1652d) {
            ((k.a.b.a.c.r) iVar).a(a40, (s) eVar4);
        }
        xVar.a(eVar4);
        k.a.b.a.c.a1.d dVar4 = new k.a.b.a.c.a1.d(xVar);
        for (Object a41 : k.a.b.a.c.a1.d.f1650d) {
            ((k.a.b.a.c.r) iVar).a(a41, (s) dVar4);
        }
        xVar.a(dVar4);
    }

    public static String a(String str) {
        int length = str.length();
        char[] cArr = new char[(length + 3)];
        cArr[0] = 'g';
        cArr[1] = 'e';
        cArr[2] = 't';
        char charAt = str.charAt(0);
        if (charAt >= 'a' && charAt <= 'z') {
            charAt = (char) (charAt - ' ');
        }
        cArr[3] = charAt;
        for (int i2 = 1; i2 < length; i2++) {
            cArr[i2 + 3] = str.charAt(i2);
        }
        return new String(cArr);
    }

    public static i.a.b.a a(d dVar, String str) {
        return (i.a.b.a) a(dVar, str, i.a.b.a.class);
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M a(Iterable<? extends h.c<? extends K, ? extends V>> iterable, M m) {
        if (iterable == null) {
            h.k.b.g.a("$this$toMap");
            throw null;
        } else if (m != null) {
            for (h.c cVar : iterable) {
                m.put(cVar.x, cVar.y);
            }
            return m;
        } else {
            h.k.b.g.a("destination");
            throw null;
        }
    }

    public static void a(k.e.a.s sVar, k.e.a.y yVar) {
        int i2 = yVar.a;
        if (i2 == 12) {
            i2 = 10;
        }
        switch (i2) {
            case 1:
                sVar.b(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
                return;
            case 2:
                sVar.b(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
                return;
            case 3:
                sVar.b(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                return;
            case 4:
                sVar.b(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                return;
            case 5:
                sVar.b(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                return;
            case 6:
                sVar.b(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                return;
            case 7:
                sVar.b(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                return;
            case 8:
                sVar.b(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                return;
            default:
                return;
        }
    }

    public static final <T> int a(T[] tArr, T t) {
        if (tArr != null) {
            int i2 = 0;
            if (t == null) {
                int length = tArr.length;
                while (i2 < length) {
                    if (tArr[i2] == null) {
                        return i2;
                    }
                    i2++;
                }
                return -1;
            }
            int length2 = tArr.length;
            while (i2 < length2) {
                if (h.k.b.g.a((Object) t, (Object) tArr[i2])) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        h.k.b.g.a("$this$indexOf");
        throw null;
    }

    public static String a(String str, String str2, String str3) {
        if (a((CharSequence) str) || a((CharSequence) str2) || str3 == null) {
            return str;
        }
        int i2 = 0;
        int indexOf = str.indexOf(str2, 0);
        if (indexOf == -1) {
            return str;
        }
        int length = str2.length();
        int length2 = str3.length() - length;
        if (length2 < 0) {
            length2 = 0;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length2 * 16));
        int i3 = -1;
        while (indexOf != -1) {
            sb.append(str.substring(i2, indexOf));
            sb.append(str3);
            i2 = indexOf + length;
            i3--;
            if (i3 == 0) {
                break;
            }
            indexOf = str.indexOf(str2, i2);
        }
        sb.append(str.substring(i2));
        return sb.toString();
    }
}
