package com.microsoft.azure.storage.analytics;

import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.net.URI;
import java.text.DateFormat;
import java.util.Date;
import java.util.UUID;
import k.a.a.b.d.a.b;

public class LogRecordStreamReader extends InputStreamReader {
    public static final char FIELD_DELIMITER = ';';
    public static final char QUOTE_CHAR = '\"';
    public static final char RECORD_DELIMITER = '\n';
    public boolean isFirstFieldInRecord = true;
    public Integer peekedCharacter = null;

    public LogRecordStreamReader(InputStream inputStream) {
        super(inputStream);
    }

    private void readDelimiter(char c2) {
        if (!isEndOfFile()) {
            int read = read();
            if (read == -1 || ((char) read) != c2) {
                throw new IllegalStateException(SR.LOG_STREAM_DELIMITER_ERROR);
            }
            return;
        }
        throw new EOFException(SR.LOG_STREAM_END_ERROR);
    }

    private String readField(boolean z) {
        boolean z2 = false;
        if (!this.isFirstFieldInRecord) {
            readDelimiter(FIELD_DELIMITER);
        } else {
            this.isFirstFieldInRecord = false;
        }
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        while (!isEndOfFile()) {
            char peek = (char) peek();
            if ((!z || z2 || sb.length() == 0) && (peek == ';' || peek == 10)) {
                if (!z || sb.length() == 0) {
                    return sb.toString();
                }
                return sb.substring(1, sb.length() - 1);
            } else if (!z2) {
                read();
                sb.append(peek);
                if (peek == '\"') {
                    if (!z) {
                        throw new IllegalStateException(SR.LOG_STREAM_QUOTE_ERROR);
                    } else if (sb.length() == 1) {
                        z3 = true;
                    } else if (z3) {
                        z2 = true;
                    } else {
                        throw new IllegalStateException(SR.LOG_STREAM_QUOTE_ERROR);
                    }
                }
            } else {
                throw new IllegalStateException(SR.LOG_STREAM_QUOTE_ERROR);
            }
        }
        throw new EOFException(SR.LOG_STREAM_END_ERROR);
    }

    private boolean tryPeekDelimiter(char c2) {
        if (!isEndOfFile()) {
            return ((char) peek()) == c2;
        }
        throw new EOFException(SR.LOG_STREAM_END_ERROR);
    }

    public void endCurrentRecord() {
        readDelimiter(10);
        this.isFirstFieldInRecord = true;
    }

    public boolean hasMoreFieldsInRecord() {
        return tryPeekDelimiter(FIELD_DELIMITER);
    }

    public boolean isEndOfFile() {
        return peek() == -1;
    }

    public int peek() {
        Integer num = this.peekedCharacter;
        if (num != null) {
            return num.intValue();
        }
        Integer valueOf = Integer.valueOf(super.read());
        this.peekedCharacter = valueOf;
        return valueOf.intValue();
    }

    public int read() {
        Integer num = this.peekedCharacter;
        if (num == null) {
            return super.read();
        }
        int intValue = num.intValue();
        this.peekedCharacter = null;
        return intValue;
    }

    public Boolean readBoolean() {
        String readField = readField(false);
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        return Boolean.valueOf(Boolean.parseBoolean(readField));
    }

    public Date readDate(DateFormat dateFormat) {
        String readField = readField(false);
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        return dateFormat.parse(readField);
    }

    public Double readDouble() {
        String readField = readField(false);
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        return Double.valueOf(Double.parseDouble(readField));
    }

    public Integer readInteger() {
        String readField = readField(false);
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(readField));
    }

    public Long readLong() {
        String readField = readField(false);
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        return Long.valueOf(Long.parseLong(readField));
    }

    public String readQuotedString() {
        String readField = readField(true);
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        return readField;
    }

    public String readString() {
        String readField = readField(false);
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        return readField;
    }

    public URI readUri() {
        String readField = readField(true);
        String str = null;
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        b bVar = k.a.a.b.b.b;
        if (bVar != null) {
            if (readField != null) {
                try {
                    StringWriter stringWriter = new StringWriter(readField.length() * 2);
                    int length = readField.length();
                    int i2 = 0;
                    while (i2 < length) {
                        int a = bVar.a(readField, i2, stringWriter);
                        if (a == 0) {
                            char charAt = readField.charAt(i2);
                            stringWriter.write(charAt);
                            i2++;
                            if (Character.isHighSurrogate(charAt) && i2 < length) {
                                char charAt2 = readField.charAt(i2);
                                if (Character.isLowSurrogate(charAt2)) {
                                    stringWriter.write(charAt2);
                                    i2++;
                                }
                            }
                        } else {
                            for (int i3 = 0; i3 < a; i3++) {
                                i2 += Character.charCount(Character.codePointAt(readField, i2));
                            }
                        }
                    }
                    str = stringWriter.toString();
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
            return new URI(str);
        }
        throw null;
    }

    public UUID readUuid() {
        String readField = readField(false);
        if (Utility.isNullOrEmpty(readField)) {
            return null;
        }
        return UUID.fromString(readField);
    }
}
