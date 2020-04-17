package k.b.g;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import k.b.a.l2.s;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;
import k.b.a.x;
import k.b.a.y0;

public class e extends k.b.j.h.b.d {
    public final Map x;

    public class b implements d {
        public /* synthetic */ b(a aVar) {
        }

        public c a(byte[] bArr) {
            try {
                u a2 = u.a((Object) bArr);
                if (a2.size() == 6) {
                    k.b.a.l a3 = k.b.a.l.a((Object) a2.a(1));
                    k.b.a.l a4 = k.b.a.l.a((Object) a2.a(2));
                    k.b.a.l a5 = k.b.a.l.a((Object) a2.a(3));
                    return new c(new s(new k.b.a.l2.a(k.b.a.m2.f.r, new k.b.a.l2.h(a3.j(), a4.j(), a5.j())), (k.b.a.e) k.b.a.l.a((Object) a2.a(4))), new k.b.a.i2.f(new k.b.a.l2.a(k.b.a.m2.f.r, new k.b.a.l2.h(a3.j(), a4.j(), a5.j())), k.b.a.l.a((Object) a2.a(5)), (x) null, (byte[]) null));
                }
                throw new b("malformed sequence in DSA private key");
            } catch (IOException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new b(e.a.a.a.a.a(e3, e.a.a.a.a.a("problem creating DSA private key: ")), e3);
            }
        }
    }

