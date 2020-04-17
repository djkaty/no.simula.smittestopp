package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.s;
import e.c.c.u;
import e.c.c.x.a;
import e.c.c.y.b;
import e.c.c.y.c;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class SqlDateTypeAdapter extends TypeAdapter<Date> {
    public static final u b = new u() {
        public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new SqlDateTypeAdapter();
            }
            return null;
        }
    };
    public final DateFormat a = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: a */
    public synchronized void write(c cVar, Date date) {
        cVar.c(date == null ? null : this.a.format(date));
    }

    public synchronized Date read(e.c.c.y.a aVar) {
        if (aVar.r() == b.NULL) {
            aVar.o();
            return null;
        }
        try {
            return new Date(this.a.parse(aVar.p()).getTime());
        } catch (ParseException e2) {
            throw new s((Throwable) e2);
        }
    }
}
