package com.microsoft.azure.storage;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import javax.xml.stream.XMLStreamWriter;

public final class ServicePropertiesSerializer {
    public static String joinToString(Iterable<?> iterable, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static byte[] serializeToByteArray(ServiceProperties serviceProperties) {
        StringWriter stringWriter = new StringWriter();
        XMLStreamWriter createXMLStreamWriter = Utility.createXMLStreamWriter(stringWriter);
        createXMLStreamWriter.writeStartDocument();
        createXMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.STORAGE_SERVICE_PROPERTIES_ELEMENT);
        if (serviceProperties.getLogging() != null) {
            writeLoggingProperties(createXMLStreamWriter, serviceProperties.getLogging());
        }
        if (serviceProperties.getHourMetrics() != null) {
            writeMetricsProperties(createXMLStreamWriter, serviceProperties.getHourMetrics(), Constants.AnalyticsConstants.HOUR_METRICS_ELEMENT);
        }
        if (serviceProperties.getMinuteMetrics() != null) {
            writeMetricsProperties(createXMLStreamWriter, serviceProperties.getMinuteMetrics(), Constants.AnalyticsConstants.MINUTE_METRICS_ELEMENT);
        }
        if (serviceProperties.getCors() != null) {
            writeCorsProperties(createXMLStreamWriter, serviceProperties.getCors());
        }
        if (serviceProperties.getDefaultServiceVersion() != null) {
            createXMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.DEFAULT_SERVICE_VERSION);
            createXMLStreamWriter.writeCharacters(serviceProperties.getDefaultServiceVersion());
            createXMLStreamWriter.writeEndElement();
        }
        if (serviceProperties.getDeleteRetentionPolicy() != null) {
            writeDeleteRetentionPolicy(createXMLStreamWriter, serviceProperties.getDeleteRetentionPolicy());
        }
        if (serviceProperties.getStaticWebsiteProperties() != null) {
            writeStaticWebsiteProperties(createXMLStreamWriter, serviceProperties.getStaticWebsiteProperties());
        }
        createXMLStreamWriter.writeEndElement();
        createXMLStreamWriter.writeEndDocument();
        try {
            return stringWriter.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

    public static void writeCorsProperties(XMLStreamWriter xMLStreamWriter, CorsProperties corsProperties) {
        Utility.assertNotNull("CorsRules", corsProperties.getCorsRules());
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.CORS_ELEMENT);
        for (CorsRule next : corsProperties.getCorsRules()) {
            if (next.getAllowedOrigins().isEmpty() || next.getAllowedMethods().isEmpty() || next.getMaxAgeInSeconds() < 0) {
                throw new IllegalArgumentException(SR.INVALID_CORS_RULE);
            }
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.CORS_RULE_ELEMENT);
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.ALLOWED_ORIGINS_ELEMENT);
            xMLStreamWriter.writeCharacters(joinToString(next.getAllowedOrigins(), ","));
            xMLStreamWriter.writeEndElement();
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.ALLOWED_METHODS_ELEMENT);
            xMLStreamWriter.writeCharacters(joinToString(next.getAllowedMethods(), ","));
            xMLStreamWriter.writeEndElement();
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.EXPOSED_HEADERS_ELEMENT);
            xMLStreamWriter.writeCharacters(joinToString(next.getExposedHeaders(), ","));
            xMLStreamWriter.writeEndElement();
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.ALLOWED_HEADERS_ELEMENT);
            xMLStreamWriter.writeCharacters(joinToString(next.getAllowedHeaders(), ","));
            xMLStreamWriter.writeEndElement();
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.MAX_AGE_IN_SECONDS_ELEMENT);
            xMLStreamWriter.writeCharacters(Integer.toString(next.getMaxAgeInSeconds()));
            xMLStreamWriter.writeEndElement();
            xMLStreamWriter.writeEndElement();
        }
        xMLStreamWriter.writeEndElement();
    }

    public static void writeDeleteRetentionPolicy(XMLStreamWriter xMLStreamWriter, DeleteRetentionPolicy deleteRetentionPolicy) {
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.DELETE_RETENTION_POLICY_ELEMENT);
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.ENABLED_ELEMENT);
        xMLStreamWriter.writeCharacters(deleteRetentionPolicy.getEnabled() ? "true" : "false");
        xMLStreamWriter.writeEndElement();
        if (deleteRetentionPolicy.getEnabled()) {
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.DAYS_ELEMENT);
            xMLStreamWriter.writeCharacters(deleteRetentionPolicy.getRetentionIntervalInDays().toString());
            xMLStreamWriter.writeEndElement();
        }
        xMLStreamWriter.writeEndElement();
    }

    public static void writeLoggingProperties(XMLStreamWriter xMLStreamWriter, LoggingProperties loggingProperties) {
        String str;
        Utility.assertNotNull("logging.LogOperationTypes", loggingProperties.getLogOperationTypes());
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.LOGGING_ELEMENT);
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.VERSION_ELEMENT);
        xMLStreamWriter.writeCharacters(loggingProperties.getVersion());
        xMLStreamWriter.writeEndElement();
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.DELETE_ELEMENT);
        String str2 = "true";
        xMLStreamWriter.writeCharacters(loggingProperties.getLogOperationTypes().contains(LoggingOperations.DELETE) ? str2 : "false");
        xMLStreamWriter.writeEndElement();
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.READ_ELEMENT);
        if (loggingProperties.getLogOperationTypes().contains(LoggingOperations.READ)) {
            str = str2;
        } else {
            str = "false";
        }
        xMLStreamWriter.writeCharacters(str);
        xMLStreamWriter.writeEndElement();
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.WRITE_ELEMENT);
        if (!loggingProperties.getLogOperationTypes().contains(LoggingOperations.WRITE)) {
            str2 = "false";
        }
        xMLStreamWriter.writeCharacters(str2);
        xMLStreamWriter.writeEndElement();
        writeRetentionPolicy(xMLStreamWriter, loggingProperties.getRetentionIntervalInDays());
        xMLStreamWriter.writeEndElement();
    }

    public static void writeMetricsProperties(XMLStreamWriter xMLStreamWriter, MetricsProperties metricsProperties, String str) {
        Utility.assertNotNull("metrics.Configuration", metricsProperties.getMetricsLevel());
        xMLStreamWriter.writeStartElement(str);
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.VERSION_ELEMENT);
        xMLStreamWriter.writeCharacters(metricsProperties.getVersion());
        xMLStreamWriter.writeEndElement();
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.ENABLED_ELEMENT);
        String str2 = "true";
        xMLStreamWriter.writeCharacters(metricsProperties.getMetricsLevel() != MetricsLevel.DISABLED ? str2 : "false");
        xMLStreamWriter.writeEndElement();
        if (metricsProperties.getMetricsLevel() != MetricsLevel.DISABLED) {
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.INCLUDE_APIS_ELEMENT);
            if (metricsProperties.getMetricsLevel() != MetricsLevel.SERVICE_AND_API) {
                str2 = "false";
            }
            xMLStreamWriter.writeCharacters(str2);
            xMLStreamWriter.writeEndElement();
        }
        writeRetentionPolicy(xMLStreamWriter, metricsProperties.getRetentionIntervalInDays());
        xMLStreamWriter.writeEndElement();
    }

    public static void writeRetentionPolicy(XMLStreamWriter xMLStreamWriter, Integer num) {
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.RETENTION_POLICY_ELEMENT);
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.ENABLED_ELEMENT);
        xMLStreamWriter.writeCharacters(num != null ? "true" : "false");
        xMLStreamWriter.writeEndElement();
        if (num != null) {
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.DAYS_ELEMENT);
            xMLStreamWriter.writeCharacters(num.toString());
            xMLStreamWriter.writeEndElement();
        }
        xMLStreamWriter.writeEndElement();
    }

    public static void writeStaticWebsiteProperties(XMLStreamWriter xMLStreamWriter, StaticWebsiteProperties staticWebsiteProperties) {
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.STATIC_WEBSITE_ELEMENT);
        xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.ENABLED_ELEMENT);
        xMLStreamWriter.writeCharacters(staticWebsiteProperties.getEnabled() ? "true" : "false");
        xMLStreamWriter.writeEndElement();
        if (staticWebsiteProperties.getEnabled()) {
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.STATIC_WEBSITE_INDEX_DOCUMENT_ELEMENT);
            xMLStreamWriter.writeCharacters(staticWebsiteProperties.getIndexDocument());
            xMLStreamWriter.writeEndElement();
            xMLStreamWriter.writeStartElement(Constants.AnalyticsConstants.STATIC_WEBSITE_ERROR_DOCUMENT_404_PATH_ELEMENT);
            xMLStreamWriter.writeCharacters(staticWebsiteProperties.getErrorDocument404Path());
            xMLStreamWriter.writeEndElement();
        }
        xMLStreamWriter.writeEndElement();
    }
}
