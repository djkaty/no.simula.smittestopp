package com.microsoft.azure.storage.blob;

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

public final class ContainerListHandler extends DefaultHandler {
    public BlobContainerAttributes attributes;
    public StringBuilder bld = new StringBuilder();
    public String containerName;
    public final Stack<String> elementStack = new Stack<>();
    public final ListResponse<CloudBlobContainer> response = new ListResponse<>();
    public final CloudBlobClient serviceClient;

    public ContainerListHandler(CloudBlobClient cloudBlobClient) {
        this.serviceClient = cloudBlobClient;
    }

    public static ListResponse<CloudBlobContainer> getContainerList(InputStream inputStream, CloudBlobClient cloudBlobClient) {
        SAXParser sAXParser = Utility.getSAXParser();
        ContainerListHandler containerListHandler = new ContainerListHandler(cloudBlobClient);
        sAXParser.parse(inputStream, containerListHandler);
        return containerListHandler.response;
    }

    private void getProperties(String str, String str2) {
        if (str.equals(Constants.LAST_MODIFIED_ELEMENT)) {
            this.attributes.getProperties().setLastModified(Utility.parseRFC1123DateFromStringInGMT(str2));
        } else if (str.equals(Constants.ETAG_ELEMENT)) {
            this.attributes.getProperties().setEtag(Utility.formatETag(str2));
        } else if (str.equals(Constants.LEASE_STATUS_ELEMENT)) {
            LeaseStatus parse = LeaseStatus.parse(str2);
            if (!parse.equals(LeaseStatus.UNSPECIFIED)) {
                this.attributes.getProperties().setLeaseStatus(parse);
                return;
            }
            throw new SAXException("The response received is invalid or improperly formatted.");
        } else if (str.equals(Constants.LEASE_STATE_ELEMENT)) {
            LeaseState parse2 = LeaseState.parse(str2);
            if (!parse2.equals(LeaseState.UNSPECIFIED)) {
                this.attributes.getProperties().setLeaseState(parse2);
                return;
            }
            throw new SAXException("The response received is invalid or improperly formatted.");
        } else if (str.equals(Constants.LEASE_DURATION_ELEMENT)) {
            LeaseDuration parse3 = LeaseDuration.parse(str2);
            if (!parse3.equals(LeaseDuration.UNSPECIFIED)) {
                this.attributes.getProperties().setLeaseDuration(parse3);
                return;
            }
            throw new SAXException("The response received is invalid or improperly formatted.");
        } else if (str.equals(Constants.PUBLIC_ACCESS_ELEMENT)) {
            BlobContainerPublicAccessType parse4 = BlobContainerPublicAccessType.parse(str2);
            if (!parse4.equals(BlobContainerPublicAccessType.OFF)) {
                this.attributes.getProperties().setPublicAccess(parse4);
                return;
            }
            throw new SAXException("The response received is invalid or improperly formatted.");
        } else if (str.equals(BlobConstants.HAS_IMMUTABILITY_POLICY_ELEMENT)) {
            this.attributes.getProperties().setHasImmutabilityPolicy(Boolean.valueOf(Boolean.parseBoolean(str2)));
        } else if (str.equals(BlobConstants.HAS_LEGAL_HOLD_ELEMENT)) {
            this.attributes.getProperties().setHasLegalHold(Boolean.valueOf(Boolean.parseBoolean(str2)));
        }
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
            if (BlobConstants.CONTAINER_ELEMENT.equals(pop)) {
                try {
                    CloudBlobContainer containerReference = this.serviceClient.getContainerReference(this.containerName);
                    containerReference.setMetadata(this.attributes.getMetadata());
                    containerReference.setProperties(this.attributes.getProperties());
                    this.response.getResults().add(containerReference);
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
            } else if (BlobConstants.CONTAINER_ELEMENT.equals(peek)) {
                if (Constants.NAME_ELEMENT.equals(pop)) {
                    this.containerName = str4;
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
        if (BlobConstants.CONTAINER_ELEMENT.equals(str2)) {
            this.containerName = "";
            BlobContainerAttributes blobContainerAttributes = new BlobContainerAttributes();
            this.attributes = blobContainerAttributes;
            blobContainerAttributes.getProperties().setPublicAccess(BlobContainerPublicAccessType.OFF);
        }
    }
}
