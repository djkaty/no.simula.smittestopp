package i.a.a;

import e.c.a.a.b.l.c;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class a {
    public Field a;
    public Method b;

    /* renamed from: c  reason: collision with root package name */
    public Method f1391c;

    /* renamed from: d  reason: collision with root package name */
    public int f1392d;

    /* renamed from: e  reason: collision with root package name */
    public Class<?> f1393e;

    /* renamed from: f  reason: collision with root package name */
    public String f1394f;

    public a(Class<?> cls, Field field, i iVar) {
        String str;
        this.f1394f = field.getName();
        int modifiers = field.getModifiers();
        if ((modifiers & 136) <= 0) {
            if ((modifiers & 1) > 0) {
                this.a = field;
            }
            String name = field.getName();
            int length = name.length();
            char[] cArr = new char[(length + 3)];
            cArr[0] = 's';
            cArr[1] = 'e';
            cArr[2] = 't';
            char charAt = name.charAt(0);
            if (charAt >= 'a' && charAt <= 'z') {
                charAt = (char) (charAt - ' ');
            }
            cArr[3] = charAt;
            for (int i2 = 1; i2 < length; i2++) {
                cArr[i2 + 3] = name.charAt(i2);
            }
            String str2 = new String(cArr);
            try {
                this.b = cls.getDeclaredMethod(str2, new Class[]{field.getType()});
            } catch (Exception unused) {
            }
            boolean equals = field.getType().equals(Boolean.TYPE);
            if (equals) {
                String name2 = field.getName();
                int length2 = name2.length();
                char[] cArr2 = new char[(length2 + 2)];
                cArr2[0] = 'i';
                cArr2[1] = 's';
                char charAt2 = name2.charAt(0);
                if (charAt2 >= 'a' && charAt2 <= 'z') {
                    charAt2 = (char) (charAt2 - ' ');
                }
                cArr2[2] = charAt2;
                for (int i3 = 1; i3 < length2; i3++) {
                    cArr2[i3 + 2] = name2.charAt(i3);
                }
                str = new String(cArr2);
            } else {
                str = c.a(field.getName());
            }
            try {
                this.f1391c = cls.getDeclaredMethod(str, new Class[0]);
            } catch (Exception unused2) {
            }
            if (this.f1391c == null && equals) {
                try {
                    this.f1391c = cls.getDeclaredMethod(c.a(field.getName()), new Class[0]);
                } catch (Exception unused3) {
                }
            }
            if (this.a != null || this.f1391c != null || this.b != null) {
                Method method = this.f1391c;
                if (method != null && !iVar.a(field, method)) {
                    this.f1391c = null;
                }
                Method method2 = this.b;
                if (method2 != null && !iVar.a(field, method2)) {
                    this.b = null;
                }
                if (this.f1391c != null || this.b != null || this.a != null) {
                    this.f1393e = field.getType();
                    field.getGenericType();
                }
            }
        }
    }

    public boolean a() {
        return this.b == null;
    }
}
