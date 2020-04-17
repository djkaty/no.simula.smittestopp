package com.microsoft.azure.sdk.iot.deps.transport.amqp;

import com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslHandler;
import java.nio.ByteBuffer;
import k.a.b.a.b.a;
import k.a.b.a.d.c0;
import k.a.b.a.d.v;
import k.a.b.a.d.w;

public class SaslListenerImpl implements w {
    public static final String PLAIN = "PLAIN";
    public SaslHandler saslHandler;
    public Exception savedException;

    /* renamed from: com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslListenerImpl$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome;

        /* JADX WARNING: Can't wrap try/catch for region: R(17:0|(2:1|2)|3|(2:5|6)|7|9|10|11|12|13|14|15|17|18|19|20|22) */
        /* JADX WARNING: Can't wrap try/catch for region: R(18:0|1|2|3|(2:5|6)|7|9|10|11|12|13|14|15|17|18|19|20|22) */
        /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001e */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0024 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0032 */
        static {
            /*
                k.a.b.a.d.v$a[] r0 = k.a.b.a.d.v.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome = r0
                r1 = 1
                r2 = 5
                k.a.b.a.d.v$a r3 = k.a.b.a.d.v.a.PN_SASL_TEMP     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                r3 = 4
                int[] r4 = $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome     // Catch:{ NoSuchFieldError -> 0x0017 }
                k.a.b.a.d.v$a r5 = k.a.b.a.d.v.a.PN_SASL_PERM     // Catch:{ NoSuchFieldError -> 0x0017 }
                r4[r3] = r0     // Catch:{ NoSuchFieldError -> 0x0017 }
            L_0x0017:
                r4 = 3
                int[] r5 = $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome     // Catch:{ NoSuchFieldError -> 0x001e }
                k.a.b.a.d.v$a r6 = k.a.b.a.d.v.a.PN_SASL_AUTH     // Catch:{ NoSuchFieldError -> 0x001e }
                r5[r0] = r4     // Catch:{ NoSuchFieldError -> 0x001e }
            L_0x001e:
                int[] r0 = $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome     // Catch:{ NoSuchFieldError -> 0x0024 }
                k.a.b.a.d.v$a r5 = k.a.b.a.d.v.a.PN_SASL_OK     // Catch:{ NoSuchFieldError -> 0x0024 }
                r0[r1] = r3     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                int[] r0 = $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome     // Catch:{ NoSuchFieldError -> 0x002b }
                k.a.b.a.d.v$a r1 = k.a.b.a.d.v.a.PN_SASL_NONE     // Catch:{ NoSuchFieldError -> 0x002b }
                r1 = 0
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                r0 = 6
                int[] r1 = $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome     // Catch:{ NoSuchFieldError -> 0x0032 }
                k.a.b.a.d.v$a r2 = k.a.b.a.d.v.a.PN_SASL_SYS     // Catch:{ NoSuchFieldError -> 0x0032 }
                r1[r4] = r0     // Catch:{ NoSuchFieldError -> 0x0032 }
            L_0x0032:
                int[] r1 = $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome     // Catch:{ NoSuchFieldError -> 0x0039 }
                k.a.b.a.d.v$a r2 = k.a.b.a.d.v.a.PN_SASL_SKIPPED     // Catch:{ NoSuchFieldError -> 0x0039 }
                r2 = 7
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x0039 }
            L_0x0039:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslListenerImpl.AnonymousClass1.<clinit>():void");
        }
    }

    public SaslListenerImpl(SaslHandler saslHandler2) {
        this.saslHandler = saslHandler2;
    }

    public Exception getSavedException() {
        return this.savedException;
    }

    public void onSaslChallenge(v vVar, c0 c0Var) {
        if (vVar == null) {
            this.savedException = new IllegalArgumentException("Sasl cannot be null");
            return;
        }
        k.a.b.a.d.g0.v vVar2 = (k.a.b.a.d.g0.v) vVar;
        ByteBuffer byteBuffer = vVar2.f1923i;
        int remaining = byteBuffer == null ? 0 : byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        ByteBuffer byteBuffer2 = vVar2.f1923i;
        if (byteBuffer2 != null) {
            byteBuffer2.get(bArr, 0, Math.min(byteBuffer2.remaining(), remaining));
            if (!vVar2.f1923i.hasRemaining()) {
                vVar2.f1923i = null;
            }
        }
        try {
            byte[] handleChallenge = this.saslHandler.handleChallenge(bArr);
            int length = handleChallenge.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(handleChallenge, 0, bArr2, 0, length);
            ((k.a.b.a.d.g0.v) vVar).f1925k = new a(bArr2);
        } catch (Exception e2) {
            this.savedException = e2;
        }
    }

    public void onSaslInit(v vVar, c0 c0Var) {
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0059 A[Catch:{ Exception -> 0x0083 }] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0073 A[Catch:{ Exception -> 0x0083 }] */
    /* JADX WARNING: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onSaslMechanisms(k.a.b.a.d.v r7, k.a.b.a.d.c0 r8) {
        /*
            r6 = this;
            if (r7 != 0) goto L_0x000d
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "Sasl cannot be null"
            r7.<init>(r8)
            r6.savedException = r7
            goto L_0x0086
        L_0x000d:
            r8 = r7
            k.a.b.a.d.g0.v r8 = (k.a.b.a.d.g0.v) r8
            k.a.b.a.d.g0.v$b r0 = r8.v
            k.a.b.a.d.g0.v$b r1 = k.a.b.a.d.g0.v.b.SERVER
            r2 = 0
            r3 = 1
            if (r0 != r1) goto L_0x0027
            k.a.b.a.b.f r0 = r8.u
            if (r0 != 0) goto L_0x001f
            java.lang.String[] r0 = new java.lang.String[r2]
            goto L_0x0044
        L_0x001f:
            java.lang.String[] r1 = new java.lang.String[r3]
            java.lang.String r0 = r0.x
            r1[r2] = r0
            r0 = r1
            goto L_0x0044
        L_0x0027:
            k.a.b.a.d.g0.v$b r1 = k.a.b.a.d.g0.v.b.CLIENT
            if (r0 != r1) goto L_0x0087
            k.a.b.a.b.f[] r0 = r8.t
            if (r0 != 0) goto L_0x0032
            java.lang.String[] r0 = new java.lang.String[r2]
            goto L_0x0044
        L_0x0032:
            int r0 = r0.length
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = 0
        L_0x0036:
            k.a.b.a.b.f[] r4 = r8.t
            int r5 = r4.length
            if (r1 >= r5) goto L_0x0044
            r4 = r4[r1]
            java.lang.String r4 = r4.x
            r0[r1] = r4
            int r1 = r1 + 1
            goto L_0x0036
        L_0x0044:
            com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslHandler r1 = r6.saslHandler     // Catch:{ Exception -> 0x0083 }
            java.lang.String r0 = r1.chooseSaslMechanism(r0)     // Catch:{ Exception -> 0x0083 }
            java.lang.String[] r1 = new java.lang.String[r3]     // Catch:{ Exception -> 0x0083 }
            r1[r2] = r0     // Catch:{ Exception -> 0x0083 }
            r8.a((java.lang.String[]) r1)     // Catch:{ Exception -> 0x0083 }
            java.lang.String r1 = "PLAIN"
            boolean r1 = r1.equalsIgnoreCase(r0)     // Catch:{ Exception -> 0x0083 }
            if (r1 == 0) goto L_0x0068
            com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslHandler r1 = r6.saslHandler     // Catch:{ Exception -> 0x0083 }
            java.lang.String r1 = r1.getPlainUsername()     // Catch:{ Exception -> 0x0083 }
            com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslHandler r3 = r6.saslHandler     // Catch:{ Exception -> 0x0083 }
            java.lang.String r3 = r3.getPlainPassword()     // Catch:{ Exception -> 0x0083 }
            r8.a(r1, r3)     // Catch:{ Exception -> 0x0083 }
        L_0x0068:
            com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslHandler r8 = r6.saslHandler     // Catch:{ Exception -> 0x0083 }
            byte[] r8 = r8.getInitPayload(r0)     // Catch:{ Exception -> 0x0083 }
            if (r8 == 0) goto L_0x0086
            int r0 = r8.length     // Catch:{ Exception -> 0x0083 }
            if (r0 <= 0) goto L_0x0086
            int r0 = r8.length     // Catch:{ Exception -> 0x0083 }
            k.a.b.a.d.g0.v r7 = (k.a.b.a.d.g0.v) r7     // Catch:{ Exception -> 0x0083 }
            byte[] r1 = new byte[r0]     // Catch:{ Exception -> 0x0083 }
            java.lang.System.arraycopy(r8, r2, r1, r2, r0)     // Catch:{ Exception -> 0x0083 }
            k.a.b.a.b.a r8 = new k.a.b.a.b.a     // Catch:{ Exception -> 0x0083 }
            r8.<init>(r1)     // Catch:{ Exception -> 0x0083 }
            r7.f1925k = r8     // Catch:{ Exception -> 0x0083 }
            goto L_0x0086
        L_0x0083:
            r7 = move-exception
            r6.savedException = r7
        L_0x0086:
            return
        L_0x0087:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            r7.<init>()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslListenerImpl.onSaslMechanisms(k.a.b.a.d.v, k.a.b.a.d.c0):void");
    }

    public void onSaslOutcome(v vVar, c0 c0Var) {
        if (vVar == null) {
            this.savedException = new IllegalArgumentException("Sasl cannot be null");
            return;
        }
        try {
            int ordinal = ((k.a.b.a.d.g0.v) vVar).p.ordinal();
            if (ordinal == 0) {
                throw new IllegalStateException("Sasl negotiation did not finish yet");
            } else if (ordinal == 1) {
                this.saslHandler.handleOutcome(SaslHandler.SaslOutcome.OK);
            } else if (ordinal == 2) {
                this.saslHandler.handleOutcome(SaslHandler.SaslOutcome.AUTH);
            } else if (ordinal == 4) {
                this.saslHandler.handleOutcome(SaslHandler.SaslOutcome.SYS_PERM);
            } else if (ordinal != 5) {
                this.saslHandler.handleOutcome(SaslHandler.SaslOutcome.SYS);
            } else {
                this.saslHandler.handleOutcome(SaslHandler.SaslOutcome.SYS_TEMP);
            }
        } catch (Exception e2) {
            this.savedException = e2;
        }
    }

    public void onSaslResponse(v vVar, c0 c0Var) {
    }
}
