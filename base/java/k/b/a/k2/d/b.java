package k.b.a.k2.d;

import com.microsoft.appcenter.utils.context.UserIdContext;
import com.microsoft.azure.storage.Constants;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import e.a.a.a.a;
import java.util.Hashtable;
import k.b.a.i2.e;
import k.b.a.l2.x;
import k.b.a.o;

public class b extends a {
    public static final o A = x.a;
    public static final o B = x.b;
    public static final o C = x.f1992c;
    public static final o D = e.f1977h;
    public static final o E = e.f1978i;
    public static final o F = e.f1980k;
    public static final o G = D;
    public static final o H = new o("0.9.2342.19200300.100.1.25");
    public static final o I = new o("0.9.2342.19200300.100.1.1");
    public static final Hashtable J = new Hashtable();
    public static final Hashtable K = new Hashtable();
    public static final a L = new b();
    public static final o b = a.b("2.5.4.6");

    /* renamed from: c  reason: collision with root package name */
    public static final o f1982c = a.b("2.5.4.10");

    /* renamed from: d  reason: collision with root package name */
    public static final o f1983d = a.b("2.5.4.11");

    /* renamed from: e  reason: collision with root package name */
    public static final o f1984e = a.b("2.5.4.12");

    /* renamed from: f  reason: collision with root package name */
    public static final o f1985f = a.b("2.5.4.3");

    /* renamed from: g  reason: collision with root package name */
    public static final o f1986g = new o("2.5.4.9").k();

    /* renamed from: h  reason: collision with root package name */
    public static final o f1987h = a.b("2.5.4.5");

    /* renamed from: i  reason: collision with root package name */
    public static final o f1988i = a.b("2.5.4.7");

    /* renamed from: j  reason: collision with root package name */
    public static final o f1989j = a.b("2.5.4.8");

    /* renamed from: k  reason: collision with root package name */
    public static final o f1990k = a.b("2.5.4.4");

    /* renamed from: l  reason: collision with root package name */
    public static final o f1991l = a.b("2.5.4.42");
    public static final o m = a.b("2.5.4.43");
    public static final o n = a.b("2.5.4.44");
    public static final o o = a.b("2.5.4.45");
    public static final o p = a.b("2.5.4.15");
    public static final o q = a.b("2.5.4.17");
    public static final o r = a.b("2.5.4.46");
    public static final o s = a.b("2.5.4.65");
    public static final o t = a.b("1.3.6.1.5.5.7.9.1");
    public static final o u = a.b("1.3.6.1.5.5.7.9.2");
    public static final o v = a.b("1.3.6.1.5.5.7.9.3");
    public static final o w = a.b("1.3.6.1.5.5.7.9.4");
    public static final o x = a.b("1.3.6.1.5.5.7.9.5");
    public static final o y = a.b("1.3.36.8.3.14");
    public static final o z = a.b("2.5.4.16");
    public final Hashtable a = a.a(J);

    static {
        new o("2.5.4.5").k();
        new o("2.5.4.54").k();
        J.put(b, "C");
        J.put(f1982c, "O");
        J.put(f1984e, "T");
        J.put(f1983d, "OU");
        J.put(f1985f, "CN");
        J.put(f1988i, "L");
        J.put(f1989j, "ST");
        J.put(f1987h, "SERIALNUMBER");
        J.put(D, "E");
        J.put(H, "DC");
        J.put(I, "UID");
        J.put(f1986g, "STREET");
        J.put(f1990k, "SURNAME");
        J.put(f1991l, "GIVENNAME");
        J.put(m, "INITIALS");
        J.put(n, "GENERATION");
        J.put(F, "unstructuredAddress");
        J.put(E, "unstructuredName");
        J.put(o, "UniqueIdentifier");
        J.put(r, "DN");
        J.put(s, "Pseudonym");
        J.put(z, "PostalAddress");
        J.put(y, "NameAtBirth");
        J.put(w, "CountryOfCitizenship");
        J.put(x, "CountryOfResidence");
        J.put(v, "Gender");
        J.put(u, "PlaceOfBirth");
        J.put(t, "DateOfBirth");
        J.put(q, "PostalCode");
        J.put(p, "BusinessCategory");
        J.put(A, "TelephoneNumber");
        J.put(B, Constants.NAME_ELEMENT);
        J.put(C, "organizationIdentifier");
        K.put(UserIdContext.CUSTOM_PREFIX, b);
        K.put("o", f1982c);
        K.put("t", f1984e);
        K.put("ou", f1983d);
        K.put("cn", f1985f);
        K.put("l", f1988i);
        K.put(Constants.QueryConstants.SIGNED_START, f1989j);
        K.put("sn", f1990k);
        K.put("serialnumber", f1987h);
        K.put("street", f1986g);
        K.put("emailaddress", G);
        K.put(AzureActiveDirectorySlice.DC_PARAMETER, H);
        K.put("e", G);
        K.put("uid", I);
        K.put("surname", f1990k);
        K.put("givenname", f1991l);
        K.put("initials", m);
        K.put("generation", n);
        K.put("unstructuredaddress", F);
        K.put("unstructuredname", E);
        K.put("uniqueidentifier", o);
        K.put("dn", r);
        K.put("pseudonym", s);
        K.put("postaladdress", z);
        K.put("nameatbirth", y);
        K.put("countryofcitizenship", w);
        K.put("countryofresidence", x);
        K.put(IDToken.GENDER, v);
        K.put("placeofbirth", u);
        K.put("dateofbirth", t);
        K.put("postalcode", q);
        K.put("businesscategory", p);
        K.put("telephonenumber", A);
        K.put("name", B);
        K.put("organizationidentifier", C);
    }

    public b() {
        a.a(K);
    }
}
