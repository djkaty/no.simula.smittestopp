package com.microsoft.appcenter.ingestion.models.json;

import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaLog;
import java.util.Collection;

public interface LogSerializer {
    void addLogFactory(String str, LogFactory logFactory);

    LogContainer deserializeContainer(String str, String str2);

    Log deserializeLog(String str, String str2);

    String serializeContainer(LogContainer logContainer);

    String serializeLog(Log log);

    Collection<CommonSchemaLog> toCommonSchemaLog(Log log);
}
