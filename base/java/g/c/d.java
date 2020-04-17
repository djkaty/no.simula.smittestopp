package g.c;

import com.microsoft.appcenter.utils.context.UserIdContext;
import java.util.Locale;
import java.util.regex.Pattern;

public abstract class d {

    /* renamed from: d  reason: collision with root package name */
    public static final Locale f1350d = Locale.ENGLISH;
    public final f a;
    public final b b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1351c;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        /* JADX WARNING: Can't wrap try/catch for region: R(39:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|13|14|15|16|17|(2:19|20)|21|(2:23|24)|25|(2:27|28)|29|(2:31|32)|33|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|54) */
        /* JADX WARNING: Can't wrap try/catch for region: R(41:0|(2:1|2)|3|(2:5|6)|7|9|10|11|13|14|15|16|17|(2:19|20)|21|(2:23|24)|25|27|28|29|(2:31|32)|33|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|54) */
        /* JADX WARNING: Can't wrap try/catch for region: R(43:0|(2:1|2)|3|5|6|7|9|10|11|13|14|15|16|17|(2:19|20)|21|23|24|25|27|28|29|(2:31|32)|33|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|54) */
        /* JADX WARNING: Can't wrap try/catch for region: R(45:0|1|2|3|5|6|7|9|10|11|13|14|15|16|17|19|20|21|23|24|25|27|28|29|(2:31|32)|33|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|54) */
        /* JADX WARNING: Can't wrap try/catch for region: R(46:0|1|2|3|5|6|7|9|10|11|13|14|15|16|17|19|20|21|23|24|25|27|28|29|31|32|33|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|54) */
        /* JADX WARNING: Code restructure failed: missing block: B:55:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0025 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:37:0x0058 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x005e */
        /* JADX WARNING: Missing exception handler attribute for start block: B:41:0x0064 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:43:0x006a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:45:0x0070 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:47:0x0076 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:49:0x007c */
        /* JADX WARNING: Missing exception handler attribute for start block: B:51:0x0082 */
        static {
            /*
                g.c.d$b[] r0 = g.c.d.b.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                b = r0
                r1 = 0
                r2 = 1
                g.c.d$b r3 = g.c.d.b.I386     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r3 = b     // Catch:{ NoSuchFieldError -> 0x0016 }
                g.c.d$b r4 = g.c.d.b.PPC     // Catch:{ NoSuchFieldError -> 0x0016 }
                r3[r0] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r3 = 3
                r4 = 5
                int[] r5 = b     // Catch:{ NoSuchFieldError -> 0x001e }
                g.c.d$b r6 = g.c.d.b.SPARC     // Catch:{ NoSuchFieldError -> 0x001e }
                r5[r4] = r3     // Catch:{ NoSuchFieldError -> 0x001e }
            L_0x001e:
                r5 = 4
                int[] r6 = b     // Catch:{ NoSuchFieldError -> 0x0025 }
                g.c.d$b r7 = g.c.d.b.X86_64     // Catch:{ NoSuchFieldError -> 0x0025 }
                r6[r2] = r5     // Catch:{ NoSuchFieldError -> 0x0025 }
            L_0x0025:
                int[] r6 = b     // Catch:{ NoSuchFieldError -> 0x002b }
                g.c.d$b r7 = g.c.d.b.PPC64     // Catch:{ NoSuchFieldError -> 0x002b }
                r6[r3] = r4     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                r6 = 6
                int[] r7 = b     // Catch:{ NoSuchFieldError -> 0x0032 }
                g.c.d$b r8 = g.c.d.b.PPC64LE     // Catch:{ NoSuchFieldError -> 0x0032 }
                r7[r5] = r6     // Catch:{ NoSuchFieldError -> 0x0032 }
            L_0x0032:
                r7 = 7
                int[] r8 = b     // Catch:{ NoSuchFieldError -> 0x0039 }
                g.c.d$b r9 = g.c.d.b.SPARCV9     // Catch:{ NoSuchFieldError -> 0x0039 }
                r8[r6] = r7     // Catch:{ NoSuchFieldError -> 0x0039 }
            L_0x0039:
                r8 = 8
                int[] r9 = b     // Catch:{ NoSuchFieldError -> 0x0041 }
                g.c.d$b r10 = g.c.d.b.S390X     // Catch:{ NoSuchFieldError -> 0x0041 }
                r9[r7] = r8     // Catch:{ NoSuchFieldError -> 0x0041 }
            L_0x0041:
                r9 = 9
                r10 = 10
                int[] r11 = b     // Catch:{ NoSuchFieldError -> 0x004b }
                g.c.d$b r12 = g.c.d.b.AARCH64     // Catch:{ NoSuchFieldError -> 0x004b }
                r11[r10] = r9     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                g.c.d$f[] r11 = g.c.d.f.values()
                int r11 = r11.length
                int[] r11 = new int[r11]
                a = r11
                g.c.d$f r12 = g.c.d.f.DARWIN     // Catch:{ NoSuchFieldError -> 0x0058 }
                r11[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0058 }
            L_0x0058:
                int[] r1 = a     // Catch:{ NoSuchFieldError -> 0x005e }
                g.c.d$f r11 = g.c.d.f.LINUX     // Catch:{ NoSuchFieldError -> 0x005e }
                r1[r4] = r0     // Catch:{ NoSuchFieldError -> 0x005e }
            L_0x005e:
                int[] r1 = a     // Catch:{ NoSuchFieldError -> 0x0064 }
                g.c.d$f r11 = g.c.d.f.WINDOWS     // Catch:{ NoSuchFieldError -> 0x0064 }
                r1[r7] = r3     // Catch:{ NoSuchFieldError -> 0x0064 }
            L_0x0064:
                int[] r1 = a     // Catch:{ NoSuchFieldError -> 0x006a }
                g.c.d$f r3 = g.c.d.f.UNKNOWN     // Catch:{ NoSuchFieldError -> 0x006a }
                r1[r10] = r5     // Catch:{ NoSuchFieldError -> 0x006a }
            L_0x006a:
                int[] r1 = a     // Catch:{ NoSuchFieldError -> 0x0070 }
                g.c.d$f r3 = g.c.d.f.SOLARIS     // Catch:{ NoSuchFieldError -> 0x0070 }
                r1[r6] = r4     // Catch:{ NoSuchFieldError -> 0x0070 }
            L_0x0070:
                int[] r1 = a     // Catch:{ NoSuchFieldError -> 0x0076 }
                g.c.d$f r3 = g.c.d.f.DRAGONFLY     // Catch:{ NoSuchFieldError -> 0x0076 }
                r1[r5] = r6     // Catch:{ NoSuchFieldError -> 0x0076 }
            L_0x0076:
                int[] r1 = a     // Catch:{ NoSuchFieldError -> 0x007c }
                g.c.d$f r3 = g.c.d.f.FREEBSD     // Catch:{ NoSuchFieldError -> 0x007c }
                r1[r2] = r7     // Catch:{ NoSuchFieldError -> 0x007c }
            L_0x007c:
                int[] r1 = a     // Catch:{ NoSuchFieldError -> 0x0082 }
                g.c.d$f r2 = g.c.d.f.NETBSD     // Catch:{ NoSuchFieldError -> 0x0082 }
                r1[r0] = r8     // Catch:{ NoSuchFieldError -> 0x0082 }
            L_0x0082:
                int[] r0 = a     // Catch:{ NoSuchFieldError -> 0x0088 }
                g.c.d$f r1 = g.c.d.f.AIX     // Catch:{ NoSuchFieldError -> 0x0088 }
                r0[r8] = r9     // Catch:{ NoSuchFieldError -> 0x0088 }
            L_0x0088:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: g.c.d.a.<clinit>():void");
        }
    }

    public enum b {
        I386,
        X86_64,
        PPC,
        PPC64,
        PPC64LE,
        SPARC,
        SPARCV9,
        S390X,
        MIPS32,
        ARM,
        AARCH64,
        UNKNOWN;

        public String toString() {
            return name().toLowerCase(d.f1350d);
        }
    }

    public static final class c extends h {
        public c() {
            super(f.DARWIN);
        }
    }

    /* renamed from: g.c.d$d  reason: collision with other inner class name */
    public static final class C0082d extends h {
        public C0082d(f fVar) {
            super(fVar);
        }
    }

    public static final class e extends h {
        public e() {
            super(f.LINUX);
        }
    }

    public enum f {
        DARWIN,
        FREEBSD,
        NETBSD,
        OPENBSD,
        DRAGONFLY,
        LINUX,
        SOLARIS,
        WINDOWS,
        AIX,
        ZLINUX,
        UNKNOWN;

        public String toString() {
            return name().toLowerCase(d.f1350d);
        }
    }

    public static final class g {
        public static final d a = d.c();
    }

    public static class h extends d {
        public h(f fVar) {
            super(fVar, (a) null);
        }
    }

    public static class i extends d {
        public i(f fVar) {
            super(fVar, (a) null);
        }
    }

    public static class j extends h {
        public j() {
            super(f.WINDOWS);
        }
    }

    public /* synthetic */ d(f fVar, a aVar) {
        b bVar;
        this.a = fVar;
        String property = System.getProperty("os.arch");
        if (!a("x86", property) && !a("i386", property) && !a("i86pc", property) && !a("i686", property)) {
            if (!a("x86_64", property) && !a("amd64", property)) {
                if (!a("ppc", property) && !a("powerpc", property)) {
                    if (!a("ppc64", property) && !a("powerpc64", property)) {
                        if (!a("ppc64le", property) && !a("powerpc64le", property)) {
                            if (!a("s390", property) && !a("s390x", property)) {
                                if (!a("aarch64", property)) {
                                    if (!a("arm", property) && !a("armv7l", property)) {
                                        b[] values = b.values();
                                        int length = values.length;
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 >= length) {
                                                bVar = b.UNKNOWN;
                                                break;
                                            }
                                            b bVar2 = values[i2];
                                            if (a(bVar2.name(), property)) {
                                                bVar = bVar2;
                                                break;
                                            }
                                            i2++;
                                        }
                                    } else {
                                        bVar = b.ARM;
                                    }
                                } else {
                                    bVar = b.AARCH64;
                                }
                            } else {
                                bVar = b.S390X;
                            }
                        } else {
                            bVar = b.PPC64LE;
                        }
                    } else if ("little".equals(System.getProperty("sun.cpu.endian"))) {
                        bVar = b.PPC64LE;
                    } else {
                        bVar = b.PPC64;
                    }
                } else {
                    bVar = b.PPC;
                }
            } else {
                bVar = b.X86_64;
            }
        } else {
            bVar = b.I386;
        }
        this.b = bVar;
        int ordinal = fVar.ordinal();
        Pattern.compile(ordinal != 0 ? ordinal != 7 ? "lib.*\\.so.*$" : ".*\\.dll$" : "lib.*\\.(dylib|jnilib)$");
        b bVar3 = this.b;
        Integer integer = Integer.getInteger("sun.arch.data.model");
        if (integer == null || !(integer.intValue() == 32 || integer.intValue() == 64)) {
            int ordinal2 = bVar3.ordinal();
            if (ordinal2 != 10) {
                switch (ordinal2) {
                    case 0:
                    case 2:
                    case 5:
                        integer = 32;
                        break;
                    case 1:
                    case 3:
                    case 4:
                    case 6:
                    case 7:
                        break;
                    default:
                        throw new ExceptionInInitializerError("Cannot determine cpu address size");
                }
            }
            integer = 64;
        }
        this.f1351c = integer.intValue();
        f fVar2 = f.WINDOWS;
    }

    public static /* synthetic */ d c() {
        f fVar;
        d dVar;
        String property = System.getProperty("jnr.ffi.provider");
        try {
            return (d) Class.forName(property + "$Platform").newInstance();
        } catch (ClassNotFoundException unused) {
            String str = System.getProperty("os.name").split(" ")[0];
            if (b(str, "mac") || b(str, "darwin")) {
                fVar = f.DARWIN;
            } else if (b(str, "linux")) {
                fVar = f.LINUX;
            } else if (b(str, "sunos") || b(str, "solaris")) {
                fVar = f.SOLARIS;
            } else if (b(str, "aix")) {
                fVar = f.AIX;
            } else if (b(str, "openbsd")) {
                fVar = f.OPENBSD;
            } else if (b(str, "freebsd")) {
                fVar = f.FREEBSD;
            } else if (b(str, "dragonfly")) {
                fVar = f.DRAGONFLY;
            } else if (b(str, "windows")) {
                fVar = f.WINDOWS;
            } else {
                fVar = f.UNKNOWN;
            }
            int ordinal = fVar.ordinal();
            if (ordinal == 0) {
                return new c();
            }
            if (ordinal == 5) {
                return new e();
            }
            if (ordinal == 7) {
                return new j();
            }
            if (ordinal != 10) {
                dVar = new C0082d(fVar);
            } else {
                dVar = new i(fVar);
            }
            return dVar;
        } catch (IllegalAccessException e2) {
            throw new ExceptionInInitializerError(e2);
        } catch (InstantiationException e3) {
            throw new ExceptionInInitializerError(e3);
        }
    }

    public static d d() {
        return g.a;
    }

    public String a() {
        int ordinal = this.a.ordinal();
        if (ordinal == 5) {
            return "libc.so.6";
        }
        if (ordinal == 7) {
            return "msvcrt";
        }
        if (ordinal != 8) {
            return UserIdContext.CUSTOM_PREFIX;
        }
        return this.f1351c == 32 ? "libc.a(shr.o)" : "libc.a(shr_64.o)";
    }

    public final boolean b() {
        f fVar = this.a;
        return fVar == f.FREEBSD || fVar == f.OPENBSD || fVar == f.NETBSD || fVar == f.DARWIN || fVar == f.DRAGONFLY;
    }

    public static boolean b(String str, String str2) {
        return str.startsWith(str2) || str.toUpperCase(f1350d).startsWith(str2.toUpperCase(f1350d)) || str.toLowerCase(f1350d).startsWith(str2.toLowerCase(f1350d));
    }

    public static boolean a(String str, String str2) {
        return str.equalsIgnoreCase(str2) || str.toUpperCase(f1350d).equals(str2.toUpperCase(f1350d)) || str.toLowerCase(f1350d).equals(str2.toLowerCase(f1350d));
    }
}
