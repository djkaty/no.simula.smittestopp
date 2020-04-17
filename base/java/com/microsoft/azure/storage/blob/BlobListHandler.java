package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.ListResponse;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class BlobListHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public String blobName;
    public final CloudBlobContainer container;
    public CopyState copyState;
    public boolean deleted;
    public final Stack<String> elementStack = new Stack<>();
    public HashMap<String, String> metadata;
    public BlobProperties properties;
    public final ListBlobsResponse response = new ListBlobsResponse();
    public String snapshotID;

    public BlobListHandler(CloudBlobContainer cloudBlobContainer) {
        this.container = cloudBlobContainer;
    }

    public static ListBlobsResponse getBlobList(InputStream inputStream, CloudBlobContainer cloudBlobContainer) {
        SAXParser sAXParser = Utility.getSAXParser();
        BlobListHandler blobListHandler = new BlobListHandler(cloudBlobContainer);
        sAXParser.parse(inputStream, blobListHandler);
        return blobListHandler.response;
    }

    private void setProperties(String str, String str2) {
        if (Constants.LAST_MODIFIED_ELEMENT.equals(str)) {
            this.properties.setLastModified(Utility.parseRFC1123DateFromStringInGMT(str2));
        } else if (Constants.ETAG_ELEMENT.equals(str)) {
            this.properties.setEtag(Utility.formatETag(str2));
        } else if (Constants.HeaderConstants.CONTENT_LENGTH.equals(str)) {
            this.properties.setLength(Long.parseLong(str2));
        } else if ("Content-Type".equals(str)) {
            this.properties.setContentType(str2);
        } else if ("Content-Encoding".equals(str)) {
            this.properties.setContentEncoding(str2);
        } else if (Constants.HeaderConstants.CONTENT_LANGUAGE.equals(str)) {
            this.properties.setContentLanguage(str2);
        } else if (Constants.HeaderConstants.CONTENT_MD5.equals(str)) {
            this.properties.setContentMD5(str2);
        } else if (Constants.HeaderConstants.CACHE_CONTROL.equals(str)) {
            this.properties.setCacheControl(str2);
        } else if (Constants.HeaderConstants.CONTENT_DISPOSITION.equals(str)) {
            this.properties.setContentDisposition(str2);
        } else if (BlobConstants.BLOB_TYPE_ELEMENT.equals(str)) {
            if (str2.equals(BlobConstants.BLOCK_BLOB)) {
                this.properties.setBlobType(BlobType.BLOCK_BLOB);
            } else if (str2.equals(BlobConstants.PAGE_BLOB)) {
                this.properties.setBlobType(BlobType.PAGE_BLOB);
            } else if (str2.equals(BlobConstants.APPEND_BLOB)) {
                this.properties.setBlobType(BlobType.APPEND_BLOB);
            } else {
                throw new SAXException("The response received is invalid or improperly formatted.");
            }
        } else if (Constants.LEASE_STATUS_ELEMENT.equals(str)) {
            LeaseStatus parse = LeaseStatus.parse(str2);
            if (!parse.equals(LeaseStatus.UNSPECIFIED)) {
                this.properties.setLeaseStatus(parse);
            }
        } else if (Constants.LEASE_STATE_ELEMENT.equals(str)) {
            LeaseState parse2 = LeaseState.parse(str2);
            if (!parse2.equals(LeaseState.UNSPECIFIED)) {
                this.properties.setLeaseState(parse2);
                return;
            }
            throw new SAXException("The response received is invalid or improperly formatted.");
        } else if (Constants.LEASE_DURATION_ELEMENT.equals(str)) {
            LeaseDuration parse3 = LeaseDuration.parse(str2);
            if (!parse3.equals(LeaseDuration.UNSPECIFIED)) {
                this.properties.setLeaseDuration(parse3);
                return;
            }
            throw new SAXException("The response received is invalid or improperly formatted.");
        } else if (Constants.SERVER_ENCRYPTION_STATUS_ELEMENT.equals(str)) {
            this.properties.setServerEncrypted("true".equals(str2));
        } else if (Constants.COPY_ID_ELEMENT.equals(str)) {
            if (this.copyState == null) {
                this.copyState = new CopyState();
            }
            this.copyState.setCopyId(str2);
        } else if (Constants.COPY_COMPLETION_TIME_ELEMENT.equals(str)) {
            if (this.copyState == null) {
                this.copyState = new CopyState();
            }
            this.copyState.setCompletionTime(Utility.parseRFC1123DateFromStringInGMT(str2));
        } else if (Constants.COPY_STATUS_ELEMENT.equals(str)) {
            if (this.copyState == null) {
                this.copyState = new CopyState();
            }
            this.copyState.setStatus(CopyStatus.parse(str2));
        } else if (Constants.COPY_SOURCE_ELEMENT.equals(str)) {
            if (this.copyState == null) {
                this.copyState = new CopyState();
            }
            this.copyState.setSource(new URI(str2));
        } else if (Constants.COPY_PROGRESS_ELEMENT.equals(str)) {
            if (this.copyState == null) {
                this.copyState = new CopyState();
            }
            String[] split = str2.split("/");
            this.copyState.setBytesCopied(Long.valueOf(Long.parseLong(split[0])));
            this.copyState.setTotalBytes(Long.valueOf(Long.parseLong(split[1])));
        } else if (Constants.COPY_STATUS_DESCRIPTION_ELEMENT.equals(str)) {
            if (this.copyState == null) {
                this.copyState = new CopyState();
            }
            this.copyState.setStatusDescription(str2);
        } else if (Constants.INCREMENTAL_COPY_ELEMENT.equals(str)) {
            this.properties.setIncrementalCopy("true".equals(str2));
        } else if (Constants.COPY_DESTINATION_SNAPSHOT_ID_ELEMENT.equals(str)) {
            if (this.copyState == null) {
                this.copyState = new CopyState();
            }
            this.copyState.setCopyDestinationSnapshotID(str2);
        } else if (Constants.ACCESS_TIER.equals(str)) {
            if (this.properties.getBlobType().equals(BlobType.PAGE_BLOB)) {
                this.properties.setPremiumPageBlobTier(PremiumPageBlobTier.parse(str2));
            } else if (this.properties.getBlobType().equals(BlobType.BLOCK_BLOB)) {
                this.properties.setStandardBlobTier(StandardBlobTier.parse(str2));
            } else if (this.properties.getBlobType().equals(BlobType.UNSPECIFIED)) {
                PremiumPageBlobTier parse4 = PremiumPageBlobTier.parse(str2);
                StandardBlobTier parse5 = StandardBlobTier.parse(str2);
                if (!parse4.equals(PremiumPageBlobTier.UNKNOWN)) {
                    this.properties.setPremiumPageBlobTier(parse4);
                } else if (!parse5.equals(StandardBlobTier.UNKNOWN)) {
                    this.properties.setStandardBlobTier(parse5);
                } else {
                    this.properties.setPremiumPageBlobTier(PremiumPageBlobTier.UNKNOWN);
                    this.properties.setStandardBlobTier(StandardBlobTier.UNKNOWN);
                }
            }
        } else if (Constants.ACCESS_TIER_INFERRED.equals(str)) {
            this.properties.setBlobTierInferred(Boolean.valueOf(Boolean.parseBoolean(str2)));
        } else if (Constants.ACCESS_TIER_CHANGE_TIME.equals(str)) {
            this.properties.setTierChangeTime(Utility.parseRFC1123DateFromStringInGMT(str2));
        } else if (Constants.ARCHIVE_STATUS.equals(str)) {
            this.properties.setRehydrationStatus(RehydrationStatus.parse(str2));
        } else if (BlobConstants.DELETED_TIME.equals(str)) {
            this.properties.setDeletedTime(Utility.parseRFC1123DateFromStringInGMT(str2));
        } else if (BlobConstants.REMAINING_RETENTION_DAYS.equals(str)) {
            this.properties.setRemainingRetentionDays(Integer.valueOf(Integer.parseInt(str2)));
        } else if (BlobConstants.CREATION_TIME_ELEMENT.equals(str)) {
            this.properties.setCreatedTime(Utility.parseRFC1123DateFromStringInGMT(str2));
        }
    }

    public void characters(char[] cArr, int i2, int i3) {
        this.bld.append(cArr, i2, i3);
    }

    public void endElement(String str, String str2, String str3) {
        CloudBlob cloudBlob;
        String pop = this.elementStack.pop();
        if (str2.equals(pop)) {
            String str4 = null;
            String peek = !this.elementStack.isEmpty() ? this.elementStack.peek() : null;
            String sb = this.bld.toString();
            if (!sb.isEmpty()) {
                str4 = sb;
            }
            if (BlobConstants.BLOB_ELEMENT.equals(pop)) {
                try {
                    if (this.properties.getBlobType() == BlobType.BLOCK_BLOB) {
                        cloudBlob = this.container.getBlockBlobReference(this.blobName);
                    } else if (this.properties.getBlobType() == BlobType.PAGE_BLOB) {
                        cloudBlob = this.container.getPageBlobReference(this.blobName);
                    } else if (this.properties.getBlobType() == BlobType.APPEND_BLOB) {
                        cloudBlob = this.container.getAppendBlobReference(this.blobName);
                    } else {
                        throw new SAXException("The response received is invalid or improperly formatted.");
                    }
                    cloudBlob.snapshotID = this.snapshotID;
                    BlobProperties blobProperties = this.properties;
                    cloudBlob.properties = blobProperties;
                    cloudBlob.metadata = this.metadata;
                    blobProperties.setCopyState(this.copyState);
                    cloudBlob.deleted = this.deleted;
                    this.response.getResults().add(cloudBlob);
                } catch (StorageException e2) {
                    throw new SAXException(e2);
                } catch (URISyntaxException e3) {
                    throw new SAXException(e3);
                }
            } else if (BlobConstants.BLOB_PREFIX_ELEMENT.equals(pop)) {
                try {
                    this.response.getResults().add(this.container.getDirectoryReference(this.blobName));
                } catch (URISyntaxException e4) {
                    throw new SAXException(e4);
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
                } else if (Constants.DELIMITER_ELEMENT.equals(pop)) {
                    this.response.setDelimiter(str4);
                }
            } else if (BlobConstants.BLOB_ELEMENT.equals(peek)) {
                if (Constants.NAME_ELEMENT.equals(pop)) {
                    this.blobName = str4;
                } else if (BlobConstants.SNAPSHOT_ELEMENT.equals(pop)) {
                    this.snapshotID = str4;
                } else if (BlobConstants.DELETED_ELEMENT.equals(pop)) {
                    this.deleted = Boolean.parseBoolean(str4);
                }
            } else if (BlobConstants.BLOB_PREFIX_ELEMENT.equals(peek)) {
                if (Constants.NAME_ELEMENT.equals(pop)) {
                    this.blobName = str4;
                }
            } else if (Constants.PROPERTIES.equals(peek)) {
                try {
                    setProperties(pop, str4);
                } catch (ParseException e5) {
                    throw new SAXException(e5);
                } catch (URISyntaxException e6) {
                    throw new SAXException(e6);
                }
            } else if (Constants.METADATA_ELEMENT.equals(peek)) {
                this.metadata.put(pop, str4);
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
        if (BlobConstants.BLOB_ELEMENT.equals(str2) || BlobConstants.BLOB_PREFIX_ELEMENT.equals(str2)) {
            this.blobName = "";
            this.snapshotID = null;
            this.properties = new BlobProperties();
            this.metadata = new HashMap<>();
            this.copyState = null;
            this.deleted = false;
        }
    }
}
