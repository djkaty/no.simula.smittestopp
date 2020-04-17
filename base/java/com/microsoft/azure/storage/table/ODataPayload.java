package com.microsoft.azure.storage.table;

import java.util.ArrayList;

public final class ODataPayload<T> {
    public ArrayList<T> results = new ArrayList<>();
    public ArrayList<TableResult> tableResults = new ArrayList<>();
}
