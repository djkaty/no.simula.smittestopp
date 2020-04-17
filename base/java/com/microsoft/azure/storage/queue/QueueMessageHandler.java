package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class QueueMessageHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public CloudQueueMessage message = new CloudQueueMessage();
    public final ArrayList<CloudQueueMessage> messages = new ArrayList<>();
    public final boolean shouldEncodeMessage;

    public QueueMessageHandler(boolean z) {
        this.shouldEncodeMessage = z;
    }

    public static ArrayList<CloudQueueMessage> readMessages(InputStream inputStream, boolean z) {
        SAXParser sAXParser = Utility.getSAXParser();
        QueueMessageHandler queueMessageHandler = new QueueMessageHandler(z);
        sAXParser.parse(inputStream, queueMessageHandler);
        return queueMessageHandler.messages;
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
            if (QueueConstants.QUEUE_MESSAGE_ELEMENT.equals(str2)) {
                this.messages.add(this.message);
            } else if (QueueConstants.MESSAGE_ID_ELEMENT.equals(pop)) {
                this.message.setMessageId(sb);
            } else if (QueueConstants.INSERTION_TIME_ELEMENT.equals(pop)) {
                try {
                    this.message.setInsertionTime(Utility.parseRFC1123DateFromStringInGMT(sb));
                } catch (ParseException e2) {
                    throw new SAXException(e2);
                }
            } else if (QueueConstants.EXPIRATION_TIME_ELEMENT.equals(pop)) {
                try {
                    this.message.setExpirationTime(Utility.parseRFC1123DateFromStringInGMT(sb));
                } catch (ParseException e3) {
                    throw new SAXException(e3);
                }
            } else if (QueueConstants.POP_RECEIPT_ELEMENT.equals(pop)) {
                this.message.setPopReceipt(sb);
            } else if (QueueConstants.TIME_NEXT_VISIBLE_ELEMENT.equals(pop)) {
                try {
                    this.message.setNextVisibleTime(Utility.parseRFC1123DateFromStringInGMT(sb));
                } catch (ParseException e4) {
                    throw new SAXException(e4);
                }
            } else if (QueueConstants.DEQUEUE_COUNT_ELEMENT.equals(pop)) {
                this.message.setDequeueCount(Integer.parseInt(sb));
            } else if (QueueConstants.MESSAGE_TEXT_ELEMENT.equals(pop)) {
                this.message.messageContent = sb;
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
        if (QueueConstants.QUEUE_MESSAGE_ELEMENT.equals(str2)) {
            CloudQueueMessage cloudQueueMessage = new CloudQueueMessage();
            this.message = cloudQueueMessage;
            cloudQueueMessage.setMessageType(this.shouldEncodeMessage ? QueueMessageType.BASE_64_ENCODED : QueueMessageType.RAW_STRING);
        }
    }
}
