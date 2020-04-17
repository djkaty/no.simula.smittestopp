package com.microsoft.appcenter.channel;

import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.ingestion.Ingestion;
import com.microsoft.appcenter.ingestion.OneCollectorIngestion;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaLog;
import com.microsoft.appcenter.ingestion.models.one.SdkExtension;
import com.microsoft.appcenter.utils.AppCenterLog;
import e.a.a.a.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class OneCollectorChannelListener extends AbstractChannelListener {
    public static final String ONE_COLLECTOR_GROUP_NAME_SUFFIX = "/one";
    public static final int ONE_COLLECTOR_TRIGGER_COUNT = 50;
    public static final int ONE_COLLECTOR_TRIGGER_MAX_PARALLEL_REQUESTS = 2;
    public final Channel mChannel;
    public final Map<String, EpochAndSeq> mEpochsAndSeqsByIKey;
    public final Ingestion mIngestion;
    public final UUID mInstallId;
    public final LogSerializer mLogSerializer;

    public static class EpochAndSeq {
        public final String epoch;
        public long seq;

        public EpochAndSeq(String str) {
            this.epoch = str;
        }
    }

    public OneCollectorChannelListener(Channel channel, LogSerializer logSerializer, HttpClient httpClient, UUID uuid) {
        this(new OneCollectorIngestion(httpClient, logSerializer), channel, logSerializer, uuid);
    }

    public static String getOneCollectorGroupName(String str) {
        return a.b(str, ONE_COLLECTOR_GROUP_NAME_SUFFIX);
    }

    public static boolean isOneCollectorCompatible(Log log) {
        return !(log instanceof CommonSchemaLog) && !log.getTransmissionTargetTokens().isEmpty();
    }

    public static boolean isOneCollectorGroup(String str) {
        return str.endsWith(ONE_COLLECTOR_GROUP_NAME_SUFFIX);
    }

    public void onClear(String str) {
        if (!isOneCollectorGroup(str)) {
            this.mChannel.clear(getOneCollectorGroupName(str));
        }
    }

    public void onGloballyEnabled(boolean z) {
        if (!z) {
            this.mEpochsAndSeqsByIKey.clear();
        }
    }

    public void onGroupAdded(String str, Channel.GroupListener groupListener, long j2) {
        if (!isOneCollectorGroup(str)) {
            this.mChannel.addGroup(getOneCollectorGroupName(str), 50, j2, 2, this.mIngestion, groupListener);
        }
    }

    public void onGroupRemoved(String str) {
        if (!isOneCollectorGroup(str)) {
            this.mChannel.removeGroup(getOneCollectorGroupName(str));
        }
    }

    public void onPaused(String str, String str2) {
        if (!isOneCollectorGroup(str)) {
            this.mChannel.pauseGroup(getOneCollectorGroupName(str), str2);
        }
    }

    public void onPreparedLog(Log log, String str, int i2) {
        if (isOneCollectorCompatible(log)) {
            try {
                Collection<CommonSchemaLog> commonSchemaLog = this.mLogSerializer.toCommonSchemaLog(log);
                for (CommonSchemaLog next : commonSchemaLog) {
                    next.setFlags(Long.valueOf((long) i2));
                    EpochAndSeq epochAndSeq = this.mEpochsAndSeqsByIKey.get(next.getIKey());
                    if (epochAndSeq == null) {
                        epochAndSeq = new EpochAndSeq(UUID.randomUUID().toString());
                        this.mEpochsAndSeqsByIKey.put(next.getIKey(), epochAndSeq);
                    }
                    SdkExtension sdk = next.getExt().getSdk();
                    sdk.setEpoch(epochAndSeq.epoch);
                    long j2 = epochAndSeq.seq + 1;
                    epochAndSeq.seq = j2;
                    sdk.setSeq(Long.valueOf(j2));
                    sdk.setInstallId(this.mInstallId);
                }
                String oneCollectorGroupName = getOneCollectorGroupName(str);
                for (CommonSchemaLog enqueue : commonSchemaLog) {
                    this.mChannel.enqueue(enqueue, oneCollectorGroupName, i2);
                }
            } catch (IllegalArgumentException e2) {
                StringBuilder a = a.a("Cannot send a log to one collector: ");
                a.append(e2.getMessage());
                AppCenterLog.error("AppCenter", a.toString());
            }
        }
    }

    public void onResumed(String str, String str2) {
        if (!isOneCollectorGroup(str)) {
            this.mChannel.resumeGroup(getOneCollectorGroupName(str), str2);
        }
    }

    public void setLogUrl(String str) {
        this.mIngestion.setLogUrl(str);
    }

    public boolean shouldFilter(Log log) {
        return isOneCollectorCompatible(log);
    }

    public OneCollectorChannelListener(OneCollectorIngestion oneCollectorIngestion, Channel channel, LogSerializer logSerializer, UUID uuid) {
        this.mEpochsAndSeqsByIKey = new HashMap();
        this.mChannel = channel;
        this.mLogSerializer = logSerializer;
        this.mInstallId = uuid;
        this.mIngestion = oneCollectorIngestion;
    }
}
