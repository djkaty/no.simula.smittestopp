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

public final class FileListHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public final CloudFileDirectory directory;
    public FileDirectoryProperties directoryProperties;
    public final Stack<String> elementStack = new Stack<>();
    public FileProperties fileProperties;
    public String name;
    public final ListResponse<ListFileItem> response = new ListResponse<>();

    public FileListHandler(CloudFileDirectory cloudFileDirectory) {
        this.directory = cloudFileDirectory;
    }

    public static ListResponse<ListFileItem> getFileAndDirectoryList(InputStream inputStream, CloudFileDirectory cloudFileDirectory) {
        SAXParser sAXParser = Utility.getSAXParser();
        FileListHandler fileListHandler = new FileListHandler(cloudFileDirectory);
        sAXParser.parse(inputStream, fileListHandler);
        return fileListHandler.response;
    }

    private void setProperties(String str, String str2) {
        if (Constants.LAST_MODIFIED_ELEMENT.equals(str)) {
            this.directoryProperties.setLastModified(Utility.parseRFC1123DateFromStringInGMT(str2));
        } else if (Constants.ETAG_ELEMENT.equals(str)) {
            this.directoryProperties.setEtag(Utility.formatETag(str2));
        } else if (Constants.HeaderConstants.CONTENT_LENGTH.equals(str)) {
            this.fileProperties.setLength(Long.parseLong(str2));
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
            if ("File".equals(pop)) {
                try {
                    CloudFile fileReference = this.directory.getFileReference(this.name);
                    fileReference.setProperties(this.fileProperties);
                    this.response.getResults().add(fileReference);
                } catch (URISyntaxException e2) {
                    throw new SAXException(e2);
                } catch (StorageException e3) {
                    throw new SAXException(e3);
                }
            } else if (FileConstants.DIRECTORY_ELEMENT.equals(pop)) {
                try {
                    CloudFileDirectory directoryReference = this.directory.getDirectoryReference(this.name);
                    directoryReference.setProperties(this.directoryProperties);
                    this.response.getResults().add(directoryReference);
                } catch (URISyntaxException e4) {
                    throw new SAXException(e4);
                } catch (StorageException e5) {
                    throw new SAXException(e5);
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
            } else if ("File".equals(peek) || FileConstants.DIRECTORY_ELEMENT.equals(peek)) {
                if (Constants.NAME_ELEMENT.equals(pop)) {
                    this.name = str4;
                }
            } else if (Constants.PROPERTIES.equals(peek)) {
                try {
                    setProperties(pop, str4);
                } catch (ParseException e6) {
                    throw new SAXException(e6);
                }
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
        if ("File".equals(str2)) {
            this.name = "";
            this.fileProperties = new FileProperties();
        }
        if (FileConstants.DIRECTORY_ELEMENT.equals(str2)) {
            this.name = "";
            this.directoryProperties = new FileDirectoryProperties();
        }
    }
}
