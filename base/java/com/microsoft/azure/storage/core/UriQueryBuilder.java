package com.microsoft.azure.storage.core;

import com.microsoft.identity.client.internal.MsalUtils;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class UriQueryBuilder {
    public final HashMap<String, ArrayList<String>> parameters = new HashMap<>();

    private void insertKeyValue(String str, String str2) {
        if (str2 != null) {
            str2 = Utility.safeEncode(str2);
        }
        if (!str.startsWith("$")) {
            str = Utility.safeEncode(str);
        }
        ArrayList arrayList = this.parameters.get(str);
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(str2);
            this.parameters.put(str, arrayList2);
        } else if (!arrayList.contains(str2)) {
            arrayList.add(str2);
        }
    }

    public void add(String str, String str2) {
        if (!Utility.isNullOrEmpty(str)) {
            insertKeyValue(str, str2);
            return;
        }
        throw new IllegalArgumentException(SR.QUERY_PARAMETER_NULL_OR_EMPTY);
    }

    public URI addToURI(URI uri) {
        String rawQuery = uri.getRawQuery();
        String rawFragment = uri.getRawFragment();
        String aSCIIString = uri.resolve(uri).toASCIIString();
        Iterator<Map.Entry<String, String[]>> it = PathUtility.parseQueryString(rawQuery).entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry next = it.next();
            for (String insertKeyValue : (String[]) next.getValue()) {
                insertKeyValue((String) next.getKey(), insertKeyValue);
            }
        }
        StringBuilder sb = new StringBuilder();
        if (Utility.isNullOrEmpty(rawQuery) && !Utility.isNullOrEmpty(rawFragment)) {
            sb.append(aSCIIString.substring(0, aSCIIString.indexOf(35)));
        } else if (!Utility.isNullOrEmpty(rawQuery)) {
            sb.append(aSCIIString.substring(0, aSCIIString.indexOf(63)));
        } else {
            sb.append(aSCIIString);
            if (uri.getRawPath().length() <= 0) {
                sb.append("/");
            }
        }
        String uriQueryBuilder = toString();
        if (uriQueryBuilder.length() > 0) {
            sb.append(MsalUtils.QUERY_STRING_SYMBOL);
            sb.append(uriQueryBuilder);
        }
        if (!Utility.isNullOrEmpty(rawFragment)) {
            sb.append("#");
            sb.append(rawFragment);
        }
        return new URI(sb.toString());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Boolean bool = true;
        for (String next : this.parameters.keySet()) {
            if (this.parameters.get(next) != null) {
                Iterator it = this.parameters.get(next).iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (bool.booleanValue()) {
                        bool = false;
                    } else {
                        sb.append("&");
                    }
                    sb.append(String.format("%s=%s", new Object[]{next, str}));
                }
            }
        }
        return sb.toString();
    }
}
