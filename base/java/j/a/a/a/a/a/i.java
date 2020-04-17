package j.a.a.a.a.a;

import android.os.ParcelUuid;
import android.util.Log;
import android.util.SparseArray;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class i {
    public final int a;
    public final List<ParcelUuid> b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseArray<byte[]> f1468c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<ParcelUuid, byte[]> f1469d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1470e;

    /* renamed from: f  reason: collision with root package name */
    public final String f1471f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f1472g;

    public i(List<ParcelUuid> list, SparseArray<byte[]> sparseArray, Map<ParcelUuid, byte[]> map, int i2, int i3, String str, byte[] bArr) {
        this.b = list;
        this.f1468c = sparseArray;
        this.f1469d = map;
        this.f1471f = str;
        this.a = i2;
        this.f1470e = i3;
        this.f1472g = bArr;
    }

    public static i a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int i2 = 0;
        ArrayList arrayList = null;
        SparseArray sparseArray = null;
        HashMap hashMap = null;
        String str = null;
        byte b2 = -1;
        byte b3 = -2147483648;
        while (true) {
            try {
                if (i2 < bArr.length) {
                    int i3 = i2 + 1;
                    byte b4 = bArr[i2] & 255;
                    if (b4 != 0) {
                        int i4 = b4 - 1;
                        int i5 = i3 + 1;
                        byte b5 = bArr[i3] & 255;
                        int i6 = 16;
                        if (b5 != 22) {
                            if (b5 != 255) {
                                if (!(b5 == 32 || b5 == 33)) {
                                    switch (b5) {
                                        case 1:
                                            b2 = bArr[i5] & 255;
                                            break;
                                        case 2:
                                        case 3:
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            a(bArr, i5, i4, 2, arrayList);
                                            break;
                                        case 4:
                                        case 5:
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            a(bArr, i5, i4, 4, arrayList);
                                            break;
                                        case 6:
                                        case 7:
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            a(bArr, i5, i4, 16, arrayList);
                                            break;
                                        case 8:
                                        case 9:
                                            str = new String(a(bArr, i5, i4));
                                            break;
                                        case 10:
                                            b3 = bArr[i5];
                                            break;
                                    }
                                }
                            } else {
                                int i7 = ((bArr[i5 + 1] & 255) << 8) + (255 & bArr[i5]);
                                byte[] a2 = a(bArr, i5 + 2, i4 - 2);
                                if (sparseArray == null) {
                                    sparseArray = new SparseArray();
                                }
                                sparseArray.put(i7, a2);
                            }
                            i2 = i4 + i5;
                        }
                        if (b5 == 32) {
                            i6 = 4;
                        } else if (b5 != 33) {
                            i6 = 2;
                        }
                        ParcelUuid a3 = e.a(a(bArr, i5, i6));
                        byte[] a4 = a(bArr, i5 + i6, i4 - i6);
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        hashMap.put(a3, a4);
                        i2 = i4 + i5;
                    }
                }
            } catch (Exception unused) {
                StringBuilder a5 = a.a("unable to parse scan record: ");
                a5.append(Arrays.toString(bArr));
                Log.e("ScanRecord", a5.toString());
                return new i((List<ParcelUuid>) null, (SparseArray<byte[]>) null, (Map<ParcelUuid, byte[]>) null, -1, Integer.MIN_VALUE, (String) null, bArr);
            }
        }
        return new i(arrayList, sparseArray, hashMap, b2, b3, str, bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f1472g, ((i) obj).f1472g);
    }

    public String toString() {
        String str;
        StringBuilder a2 = a.a("ScanRecord [advertiseFlags=");
        a2.append(this.a);
        a2.append(", serviceUuids=");
        a2.append(this.b);
        a2.append(", manufacturerSpecificData=");
        SparseArray<byte[]> sparseArray = this.f1468c;
        String str2 = "{}";
        if (sparseArray == null) {
            str = "null";
        } else if (sparseArray.size() == 0) {
            str = str2;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('{');
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                sb.append(sparseArray.keyAt(i2));
                sb.append("=");
                sb.append(Arrays.toString(sparseArray.valueAt(i2)));
            }
            sb.append('}');
            str = sb.toString();
        }
        a2.append(str);
        a2.append(", serviceData=");
        Map<ParcelUuid, byte[]> map = this.f1469d;
        if (map == null) {
            str2 = "null";
        } else if (!map.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('{');
            Iterator<Map.Entry<ParcelUuid, byte[]>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Object key = it.next().getKey();
                sb2.append(key);
                sb2.append("=");
                sb2.append(Arrays.toString(map.get(key)));
                if (it.hasNext()) {
                    sb2.append(", ");
                }
            }
            sb2.append('}');
            str2 = sb2.toString();
        }
        a2.append(str2);
        a2.append(", txPowerLevel=");
        a2.append(this.f1470e);
        a2.append(", deviceName=");
        return a.a(a2, this.f1471f, "]");
    }

    public static int a(byte[] bArr, int i2, int i3, int i4, List<ParcelUuid> list) {
        while (i3 > 0) {
            list.add(e.a(a(bArr, i2, i4)));
            i3 -= i4;
            i2 += i4;
        }
        return i2;
    }

    public static byte[] a(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        return bArr2;
    }
}
