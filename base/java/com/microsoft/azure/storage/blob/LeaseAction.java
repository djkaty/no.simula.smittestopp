package com.microsoft.azure.storage.blob;

public enum LeaseAction {
    ACQUIRE,
    RENEW,
    RELEASE,
    BREAK,
    CHANGE;

    /* renamed from: com.microsoft.azure.storage.blob.LeaseAction$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$blob$LeaseAction = null;

        /* JADX WARNING: Can't wrap try/catch for region: R(13:0|(2:1|2)|3|(2:5|6)|7|9|10|11|13|14|15|16|18) */
        /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0024 */
        static {
            /*
                com.microsoft.azure.storage.blob.LeaseAction[] r0 = com.microsoft.azure.storage.blob.LeaseAction.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$blob$LeaseAction = r0
                r1 = 1
                com.microsoft.azure.storage.blob.LeaseAction r2 = com.microsoft.azure.storage.blob.LeaseAction.ACQUIRE     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$azure$storage$blob$LeaseAction     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.storage.blob.LeaseAction r3 = com.microsoft.azure.storage.blob.LeaseAction.RENEW     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r1 = 3
                int[] r2 = $SwitchMap$com$microsoft$azure$storage$blob$LeaseAction     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.storage.blob.LeaseAction r3 = com.microsoft.azure.storage.blob.LeaseAction.RELEASE     // Catch:{ NoSuchFieldError -> 0x001d }
                r2[r0] = r1     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                r0 = 4
                int[] r2 = $SwitchMap$com$microsoft$azure$storage$blob$LeaseAction     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.azure.storage.blob.LeaseAction r3 = com.microsoft.azure.storage.blob.LeaseAction.BREAK     // Catch:{ NoSuchFieldError -> 0x0024 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                int[] r1 = $SwitchMap$com$microsoft$azure$storage$blob$LeaseAction     // Catch:{ NoSuchFieldError -> 0x002b }
                com.microsoft.azure.storage.blob.LeaseAction r2 = com.microsoft.azure.storage.blob.LeaseAction.CHANGE     // Catch:{ NoSuchFieldError -> 0x002b }
                r2 = 5
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.blob.LeaseAction.AnonymousClass1.<clinit>():void");
        }
    }

    public String toString() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return "Acquire";
        }
        if (ordinal == 1) {
            return "Renew";
        }
        if (ordinal == 2) {
            return "Release";
        }
        if (ordinal != 3) {
            return ordinal != 4 ? "" : "Change";
        }
        return "Break";
    }
}
