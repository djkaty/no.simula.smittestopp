package com.microsoft.azure.storage;

import com.microsoft.azure.storage.SharedAccessPolicy;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class SharedAccessPolicyHandler<T extends SharedAccessPolicy> extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public String id;
    public final HashMap<String, T> policies = new HashMap<>();
    public T policy;
    public final Class<T> policyClassType;

    public SharedAccessPolicyHandler(Class<T> cls) {
        this.policyClassType = cls;
    }

    public static <T extends SharedAccessPolicy> HashMap<String, T> getAccessIdentifiers(InputStream inputStream, Class<T> cls) {
        SAXParser sAXParser = Utility.getSAXParser();
        SharedAccessPolicyHandler sharedAccessPolicyHandler = new SharedAccessPolicyHandler(cls);
        sAXParser.parse(inputStream, sharedAccessPolicyHandler);
        return sharedAccessPolicyHandler.policies;
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
            if (Constants.SIGNED_IDENTIFIER_ELEMENT.equals(pop)) {
                this.policies.put(this.id, this.policy);
            } else if (Constants.ID.equals(pop)) {
                this.id = sb;
            } else if ("Start".equals(pop)) {
                try {
                    this.policy.setSharedAccessStartTime(Utility.parseDate(sb));
                } catch (IllegalArgumentException e2) {
                    throw new SAXException(e2);
                }
            } else if (Constants.EXPIRY.equals(pop)) {
                try {
                    this.policy.setSharedAccessExpiryTime(Utility.parseDate(sb));
                } catch (IllegalArgumentException e3) {
                    throw new SAXException(e3);
                }
            } else if (Constants.PERMISSION.equals(pop)) {
                this.policy.setPermissionsFromString(sb);
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
        if (Constants.SIGNED_IDENTIFIER_ELEMENT.equals(str2)) {
            this.id = null;
            try {
                this.policy = (SharedAccessPolicy) this.policyClassType.newInstance();
            } catch (Exception e2) {
                throw new SAXException(e2);
            }
        }
    }
}
