package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.text.ParseException;
import java.util.Date;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class ServiceStatsHandler extends DefaultHandler {
    public static final String GEO_REPLICATION_NAME = "GeoReplication";
    public static final String LAST_SYNC_TIME_NAME = "LastSyncTime";
    public static final String STATUS_NAME = "Status";
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public final GeoReplicationStats geoReplicationStats = new GeoReplicationStats();
    public final ServiceStats stats = new ServiceStats();

    public static ServiceStats readServiceStatsFromStream(InputStream inputStream) {
        SAXParser sAXParser = Utility.getSAXParser();
        ServiceStatsHandler serviceStatsHandler = new ServiceStatsHandler();
        sAXParser.parse(inputStream, serviceStatsHandler);
        return serviceStatsHandler.stats;
    }

    public void characters(char[] cArr, int i2, int i3) {
        this.bld.append(cArr, i2, i3);
    }

    public void endElement(String str, String str2, String str3) {
        String pop = this.elementStack.pop();
        if (str2.equals(pop)) {
            String sb = this.bld.toString();
            Date date = null;
            if (sb.isEmpty()) {
                sb = null;
            }
            if (GEO_REPLICATION_NAME.equals(pop)) {
                this.stats.setGeoReplication(this.geoReplicationStats);
            } else if (STATUS_NAME.equals(pop)) {
                this.geoReplicationStats.setStatus(GeoReplicationStatus.parse(sb));
            } else if (LAST_SYNC_TIME_NAME.equals(pop)) {
                try {
                    GeoReplicationStats geoReplicationStats2 = this.geoReplicationStats;
                    if (!Utility.isNullOrEmpty(sb)) {
                        date = Utility.parseRFC1123DateFromStringInGMT(sb);
                    }
                    geoReplicationStats2.setLastSyncTime(date);
                } catch (ParseException e2) {
                    throw new SAXException(e2);
                }
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
    }
}
