package com.microsoft.identity.client.internal.configuration;

import com.microsoft.identity.client.Logger;
import e.c.c.h;
import e.c.c.i;
import e.c.c.j;
import java.lang.reflect.Type;
import java.util.Locale;

public class LogLevelDeserializer implements i<Logger.LogLevel> {
    public Logger.LogLevel deserialize(j jVar, Type type, h hVar) {
        return Logger.LogLevel.valueOf(jVar.f().toUpperCase(Locale.US));
    }
}
