package com.microsoft.appcenter.ingestion.models.json;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;

public final class JSONDateUtils {
    public static final ThreadLocal<DateFormat> DATE_FORMAT = new ThreadLocal<DateFormat>() {
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    };

    public static void checkNull(Object obj) {
        if (obj == null) {
            throw new JSONException("date cannot be null");
        }
    }

    public static Date toDate(String str) {
        checkNull(str);
        try {
            return DATE_FORMAT.get().parse(str);
        } catch (ParseException e2) {
            throw new JSONException(e2.getMessage());
        }
    }

    public static String toString(Date date) {
        checkNull(date);
        return DATE_FORMAT.get().format(date);
    }
}