    public class c implements k.b.j.h.b.c {
        public /* synthetic */ c(a aVar) {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                t a2 = t.a(bVar.f2182c);
                if (a2 instanceof k.b.a.o) {
                    return t.a(bVar.f2182c);
                }
                if (a2 instanceof u) {
                    return k.b.a.m2.b.a(a2);
                }
                return null;
            } catch (IOException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new b(e.a.a.a.a.a(e3, e.a.a.a.a.a("exception extracting EC named curve: ")));
            }
        }
    }

    public class d implements d {
        public /* synthetic */ d(a aVar) {
        }

        public c a(byte[] bArr) {
            try {
                u a2 = u.a((Object) bArr);
                k.b.a.j2.a aVar = a2 instanceof k.b.a.j2.a ? (k.b.a.j2.a) a2 : a2 != null ? new k.b.a.j2.a(u.a((Object) a2)) : null;
                k.b.a.l2.a aVar2 = new k.b.a.l2.a(k.b.a.m2.f.m, aVar.a(0));
                k.b.a.i2.f fVar = new k.b.a.i2.f(aVar2, aVar, (x) null, (byte[]) null);
                return ((r0) aVar.a(1)) != null ? new c(new s(aVar2, ((r0) aVar.a(1)).j()), fVar) : new c((s) null, fVar);
            } catch (IOException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new b(e.a.a.a.a.a(e3, e.a.a.a.a.a("problem creating EC private key: ")), e3);
            }
        }
    }

    /* renamed from: k.b.g.e$e  reason: collision with other inner class name */
    public class C0103e implements k.b.j.h.b.c {
        public C0103e() {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                byte[] bArr = bVar.f2182c;
                return new k.b.h.b(bArr instanceof k.b.a.i2.d ? (k.b.a.i2.d) bArr : bArr != null ? new k.b.a.i2.d(u.a((Object) bArr)) : null);
            } catch (Exception e2) {
                throw new b(e.a.a.a.a.a(e2, e.a.a.a.a.a("problem parsing ENCRYPTED PRIVATE KEY: ")), e2);
            }
        }
    }

    public class f implements k.b.j.h.b.c {
        public final d a;

        public f(d dVar) {
            this.a = dVar;
        }

        public Object a(k.b.j.h.b.b bVar) {
            boolean z = false;
            String str = null;
            for (k.b.j.h.b.a aVar : bVar.b) {
                if (aVar.a.equals("Proc-Type") && aVar.b.equals("4,ENCRYPTED")) {
                    z = true;
                } else if (aVar.a.equals("DEK-Info")) {
                    str = aVar.b;
                }
            }
            byte[] bArr = bVar.f2182c;
            if (!z) {
                return this.a.a(bArr);
            }
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
                return new a(stringTokenizer.nextToken(), k.b.j.g.f.a(stringTokenizer.nextToken()), bArr, this.a);
            } catch (IOException e2) {
                if (z) {
                    throw new b("exception decoding - please check password and data.", e2);
                }
                throw new b(e2.getMessage(), e2);
            } catch (IllegalArgumentException e3) {
                if (z) {
                    throw new b("exception decoding - please check password and data.", e3);
                }
                throw new b(e3.getMessage(), e3);
            }
        }
    }

    public class g implements k.b.j.h.b.c {
        public /* synthetic */ g(a aVar) {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                return new k.b.h.a(bVar.f2182c);
            } catch (Exception e2) {
                throw new b(e.a.a.a.a.a(e2, e.a.a.a.a.a("problem parsing certrequest: ")), e2);
            }
        }
    }

    public class h implements k.b.j.h.b.c {
        public /* synthetic */ h(a aVar) {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                t readObject = new k.b.a.k(bVar.f2182c).readObject();
                if (readObject instanceof k.b.a.f2.a) {
                    return (k.b.a.f2.a) readObject;
                }
                if (readObject != null) {
                    return new k.b.a.f2.a(u.a((Object) readObject));
                }
                return null;
            } catch (Exception e2) {
                throw new b(e.a.a.a.a.a(e2, e.a.a.a.a.a("problem parsing PKCS7 object: ")), e2);
            }
        }
    }

    public class i implements k.b.j.h.b.c {
        public i() {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                return k.b.a.i2.f.a(bVar.f2182c);
            } catch (Exception e2) {
                throw new b(e.a.a.a.a.a(e2, e.a.a.a.a.a("problem parsing PRIVATE KEY: ")), e2);
            }
        }
    }

    public class j implements k.b.j.h.b.c {
        public j() {
        }

        public Object a(k.b.j.h.b.b bVar) {
            return s.a(bVar.f2182c);
        }
    }

    public class k implements d {
        public /* synthetic */ k(a aVar) {
        }

        public c a(byte[] bArr) {
            try {
                u a2 = u.a((Object) bArr);
                if (a2.size() == 9) {
                    k.b.a.i2.g gVar = a2 instanceof k.b.a.i2.g ? (k.b.a.i2.g) a2 : new k.b.a.i2.g(u.a((Object) a2));
                    k.b.a.i2.h hVar = new k.b.a.i2.h(gVar.y, gVar.z);
                    k.b.a.l2.a aVar = new k.b.a.l2.a(k.b.a.i2.e.b, y0.x);
                    return new c(new s(aVar, (k.b.a.e) hVar), new k.b.a.i2.f(aVar, gVar, (x) null, (byte[]) null));
                }
                throw new b("malformed sequence in RSA private key");
            } catch (IOException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new b(e.a.a.a.a.a(e3, e.a.a.a.a.a("problem creating RSA private key: ")), e3);
            }
        }
    }

    public class l implements k.b.j.h.b.c {
        public l() {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                byte[] bArr = bVar.f2182c;
                return new s(new k.b.a.l2.a(k.b.a.i2.e.b, y0.x), (k.b.a.e) bArr instanceof k.b.a.i2.h ? (k.b.a.i2.h) bArr : bArr != null ? new k.b.a.i2.h(u.a((Object) bArr)) : null);
            } catch (IOException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new b(e.a.a.a.a.a(e3, e.a.a.a.a.a("problem extracting key: ")), e3);
            }
        }
    }

    public class m implements k.b.j.h.b.c {
        public /* synthetic */ m(a aVar) {
        }

        public Object a(k.b.j.h.b.b bVar) {
            return new k.b.b.c(bVar.f2182c);
        }
    }

    public class n implements k.b.j.h.b.c {
        public /* synthetic */ n(a aVar) {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                return new k.b.b.d(bVar.f2182c);
            } catch (Exception e2) {
                throw new b(e.a.a.a.a.a(e2, e.a.a.a.a.a("problem parsing cert: ")), e2);
            }
        }
    }

    public class o implements k.b.j.h.b.c {
        public /* synthetic */ o(a aVar) {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                return new k.b.b.e(bVar.f2182c);
            } catch (Exception e2) {
                throw new b(e.a.a.a.a.a(e2, e.a.a.a.a.a("problem parsing cert: ")), e2);
            }
        }
    }

    public class p implements k.b.j.h.b.c {
        public /* synthetic */ p(a aVar) {
        }

        public Object a(k.b.j.h.b.b bVar) {
            try {
                return new f(bVar.f2182c);
            } catch (Exception e2) {
                throw new b(e.a.a.a.a.a(e2, e.a.a.a.a.a("problem parsing cert: ")), e2);
            }
        }
    }

    public e(Reader reader) {
        super(reader);
        HashMap hashMap = new HashMap();
        this.x = hashMap;
        hashMap.put("CERTIFICATE REQUEST", new g((a) null));
        this.x.put("NEW CERTIFICATE REQUEST", new g((a) null));
        this.x.put("CERTIFICATE", new o((a) null));
        this.x.put("TRUSTED CERTIFICATE", new p((a) null));
        this.x.put("X509 CERTIFICATE", new o((a) null));
        this.x.put("X509 CRL", new n((a) null));
        this.x.put("PKCS7", new h((a) null));
        this.x.put("CMS", new h((a) null));
        this.x.put("ATTRIBUTE CERTIFICATE", new m((a) null));
        this.x.put("EC PARAMETERS", new c((a) null));
        this.x.put("PUBLIC KEY", new j());
        this.x.put("RSA PUBLIC KEY", new l());
        this.x.put("RSA PRIVATE KEY", new f(new k((a) null)));
        this.x.put("DSA PRIVATE KEY", new f(new b((a) null)));
        this.x.put("EC PRIVATE KEY", new f(new d((a) null)));
        this.x.put("ENCRYPTED PRIVATE KEY", new C0103e());
        this.x.put("PRIVATE KEY", new i());
    }

    public Object readObject() {
        k.b.j.h.b.b a2 = a();
        if (a2 == null) {
            return null;
        }
        String str = a2.a;
        if (this.x.containsKey(str)) {
            return ((k.b.j.h.b.c) this.x.get(str)).a(a2);
        }
        throw new IOException(e.a.a.a.a.b("unrecognised object: ", str));
    }
}
