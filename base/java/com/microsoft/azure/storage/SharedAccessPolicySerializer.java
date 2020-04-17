package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import javax.xml.stream.XMLStreamWriter;

public final class SharedAccessPolicySerializer {
    public static <T extends SharedAccessPolicy> void writeSharedAccessIdentifiersToStream(HashMap<String, T> hashMap, StringWriter stringWriter) {
        Utility.assertNotNull("sharedAccessPolicies", hashMap);
        Utility.assertNotNull("outWriter", stringWriter);
        XMLStreamWriter createXMLStreamWriter = Utility.createXMLStreamWriter(stringWriter);
        if (hashMap.keySet().size() <= 5) {
            createXMLStreamWriter.writeStartDocument();
            createXMLStreamWriter.writeStartElement(Constants.SIGNED_IDENTIFIERS_ELEMENT);
            for (Map.Entry next : hashMap.entrySet()) {
                SharedAccessPolicy sharedAccessPolicy = (SharedAccessPolicy) next.getValue();
                createXMLStreamWriter.writeStartElement(Constants.SIGNED_IDENTIFIER_ELEMENT);
                createXMLStreamWriter.writeStartElement(Constants.ID);
                createXMLStreamWriter.writeCharacters((String) next.getKey());
                createXMLStreamWriter.writeEndElement();
                createXMLStreamWriter.writeStartElement(Constants.ACCESS_POLICY);
                createXMLStreamWriter.writeStartElement("Start");
                createXMLStreamWriter.writeCharacters(Utility.getUTCTimeOrEmpty(sharedAccessPolicy.getSharedAccessStartTime()));
                createXMLStreamWriter.writeEndElement();
                createXMLStreamWriter.writeStartElement(Constants.EXPIRY);
                createXMLStreamWriter.writeCharacters(Utility.getUTCTimeOrEmpty(sharedAccessPolicy.getSharedAccessExpiryTime()));
                createXMLStreamWriter.writeEndElement();
                createXMLStreamWriter.writeStartElement(Constants.PERMISSION);
                createXMLStreamWriter.writeCharacters(sharedAccessPolicy.permissionsToString());
                createXMLStreamWriter.writeEndElement();
                createXMLStreamWriter.writeEndElement();
                createXMLStreamWriter.writeEndElement();
            }
            createXMLStreamWriter.writeEndElement();
            createXMLStreamWriter.writeEndDocument();
            return;
        }
        throw new IllegalArgumentException(String.format(SR.TOO_MANY_SHARED_ACCESS_POLICY_IDENTIFIERS, new Object[]{Integer.valueOf(hashMap.keySet().size()), 5}));
    }
}
