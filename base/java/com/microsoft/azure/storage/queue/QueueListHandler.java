package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.ListResponse;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class QueueListHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public HashMap<String, String> metadata;
    public String queueName;
    public final ListResponse<CloudQueue> response = new ListResponse<>();
    public final CloudQueueClient serviceClient;

    public QueueListHandler(CloudQueueClient cloudQueueClient) {
        this.serviceClient = cloudQueueClient;
    }

    public static ListResponse<CloudQueue> getQueues(InputStream inputStream, CloudQueueClient cloudQueueClient) {
        SAXParser sAXParser = Utility.getSAXParser();
        QueueListHandler queueListHandler = new QueueListHandler(cloudQueueClient);
        sAXParser.parse(inputStream, queueListHandler);
        return queueListHandler.response;
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
            if (QueueConstants.QUEUE_ELEMENT.equals(pop)) {
                try {
                    CloudQueue queueReference = this.serviceClient.getQueueReference(this.queueName);
                    queueReference.setMetadata(this.metadata);
                    this.response.getResults().add(queueReference);
                } catch (URISyntaxException e2) {
                    throw new SAXException(e2);
                } catch (StorageException e3) {
                    throw new SAXException(e3);
                }
            } else if (ListResponse.ENUMERATION_RESULTS.equals(peek)) {
                if (Constants.PREFIX_ELEMENT.equals(pop)) {
                    this.response.setPrefix(str4);
                } else if (Constants.MARKER_ELEMENT.equals(pop)) {
                    this.response.setMarker(str4);
                } else if ("NextMarker".equals(pop)) {
                    this.response.setNextMarker(str4);
                } else if (Constants.MAX_RESULTS_ELEMENT.equals(pop)) {
                    this.response.setMaxResults(Integer.valueOf(Integer.parseInt(str4)));
                }
            } else if (Constants.METADATA_ELEMENT.equals(peek)) {
                this.metadata.put(pop, str4);
            } else if (QueueConstants.QUEUE_ELEMENT.equals(peek) && Constants.NAME_ELEMENT.equals(pop)) {
                this.queueName = str4;
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
        if (QueueConstants.QUEUE_ELEMENT.equals(str2)) {
            this.queueName = "";
            this.metadata = new HashMap<>();
        }
    }
}
