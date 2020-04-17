package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Stack;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class BlockListHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public String blockName;
    public Long blockSize;
    public final ArrayList<BlockEntry> blocks = new ArrayList<>();
    public final Stack<String> elementStack = new Stack<>();
    public BlockSearchMode searchMode;

    public static ArrayList<BlockEntry> getBlockList(InputStream inputStream) {
        SAXParser sAXParser = Utility.getSAXParser();
        BlockListHandler blockListHandler = new BlockListHandler();
        sAXParser.parse(inputStream, blockListHandler);
        return blockListHandler.blocks;
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
            if (BlobConstants.BLOCK_ELEMENT.equals(pop)) {
                BlockEntry blockEntry = new BlockEntry(this.blockName, this.searchMode);
                blockEntry.setSize(this.blockSize.longValue());
                this.blocks.add(blockEntry);
            } else if (Constants.NAME_ELEMENT.equals(pop)) {
                this.blockName = sb;
            } else if (BlobConstants.SIZE_ELEMENT.equals(pop)) {
                this.blockSize = Long.valueOf(Long.parseLong(sb));
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
        if (BlobConstants.UNCOMMITTED_BLOCKS_ELEMENT.equals(str2)) {
            this.searchMode = BlockSearchMode.UNCOMMITTED;
        } else if (BlobConstants.COMMITTED_BLOCKS_ELEMENT.equals(str2)) {
            this.searchMode = BlockSearchMode.COMMITTED;
        }
    }
}
