package com.microsoft.appcenter.ingestion.models;

import java.util.List;

public class LogContainer {
    public List<Log> logs;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LogContainer.class != obj.getClass()) {
            return false;
        }
        List<Log> list = this.logs;
        List<Log> list2 = ((LogContainer) obj).logs;
        if (list != null) {
            return list.equals(list2);
        }
        if (list2 == null) {
            return true;
        }
        return false;
    }

    public List<Log> getLogs() {
        return this.logs;
    }

    public int hashCode() {
        List<Log> list = this.logs;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public void setLogs(List<Log> list) {
        this.logs = list;
    }
}
