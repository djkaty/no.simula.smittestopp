package com.google.gson;

import e.c.a.a.b.l.c;
import e.c.c.s;
import e.c.c.w.o;
import e.c.c.y.a;
import e.c.c.y.b;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public final class DefaultDateTypeAdapter extends TypeAdapter<Date> {
    public final Class<? extends Date> a;
    public final List<DateFormat> b = new ArrayList();

    public DefaultDateTypeAdapter(Class<? extends Date> cls, int i2, int i3) {
        a(cls);
        this.a = cls;
        this.b.add(DateFormat.getDateTimeInstance(i2, i3, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.b.add(DateFormat.getDateTimeInstance(i2, i3));
        }
        if (o.a >= 9) {
            this.b.add(c.a(i2, i3));
        }
    }

    public static Class<? extends Date> a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    public Object read(a aVar) {
        Object date;
        if (aVar.r() == b.NULL) {
            aVar.o();
            return null;
        }
        Date a2 = a(aVar.p());
        Class<? extends Date> cls = this.a;
        if (cls == Date.class) {
            return a2;
        }
        if (cls == Timestamp.class) {
            date = new Timestamp(a2.getTime());
        } else if (cls == java.sql.Date.class) {
            date = new java.sql.Date(a2.getTime());
        } else {
            throw new AssertionError();
        }
        return date;
    }

    public String toString() {
        DateFormat dateFormat = this.b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            StringBuilder a2 = e.a.a.a.a.a("DefaultDateTypeAdapter(");
            a2.append(((SimpleDateFormat) dateFormat).toPattern());
            a2.append(')');
            return a2.toString();
        }
        StringBuilder a3 = e.a.a.a.a.a("DefaultDateTypeAdapter(");
        a3.append(dateFormat.getClass().getSimpleName());
        a3.append(')');
        return a3.toString();
    }

    /* renamed from: a */
    public void write(e.c.c.y.c cVar, Date date) {
        if (date == null) {
            cVar.g();
            return;
        }
        synchronized (this.b) {
            cVar.c(this.b.get(0).format(date));
        }
    }

    public final Date a(String str) {
        synchronized (this.b) {
            for (DateFormat parse : this.b) {
                try {
                    Date parse2 = parse.parse(str);
                    return parse2;
                } catch (ParseException unused) {
                }
            }
            try {
                Date a2 = e.c.c.w.z.d.a.a(str, new ParsePosition(0));
                return a2;
            } catch (ParseException e2) {
                throw new s(str, e2);
            }
        }
    }
}
