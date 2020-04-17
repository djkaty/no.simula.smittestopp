package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class FileRangeHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public long endOffset;
    public final ArrayList<FileRange> fileRanges = new ArrayList<>();
    public long startOffset;

    public static ArrayList<FileRange> getFileRanges(InputStream inputStream) {
        SAXParser sAXParser = Utility.getSAXParser();
        FileRangeHandler fileRangeHandler = new FileRangeHandler();
        sAXParser.parse(inputStream, fileRangeHandler);
        return fileRangeHandler.fileRanges;
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
            if ("Range".equals(pop)) {
                this.fileRanges.add(new FileRange(this.startOffset, this.endOffset));
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
