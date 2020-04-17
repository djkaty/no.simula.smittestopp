package com.microsoft.identity.client;

import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AccountAdapter {
    public static final String TAG = "AccountAdapter";
    public static final CacheRecordFilter guestAccountsWithNoHomeTenantAccountFilter = new CacheRecordFilter() {
        private boolean hasNoCorrespondingHomeAccount(ICacheRecord iCacheRecord, final List<ICacheRecord> list) {
            return !new ArrayList<String>() {
                {
                    for (ICacheRecord account : list) {
                        add(account.getAccount().getHomeAccountId());
                    }
                }
            }.contains(iCacheRecord.getAccount().getHomeAccountId());
        }

        public List<ICacheRecord> filter(List<ICacheRecord> list) {
            ArrayList arrayList = new ArrayList();
            List access$100 = AccountAdapter.filterCacheRecords(list, new HomeAccountFilter());
            for (ICacheRecord iCacheRecord : AccountAdapter.filterCacheRecords(list, new GuestAccountFilter())) {
                if (hasNoCorrespondingHomeAccount(iCacheRecord, access$100)) {
                    arrayList.add(iCacheRecord);
                }
            }
            return arrayList;
        }
    };

    public interface CacheRecordFilter {
        List<ICacheRecord> filter(List<ICacheRecord> list);
    }

    public static class GuestAccountFilter implements CacheRecordFilter {
        public GuestAccountFilter() {
        }

        public List<ICacheRecord> filter(List<ICacheRecord> list) {
            ArrayList arrayList = new ArrayList();
            for (ICacheRecord next : list) {
                if (!next.getAccount().getHomeAccountId().contains(next.getAccount().getLocalAccountId())) {
                    arrayList.add(next);
                }
            }
            return arrayList;
        }
    }

    public static class HomeAccountFilter implements CacheRecordFilter {
        public HomeAccountFilter() {
        }

        public List<ICacheRecord> filter(List<ICacheRecord> list) {
            ArrayList arrayList = new ArrayList();
            for (ICacheRecord next : list) {
                if (next.getAccount().getHomeAccountId().contains(next.getAccount().getLocalAccountId())) {
                    arrayList.add(next);
                }
            }
            return arrayList;
        }
    }

    public static List<IAccount> adapt(List<ICacheRecord> list) {
        List<ICacheRecord> filterCacheRecords = filterCacheRecords(list, new HomeAccountFilter());
        List<ICacheRecord> filterCacheRecords2 = filterCacheRecords(list, new GuestAccountFilter());
        List<ICacheRecord> filterCacheRecords3 = filterCacheRecords(list, guestAccountsWithNoHomeTenantAccountFilter);
        filterCacheRecords2.removeAll(filterCacheRecords3);
        List<IAccount> createRootAccounts = createRootAccounts(filterCacheRecords);
        appendChildren(createRootAccounts, filterCacheRecords2);
        createRootAccounts.addAll(createIAccountsForGuestsNotSignedIntoHomeTenant(filterCacheRecords3));
        return createRootAccounts;
    }

    public static void appendChildren(List<IAccount> list, List<ICacheRecord> list2) {
        for (IAccount next : list) {
            HashMap hashMap = new HashMap();
            for (ICacheRecord next2 : list2) {
                if (next2.getAccount().getHomeAccountId().contains(next.getId())) {
                    hashMap.put(next2.getAccount().getRealm(), new TenantProfile((String) null, getIdToken(next2)));
                }
            }
            ((MultiTenantAccount) next).setTenantProfiles(hashMap);
        }
    }

    public static List<IAccount> createIAccountsForGuestsNotSignedIntoHomeTenant(List<ICacheRecord> list) {
        HashMap hashMap = new HashMap();
        for (ICacheRecord next : list) {
            String homeAccountId = next.getAccount().getHomeAccountId();
            if (hashMap.get(homeAccountId) == null) {
                hashMap.put(homeAccountId, new ArrayList());
            }
            ((List) hashMap.get(homeAccountId)).add(next);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            MultiTenantAccount multiTenantAccount = new MultiTenantAccount((String) null, (IDToken) null);
            multiTenantAccount.setId((String) StringUtil.getTenantInfo((String) entry.getKey()).first);
            multiTenantAccount.setTenantId((String) StringUtil.getTenantInfo((String) entry.getKey()).second);
            multiTenantAccount.setEnvironment(((ICacheRecord) ((List) entry.getValue()).get(0)).getAccount().getEnvironment());
            HashMap hashMap2 = new HashMap();
            for (ICacheRecord iCacheRecord : (List) entry.getValue()) {
                hashMap2.put(iCacheRecord.getAccount().getRealm(), new TenantProfile((String) null, getIdToken(iCacheRecord)));
            }
            multiTenantAccount.setTenantProfiles(hashMap2);
            arrayList.add(multiTenantAccount);
        }
        return arrayList;
    }

    public static List<IAccount> createRootAccounts(List<ICacheRecord> list) {
        ArrayList arrayList = new ArrayList();
        for (ICacheRecord next : list) {
            MultiTenantAccount multiTenantAccount = new MultiTenantAccount(next.getAccount().getClientInfo(), getIdToken(next));
            multiTenantAccount.setTenantId((String) StringUtil.getTenantInfo(next.getAccount().getHomeAccountId()).second);
            multiTenantAccount.setEnvironment(next.getAccount().getEnvironment());
            arrayList.add(multiTenantAccount);
        }
        return arrayList;
    }

    public static List<ICacheRecord> filterCacheRecords(List<ICacheRecord> list, CacheRecordFilter cacheRecordFilter) {
        return cacheRecordFilter.filter(list);
    }

    public static AccountRecord getAccountInternal(String str, OAuth2TokenCache oAuth2TokenCache, String str2, String str3) {
        if (!StringUtil.isEmpty(str2)) {
            return oAuth2TokenCache.getAccount((String) null, str, str2, str3);
        }
        Logger.warn(TAG, "homeAccountIdentifier was null or empty -- invalid criteria");
        return null;
    }

    public static IDToken getIdToken(ICacheRecord iCacheRecord) {
        String str;
        if (iCacheRecord.getIdToken() != null) {
            str = iCacheRecord.getIdToken().getSecret();
        } else if (iCacheRecord.getV1IdToken() == null) {
            return null;
        } else {
            str = iCacheRecord.getV1IdToken().getSecret();
        }
        try {
            return new IDToken(str);
        } catch (ServiceException unused) {
            throw new IllegalStateException("Failed to restore IdToken");
        }
    }
}
