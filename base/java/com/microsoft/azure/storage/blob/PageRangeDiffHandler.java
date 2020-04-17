package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class PageRangeDiffHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public long endOffset;
    public final List<PageRangeDiff> pages = new ArrayList();
    public long startOffset;

    public static List<PageRangeDiff> getPageRangesDiff(InputStream inputStream) {
        SAXParser sAXParser = Utility.getSAXParser();
        PageRangeDiffHandler pageRangeDiffHandler = new PageRangeDiffHandler();
        sAXParser.parse(inputStream, pageRangeDiffHandler);
        return pageRangeDiffHandler.pages;
    }

    public void characters(char[] cArr, int i2, int i3) {
        this.bld.append(cArr, i2, i3);
    }

    public void endElement(String str, String str2, String str3) {
        String pop = this.elementStack.pop();
        if (str2.equals(pop)) {
            String sb = this.bld.toString();
            if (sb.isEmpty()) {
                sb = null;
            }
            if (BlobConstants.CLEAR_RANGE_ELEMENT.equals(pop)) {
                this.pages.add(new PageRangeDiff(this.startOffset, this.endOffset, true));
            } else if (BlobConstants.PAGE_RANGE_ELEMENT.equals(pop)) {
                this.pages.add(new PageRangeDiff(this.startOffset, this.endOffset, false));
            } else if ("Start".equals(pop)) {
                this.startOffset = Long.parseLong(sb);
            } else if (Constants.END_ELEMENT.equals(pop)) {
                this.endOffset = Long.parseLong(sb);
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
