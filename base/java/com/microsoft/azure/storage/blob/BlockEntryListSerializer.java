package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.core.Utility;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import javax.xml.stream.XMLStreamWriter;

public final class BlockEntryListSerializer {
    public static byte[] writeBlockListToStream(Iterable<BlockEntry> iterable, OperationContext operationContext) {
        StringWriter stringWriter = new StringWriter();
        XMLStreamWriter createXMLStreamWriter = Utility.createXMLStreamWriter(stringWriter);
        createXMLStreamWriter.writeStartDocument();
        createXMLStreamWriter.writeStartElement(BlobConstants.BLOCK_LIST_ELEMENT);
        for (BlockEntry next : iterable) {
            if (next.getSearchMode() == BlockSearchMode.COMMITTED) {
                createXMLStreamWriter.writeStartElement(BlobConstants.COMMITTED_ELEMENT);
            } else if (next.getSearchMode() == BlockSearchMode.UNCOMMITTED) {
                createXMLStreamWriter.writeStartElement(BlobConstants.UNCOMMITTED_ELEMENT);
            } else if (next.getSearchMode() == BlockSearchMode.LATEST) {
                createXMLStreamWriter.writeStartElement(BlobConstants.LATEST_ELEMENT);
            }
            createXMLStreamWriter.writeCharacters(next.getId());
            createXMLStreamWriter.writeEndElement();
        }
        createXMLStreamWriter.writeEndElement();
        createXMLStreamWriter.writeEndDocument();
        try {
            return stringWriter.toString().getBytes("UTF8");
        } catch (UnsupportedEncodingException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }
}
