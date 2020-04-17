package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class ShareStatsHandler extends DefaultHandler {
    public static final String USAGE_NAME = "ShareUsage";
    public StringBuilder builder = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public final ShareStats stats = new ShareStats();

    public static ShareStats readShareStatsFromStream(InputStream inputStream) {
        SAXParser sAXParser = Utility.getSAXParser();
        ShareStatsHandler shareStatsHandler = new ShareStatsHandler();
        sAXParser.parse(inputStream, shareStatsHandler);
        return shareStatsHandler.stats;
    }

    public void characters(char[] cArr, int i2, int i3) {
        this.builder.append(cArr, i2, i3);
    }

    public void endElement(String str, String str2, String str3) {
        String pop = this.elementStack.pop();
        if (str2.equals(pop)) {
            if (USAGE_NAME.equals(pop)) {
                this.stats.setUsage(Integer.parseInt(this.builder.toString()));
            }
            this.builder = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
    }
}
