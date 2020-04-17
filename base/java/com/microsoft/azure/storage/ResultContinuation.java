package com.microsoft.azure.storage;

public final class ResultContinuation {
    public ResultContinuationType continuationType;
    public String nextMarker;
    public String nextPartitionKey;
    public String nextRowKey;
    public String nextTableName;
    public StorageLocation targetLocation;

    public ResultContinuationType getContinuationType() {
        return this.continuationType;
    }

    public String getNextMarker() {
        return this.nextMarker;
    }

    public String getNextPartitionKey() {
        return this.nextPartitionKey;
    }

    public String getNextRowKey() {
        return this.nextRowKey;
    }

    public String getNextTableName() {
        return this.nextTableName;
    }

    public StorageLocation getTargetLocation() {
        return this.targetLocation;
    }

    public boolean hasContinuation() {
        return (getNextMarker() == null && this.nextPartitionKey == null && this.nextRowKey == null && this.nextTableName == null) ? false : true;
    }

    public void setContinuationType(ResultContinuationType resultContinuationType) {
        this.continuationType = resultContinuationType;
    }

    public void setNextMarker(String str) {
        this.nextMarker = str;
    }

    public void setNextPartitionKey(String str) {
        this.nextPartitionKey = str;
    }

    public void setNextRowKey(String str) {
        this.nextRowKey = str;
    }

    public void setNextTableName(String str) {
        this.nextTableName = str;
    }

    public void setTargetLocation(StorageLocation storageLocation) {
        this.targetLocation = storageLocation;
    }
}
