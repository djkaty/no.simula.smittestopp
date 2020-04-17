package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import java.io.InputStream;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class StorageErrorHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public final StorageExtendedErrorInformation errorInfo = new StorageExtendedErrorInformation();

    public static StorageExtendedErrorInformation getExtendedErrorInformation(InputStream inputStream) {
        SAXParser sAXParser = Utility.getSAXParser();
        StorageErrorHandler storageErrorHandler = new StorageErrorHandler();
        sAXParser.parse(inputStream, storageErrorHandler);
        return storageErrorHandler.errorInfo;
    }

    public void characters(char[] cArr, int i2, int i3) {
        this.bld.append(cArr, i2, i3);
    }

    public void endElement(String str, String str2, String str3) {
        String pop = this.elementStack.pop();
        if (str2.equals(pop)) {
            String str4 = null;
            String peek = !this.elementStack.isEmpty() ? this.elementStack.peek() : null;
            String sb = this.bld.toString();
            if (!sb.isEmpty()) {
                str4 = sb;
            }
            if (Constants.ERROR_ROOT_ELEMENT.equals(peek)) {
                if (Constants.ERROR_CODE.equals(pop)) {
                    this.errorInfo.setErrorCode(str4);
                } else if ("Message".equals(pop)) {
                    this.errorInfo.setErrorMessage(str4);
                } else {
                    this.errorInfo.getAdditionalDetails().put(pop, new String[]{str4});
                }
            } else if (Constants.ERROR_EXCEPTION.equals(peek)) {
                this.errorInfo.getAdditionalDetails().put(pop, new String[]{str4});
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
