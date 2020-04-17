package com.microsoft.azure.sdk.iot.deps.ws;

public interface WebSocketHeader {
    public static final byte FINAL_OPCODE_BINARY = -126;
    public static final byte FINBIT_MASK = Byte.MIN_VALUE;
    public static final byte MASKBIT_MASK = Byte.MIN_VALUE;
    public static final byte MAX_HEADER_LENGTH_MASKED = 14;
    public static final byte MAX_HEADER_LENGTH_NOMASK = 10;
    public static final byte MED_HEADER_LENGTH_MASKED = 8;
    public static final byte MED_HEADER_LENGTH_NOMASK = 4;
    public static final byte MIN_HEADER_LENGTH = 2;
    public static final byte MIN_HEADER_LENGTH_MASKED = 6;
    public static final byte OPCODE_BINARY = 2;
    public static final byte OPCODE_CLOSE = 8;
    public static final byte OPCODE_CONTINUATION = 0;
    public static final byte OPCODE_MASK = 15;
    public static final byte OPCODE_PING = 9;
    public static final byte OPCODE_PONG = 10;
    public static final byte PAYLOAD_EXTENDED_16 = 126;
    public static final byte PAYLOAD_EXTENDED_64 = Byte.MAX_VALUE;
    public static final int PAYLOAD_LARGE_MAX = Integer.MAX_VALUE;
    public static final byte PAYLOAD_MASK = Byte.MAX_VALUE;
    public static final int PAYLOAD_MEDIUM_MAX = 65535;
    public static final byte PAYLOAD_SHORT_MAX = 125;
}
