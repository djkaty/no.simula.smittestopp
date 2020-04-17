package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.s;
import e.c.c.u;
import e.c.c.x.a;
import e.c.c.y.b;
import e.c.c.y.c;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class TimeTypeAdapter extends TypeAdapter<Time> {
    public static final u b = new u() {
        public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
            if (aVar.getRawType() == Time.class) {
                return new TimeTypeAdapter();
            }
            return null;
        }
    };
    public final DateFormat a = new SimpleDateFormat("hh:mm:ss a");

    /* renamed from: a */
    public synchronized void write(c cVar, Time time) {
        cVar.c(time == null ? null : this.a.format(time));
    }

    public synchronized Time read(e.c.c.y.a aVar) {
        if (aVar.r() == b.NULL) {
            aVar.o();
            return null;
        }
        try {
            return new Time(this.a.parse(aVar.p()).getTime());
        } catch (ParseException e2) {
            throw new s((Throwable) e2);
        }
    }
}
