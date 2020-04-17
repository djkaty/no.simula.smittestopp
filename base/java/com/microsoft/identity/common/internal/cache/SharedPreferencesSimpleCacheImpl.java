package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.lang.reflect.Type;
import java.util.HashSet;
import java.util.List;

public abstract class SharedPreferencesSimpleCacheImpl<T> implements ISimpleCache<T> {
    public static final String EMPTY_ARRAY = "[]";
    public static final String TAG = "SharedPreferencesSimpleCacheImpl";
    public final Gson mGson = new Gson();
    public final String mKeySingleEntry;
    public final SharedPreferences mSharedPrefs;

    public SharedPreferencesSimpleCacheImpl(Context context, String str, String str2) {
        a.b(new StringBuilder(), TAG, "::ctor", "Init");
        this.mSharedPrefs = context.getSharedPreferences(str, 0);
        this.mKeySingleEntry = str2;
    }

    public boolean clear() {
        boolean commit = this.mSharedPrefs.edit().clear().commit();
        if (!commit) {
            a.c(new StringBuilder(), TAG, ":clear", "Failed to clear cache.");
        } else {
            a.b(new StringBuilder(), TAG, ":clear", "Cache successfully cleared.");
        }
        return commit;
    }

    public List<T> getAll() {
        List<T> list = (List) this.mGson.a(this.mSharedPrefs.getString(this.mKeySingleEntry, EMPTY_ARRAY), getListTypeToken());
        String a = a.a(new StringBuilder(), TAG, ":getAll");
        StringBuilder a2 = a.a("Found [");
        a2.append(list.size());
        a2.append("] cache entries.");
        Logger.verbose(a, a2.toString());
        return list;
    }

    public abstract Type getListTypeToken();

    public boolean insert(T t) {
        HashSet hashSet = new HashSet(getAll());
        String a = a.a(new StringBuilder(), TAG, ":insert");
        StringBuilder a2 = a.a("Existing metadata contained [");
        a2.append(hashSet.size());
        a2.append("] elements.");
        Logger.verbose(a, a2.toString());
        hashSet.add(t);
        String a3 = a.a(new StringBuilder(), TAG, ":insert");
        StringBuilder a4 = a.a("New metadata set size: [");
        a4.append(hashSet.size());
        a4.append("]");
        Logger.verbose(a3, a4.toString());
        String a5 = this.mGson.a((Object) hashSet);
        a.b(new StringBuilder(), TAG, ":insert", "Writing cache entry.");
        boolean commit = this.mSharedPrefs.edit().putString(this.mKeySingleEntry, a5).commit();
        if (commit) {
            a.b(new StringBuilder(), TAG, ":insert", "Cache successfully updated.");
        } else {
            a.c(new StringBuilder(), TAG, ":insert", "Error writing to cache.");
        }
        return commit;
    }

    public boolean remove(T t) {
        HashSet hashSet = new HashSet(getAll());
        String a = a.a(new StringBuilder(), TAG, ":remove");
        StringBuilder a2 = a.a("Existing metadata contained [");
        a2.append(hashSet.size());
        a2.append("] elements.");
        Logger.verbose(a, a2.toString());
        boolean remove = hashSet.remove(t);
        String a3 = a.a(new StringBuilder(), TAG, ":remove");
        StringBuilder a4 = a.a("New metadata set size: [");
        a4.append(hashSet.size());
        a4.append("]");
        Logger.verbose(a3, a4.toString());
        if (!remove) {
            a.c(new StringBuilder(), TAG, ":remove", "Nothing to delete -- cache entry is missing!");
            return true;
        }
        String a5 = this.mGson.a((Object) hashSet);
        a.b(new StringBuilder(), TAG, ":remove", "Writing new cache values...");
        boolean commit = this.mSharedPrefs.edit().putString(this.mKeySingleEntry, a5).commit();
        String a6 = a.a(new StringBuilder(), TAG, ":remove");
        Logger.verbose(a6, "Updated cache contents written? [" + commit + "]");
        return commit;
    }
}
