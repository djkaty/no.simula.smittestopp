package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.core.Utility;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import javax.xml.stream.XMLStreamWriter;

public final class QueueMessageSerializer {
    public static byte[] generateMessageRequestBody(String str) {
        StringWriter stringWriter = new StringWriter();
        XMLStreamWriter createXMLStreamWriter = Utility.createXMLStreamWriter(stringWriter);
        createXMLStreamWriter.writeStartDocument();
        createXMLStreamWriter.writeStartElement(QueueConstants.QUEUE_MESSAGE_ELEMENT);
        createXMLStreamWriter.writeStartElement(QueueConstants.MESSAGE_TEXT_ELEMENT);
        createXMLStreamWriter.writeCharacters(str);
        createXMLStreamWriter.writeEndElement();
        createXMLStreamWriter.writeEndElement();
        createXMLStreamWriter.writeEndDocument();
        try {
            return stringWriter.toString().getBytes("UTF8");
        } catch (UnsupportedEncodingException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }
}
