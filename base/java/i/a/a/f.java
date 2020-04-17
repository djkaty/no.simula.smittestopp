package i.a.a;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.TreeMap;

public class f {
    public static TreeMap<String, Integer> a = new TreeMap<>(new a());
    public static TreeMap<String, Integer> b = new TreeMap<>(new a());

    /* renamed from: c  reason: collision with root package name */
    public static HashSet<String> f1403c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    public static TreeMap<String, TimeZone> f1404d = new TreeMap<>();

    public static class a implements Comparator<String> {
        public int compare(Object obj, Object obj2) {
            return ((String) obj).compareToIgnoreCase((String) obj2);
        }
    }

    static {
        f1403c.add("MEZ");
        f1403c.add("Uhr");
        f1403c.add("h");
        f1403c.add("pm");
        f1403c.add("PM");
        f1403c.add("AM");
        f1403c.add("o'clock");
        for (String str : TimeZone.getAvailableIDs()) {
            f1404d.put(str, TimeZone.getTimeZone(str));
        }
        for (Locale locale : DateFormatSymbols.getAvailableLocales()) {
            if (!"ja".equals(locale.getLanguage()) && !"ko".equals(locale.getLanguage()) && !"zh".equals(locale.getLanguage())) {
                DateFormatSymbols instance = DateFormatSymbols.getInstance(locale);
                String[] months = instance.getMonths();
                for (int i2 = 0; i2 < months.length; i2++) {
                    if (months[i2].length() != 0) {
                        a(a, months[i2], Integer.valueOf(i2));
                    }
                }
                String[] shortMonths = instance.getShortMonths();
                for (int i3 = 0; i3 < shortMonths.length; i3++) {
                    String str2 = shortMonths[i3];
                    if (str2.length() != 0 && !Character.isDigit(str2.charAt(str2.length() - 1))) {
                        a(a, shortMonths[i3], Integer.valueOf(i3));
                        a(a, shortMonths[i3].replace(CryptoConstants.ALIAS_SEPARATOR, ""), Integer.valueOf(i3));
                    }
                }
                String[] weekdays = instance.getWeekdays();
                for (int i4 = 0; i4 < weekdays.length; i4++) {
                    String str3 = weekdays[i4];
                    if (str3.length() != 0) {
                        a(b, str3, Integer.valueOf(i4));
                        a(b, str3.replace(CryptoConstants.ALIAS_SEPARATOR, ""), Integer.valueOf(i4));
                    }
                }
                String[] shortWeekdays = instance.getShortWeekdays();
                for (int i5 = 0; i5 < shortWeekdays.length; i5++) {
                    String str4 = shortWeekdays[i5];
                    if (str4.length() != 0) {
                        a(b, str4, Integer.valueOf(i5));
                        a(b, str4.replace(CryptoConstants.ALIAS_SEPARATOR, ""), Integer.valueOf(i5));
                    }
                }
            }
        }
    }

    public static void a(TreeMap<String, Integer> treeMap, String str, Integer num) {
        treeMap.put(str, num);
        treeMap.put(str.replace("é", "e").replace("û", DevicePopManager.SignedHttpRequestJwtClaims.HTTP_HOST), num);
    }

    public static Integer b(String str) {
        if (Character.isDigit(str.charAt(0))) {
            return Integer.valueOf(Integer.parseInt(str) - 1);
        }
        Integer num = a.get(str);
        if (num != null) {
            return Integer.valueOf(num.intValue());
        }
        throw new NullPointerException("can not parse " + str + " as month");
    }

