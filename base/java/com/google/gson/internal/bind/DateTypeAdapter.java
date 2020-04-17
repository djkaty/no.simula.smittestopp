package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.a.a.b.l.c;
import e.c.c.s;
import e.c.c.u;
import e.c.c.w.o;
import e.c.c.x.a;
import e.c.c.y.b;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public final class DateTypeAdapter extends TypeAdapter<Date> {
    public static final u b = new u() {
        public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new DateTypeAdapter();
            }
            return null;
        }
    };
    public final List<DateFormat> a;

    public DateTypeAdapter() {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.a.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (o.a >= 9) {
            this.a.add(c.a(2, 2));
        }
    }

    public final synchronized Date a(String str) {
        for (DateFormat parse : this.a) {
            try {
                return parse.parse(str);
            } catch (ParseException unused) {
            }
        }
        try {
            return e.c.c.w.z.d.a.a(str, new ParsePosition(0));
        } catch (ParseException e2) {
            throw new s(str, e2);
        }
    }

    public Object read(e.c.c.y.a aVar) {
        if (aVar.r() != b.NULL) {
            return a(aVar.p());
        }
        aVar.o();
        return null;
    }

    /* renamed from: a */
    public synchronized void write(e.c.c.y.c cVar, Date date) {
        if (date == null) {
            cVar.g();
        } else {
            cVar.c(this.a.get(0).format(date));
        }
    }
}
