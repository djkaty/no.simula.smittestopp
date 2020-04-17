package defpackage;

import com.microsoft.azure.storage.Constants;

/* renamed from: b  reason: default package */
public /* synthetic */ class b {
    public static /* synthetic */ String a(CharSequence charSequence, CharSequence[] charSequenceArr) {
        if (charSequence != null) {
            StringBuilder sb = new StringBuilder();
            if (charSequenceArr.length > 0) {
                sb.append(charSequenceArr[0]);
                for (int i2 = 1; i2 < charSequenceArr.length; i2++) {
                    sb.append(charSequence);
                    sb.append(charSequenceArr[i2]);
                }
            }
            return sb.toString();
        }
        throw new NullPointerException(Constants.QueryConstants.DELIMITER);
    }
}
