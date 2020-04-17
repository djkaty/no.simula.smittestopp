package j.a.a.a.a.a;

import android.os.ParcelUuid;
import e.a.a.a.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

public final class e {
    public static final ParcelUuid a = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");

    public static ParcelUuid a(byte[] bArr) {
        long j2;
        if (bArr != null) {
            int length = bArr.length;
            if (length != 2 && length != 4 && length != 16) {
                throw new IllegalArgumentException(a.a("uuidBytes length invalid - ", length));
            } else if (length == 16) {
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                return new ParcelUuid(new UUID(order.getLong(8), order.getLong(0)));
            } else {
                if (length == 2) {
                    j2 = ((long) (bArr[0] & 255)) + ((long) ((bArr[1] & 255) << 8));
                } else {
                    j2 = ((long) ((bArr[3] & 255) << 24)) + ((long) (bArr[0] & 255)) + ((long) ((bArr[1] & 255) << 8)) + ((long) ((bArr[2] & 255) << 16));
                }
                return new ParcelUuid(new UUID(a.getUuid().getMostSignificantBits() + (j2 << 32), a.getUuid().getLeastSignificantBits()));
            }
        } else {
            throw new IllegalArgumentException("uuidBytes cannot be null");
        }
    }
}
