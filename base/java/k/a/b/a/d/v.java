package k.a.b.a.d;

public interface v {
    public static final a a = a.PN_SASL_OK;

    public enum a {
        PN_SASL_NONE((byte) -1),
        PN_SASL_OK((byte) 0),
        PN_SASL_AUTH((byte) 1),
        PN_SASL_SYS((byte) 2),
        PN_SASL_PERM((byte) 3),
        PN_SASL_TEMP((byte) 4),
        PN_SASL_SKIPPED((byte) 5);
        
        public final byte _code;

        /* access modifiers changed from: public */
        a(byte b) {
            this._code = b;
        }

        public byte getCode() {
            return this._code;
        }
    }

    public enum b {
        PN_SASL_CONF,
        PN_SASL_IDLE,
        PN_SASL_STEP,
        PN_SASL_PASS,
        PN_SASL_FAIL
    }

    static {
        a aVar = a.PN_SASL_NONE;
        a aVar2 = a.PN_SASL_AUTH;
        a aVar3 = a.PN_SASL_SYS;
        a aVar4 = a.PN_SASL_PERM;
        a aVar5 = a.PN_SASL_TEMP;
        a aVar6 = a.PN_SASL_SKIPPED;
    }
}
