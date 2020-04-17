package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.ListResponse;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class ShareListHandler extends DefaultHandler {
    public FileShareAttributes attributes;
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public final ListResponse<CloudFileShare> response = new ListResponse<>();
    public final CloudFileClient serviceClient;
    public String shareName;
    public String snapshotID;

    public ShareListHandler(CloudFileClient cloudFileClient) {
        this.serviceClient = cloudFileClient;
    }

    private void getProperties(String str, String str2) {
        if (str.equals(Constants.LAST_MODIFIED_ELEMENT)) {
            this.attributes.getProperties().setLastModified(Utility.parseRFC1123DateFromStringInGMT(str2));
        } else if (str.equals(Constants.ETAG_ELEMENT)) {
            this.attributes.getProperties().setEtag(Utility.formatETag(str2));
        } else if (str.equals(FileConstants.SHARE_QUOTA_ELEMENT)) {
            this.attributes.getProperties().setShareQuota(Utility.isNullOrEmpty(str2) ? null : Integer.valueOf(Integer.parseInt(str2)));
        }
    }

    public static ListResponse<CloudFileShare> getShareList(InputStream inputStream, CloudFileClient cloudFileClient) {
        SAXParser sAXParser = Utility.getSAXParser();
        ShareListHandler shareListHandler = new ShareListHandler(cloudFileClient);
        sAXParser.parse(inputStream, shareListHandler);
        return shareListHandler.response;
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
            if (FileConstants.SHARE_ELEMENT.equals(pop)) {
                try {
                    CloudFileShare shareReference = this.serviceClient.getShareReference(this.shareName);
                    shareReference.setMetadata(this.attributes.getMetadata());
                    shareReference.setProperties(this.attributes.getProperties());
                    shareReference.snapshotID = this.snapshotID;
                    this.response.getResults().add(shareReference);
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
            } else if (FileConstants.SHARE_ELEMENT.equals(peek)) {
                if (Constants.NAME_ELEMENT.equals(pop)) {
                    this.shareName = str4;
                } else if ("snapshot".equals(pop.toLowerCase())) {
                    this.snapshotID = str4;
                }
            } else if (Constants.PROPERTIES.equals(peek)) {
                try {
                    getProperties(pop, str4);
                } catch (ParseException e4) {
                    throw new SAXException(e4);
                }
            } else if (Constants.METADATA_ELEMENT.equals(peek)) {
                if (str4 == null) {
                    str4 = "";
                }
                this.attributes.getMetadata().put(pop, str4);
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes2) {
        this.elementStack.push(str2);
        if (FileConstants.SHARE_ELEMENT.equals(str2)) {
            this.shareName = "";
            this.snapshotID = null;
            this.attributes = new FileShareAttributes();
        }
    }
}
