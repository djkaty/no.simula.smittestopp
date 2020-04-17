package com.microsoft.azure.storage.table;

public enum TableOperationType {
    INSERT,
    DELETE,
    REPLACE,
    RETRIEVE,
    MERGE,
    INSERT_OR_REPLACE,
    INSERT_OR_MERGE;

    public TableUpdateType getUpdateType() {
        if (this == INSERT_OR_MERGE) {
            return TableUpdateType.MERGE;
        }
        if (this == INSERT_OR_REPLACE) {
            return TableUpdateType.REPLACE;
        }
        return null;
    }
}
