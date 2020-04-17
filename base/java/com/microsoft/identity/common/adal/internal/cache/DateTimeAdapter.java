package com.microsoft.identity.common.adal.internal.cache;

import android.util.Log;
import com.microsoft.azure.storage.core.Utility;
import e.c.c.h;
import e.c.c.i;
import e.c.c.j;
import e.c.c.n;
import e.c.c.p;
import e.c.c.q;
import e.c.c.r;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class DateTimeAdapter implements i<Date>, r<Date> {
    public static final String TAG = "DateTimeAdapter";
    public final DateFormat mEnUs24HourFormat = buildEnUs24HourDateFormat();
    public final DateFormat mEnUsFormat = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    public final DateFormat mISO8601Format = buildIso8601Format();
    public final DateFormat mLocal24HourFormat = buildLocal24HourDateFormat();
    public final DateFormat mLocalFormat = DateFormat.getDateTimeInstance(2, 2);

    public static DateFormat buildEnUs24HourDateFormat() {
        return new SimpleDateFormat("MMM dd, yyyy HH:mm:ss", Locale.US);
    }

    public static DateFormat buildIso8601Format() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Utility.ISO8601_PATTERN, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    public static DateFormat buildLocal24HourDateFormat() {
        return new SimpleDateFormat("MMM dd, yyyy HH:mm:ss", Locale.getDefault());
    }

    public synchronized Date deserialize(j jVar, Type type, h hVar) {
        String f2;
        f2 = jVar.f();
        try {
        } catch (ParseException e2) {
            Log.e(TAG, "Could not parse date: " + e2.getMessage(), e2);
            throw new n("Could not parse date: " + f2);
        } catch (ParseException unused) {
            Log.v(TAG, "Cannot parse with ISO8601, try again with local format.");
            try {
                return this.mLocalFormat.parse(f2);
            } catch (ParseException unused2) {
                Log.v(TAG, "Cannot parse with local format, try again with local 24 hour format.");
                try {
                    return this.mLocal24HourFormat.parse(f2);
                } catch (ParseException unused3) {
                    Log.v(TAG, "Cannot parse with local 24 hour format, try again with en us format.");
                    try {
                        return this.mEnUsFormat.parse(f2);
                    } catch (ParseException unused4) {
                        Log.v(TAG, "Cannot parse with en us format, try again with en us 24 hour format.");
                        return this.mEnUs24HourFormat.parse(f2);
                    }
                }
            }
        }
        return this.mISO8601Format.parse(f2);
    }

    public synchronized j serialize(Date date, Type type, q qVar) {
        return new p(this.mISO8601Format.format(date));
    }
}