    public static Date a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        if (obj instanceof Number) {
            return new Date(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            StringTokenizer stringTokenizer = new StringTokenizer((String) obj, " -/:,.+");
            if (!stringTokenizer.hasMoreTokens()) {
                return null;
            }
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.length() != 4 || !Character.isDigit(nextToken.charAt(0))) {
                if (b.containsKey(nextToken)) {
                    if (!stringTokenizer.hasMoreTokens()) {
                        return null;
                    }
                    nextToken = stringTokenizer.nextToken();
                }
                if (a.containsKey(nextToken)) {
                    GregorianCalendar gregorianCalendar = new GregorianCalendar(2000, 0, 0, 0, 0, 0);
                    Integer num = a.get(nextToken);
                    if (num != null) {
                        gregorianCalendar.set(2, num.intValue());
                        if (!stringTokenizer.hasMoreTokens()) {
                            return null;
                        }
                        gregorianCalendar.set(5, Integer.parseInt(stringTokenizer.nextToken()));
                        if (!stringTokenizer.hasMoreTokens()) {
                            return null;
                        }
                        String nextToken2 = stringTokenizer.nextToken();
                        if (Character.isLetter(nextToken2.charAt(0))) {
                            if (!stringTokenizer.hasMoreTokens()) {
                                return null;
                            }
                            nextToken2 = stringTokenizer.nextToken();
                        }
                        if (nextToken2.length() == 4) {
                            gregorianCalendar.set(1, a(nextToken2));
                        } else if (nextToken2.length() == 2) {
                            return b(stringTokenizer, gregorianCalendar, nextToken2);
                        }
                        return a(stringTokenizer, (Calendar) gregorianCalendar, (String) null);
                    }
                    throw new NullPointerException("can not parse " + nextToken + " as month");
                } else if (!Character.isDigit(nextToken.charAt(0))) {
                    return null;
                } else {
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar(2000, 0, 0, 0, 0, 0);
                    gregorianCalendar2.set(5, Integer.parseInt(nextToken));
                    if (!stringTokenizer.hasMoreTokens()) {
                        return null;
                    }
                    gregorianCalendar2.set(2, b(stringTokenizer.nextToken()).intValue());
                    if (!stringTokenizer.hasMoreTokens()) {
                        return null;
                    }
                    gregorianCalendar2.set(1, a(stringTokenizer.nextToken()));
                    return a(stringTokenizer, (Calendar) gregorianCalendar2, (String) null);
                }
            } else {
                GregorianCalendar gregorianCalendar3 = new GregorianCalendar(2000, 0, 0, 0, 0, 0);
                gregorianCalendar3.setTimeInMillis(0);
                gregorianCalendar3.set(1, Integer.parseInt(nextToken));
                if (!stringTokenizer.hasMoreTokens()) {
                    return gregorianCalendar3.getTime();
                }
                gregorianCalendar3.set(2, b(stringTokenizer.nextToken()).intValue());
                if (!stringTokenizer.hasMoreTokens()) {
                    return gregorianCalendar3.getTime();
                }
                String nextToken3 = stringTokenizer.nextToken();
                if (!Character.isDigit(nextToken3.charAt(0))) {
                    return gregorianCalendar3.getTime();
                }
                if (nextToken3.length() == 5 && nextToken3.charAt(2) == 'T') {
                    gregorianCalendar3.set(5, Integer.parseInt(nextToken3.substring(0, 2)));
                    return a(stringTokenizer, (Calendar) gregorianCalendar3, nextToken3.substring(3));
                }
                gregorianCalendar3.set(5, Integer.parseInt(nextToken3));
                return a(stringTokenizer, (Calendar) gregorianCalendar3, (String) null);
            }
        } else {
            throw new RuntimeException("Primitive: Can not convert " + obj.getClass().getName() + " to int");
        }
    }

    public static Date b(StringTokenizer stringTokenizer, Calendar calendar, String str) {
        calendar.set(11, Integer.parseInt(str));
        if (!stringTokenizer.hasMoreTokens()) {
            return calendar.getTime();
        }
        String a2 = a(stringTokenizer, stringTokenizer.nextToken(), calendar);
        if (a2 == null) {
            return calendar.getTime();
        }
        calendar.set(12, Integer.parseInt(a2));
        if (!stringTokenizer.hasMoreTokens()) {
            return calendar.getTime();
        }
        String a3 = a(stringTokenizer, stringTokenizer.nextToken(), calendar);
        if (a3 == null) {
            return calendar.getTime();
        }
        calendar.set(13, Integer.parseInt(a3));
        if (!stringTokenizer.hasMoreTokens()) {
            return calendar.getTime();
        }
        String a4 = a(stringTokenizer, stringTokenizer.nextToken(), calendar);
        if (a4 == null) {
            return calendar.getTime();
        }
        String a5 = a(stringTokenizer, a4, calendar);
        if (a5.length() == 4 && Character.isDigit(a5.charAt(0))) {
            calendar.set(1, a(a5));
        }
        return calendar.getTime();
    }

    public static int a(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt < 100) {
            return parseInt > 23 ? parseInt + 2000 : parseInt + 1900;
        }
        return parseInt;
    }

    public static Date a(StringTokenizer stringTokenizer, Calendar calendar, String str) {
        if (str == null) {
            if (!stringTokenizer.hasMoreTokens()) {
                return calendar.getTime();
            }
            str = stringTokenizer.nextToken();
        }
        return b(stringTokenizer, calendar, str);
    }

    public static String a(StringTokenizer stringTokenizer, String str, Calendar calendar) {
        while (true) {
            TimeZone timeZone = f1404d.get(str);
            if (timeZone != null) {
                calendar.setTimeZone(timeZone);
                if (!stringTokenizer.hasMoreTokens()) {
                    return null;
                }
                str = stringTokenizer.nextToken();
            } else if (!f1403c.contains(str)) {
                return str;
            } else {
                if (str.equalsIgnoreCase("pm")) {
                    calendar.add(9, 1);
                }
                if (str.equalsIgnoreCase("am")) {
                    calendar.add(9, 0);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return null;
                }
                str = stringTokenizer.nextToken();
            }
        }
    }
}
