package com.microsoft.azure.storage;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Stack;
import java.util.StringTokenizer;
import javax.xml.parsers.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class ServicePropertiesHandler extends DefaultHandler {
    public StringBuilder bld = new StringBuilder();
    public final Stack<String> elementStack = new Stack<>();
    public final ServiceProperties props = new ServiceProperties();
    public int retentionPolicyDays;
    public boolean retentionPolicyEnabled;
    public CorsRule rule = new CorsRule();

    public static ServiceProperties readServicePropertiesFromStream(InputStream inputStream) {
        SAXParser sAXParser = Utility.getSAXParser();
        ServicePropertiesHandler servicePropertiesHandler = new ServicePropertiesHandler();
        servicePropertiesHandler.props.setLogging((LoggingProperties) null);
        servicePropertiesHandler.props.setHourMetrics((MetricsProperties) null);
        servicePropertiesHandler.props.setMinuteMetrics((MetricsProperties) null);
        servicePropertiesHandler.props.setCors((CorsProperties) null);
        servicePropertiesHandler.props.setDeleteRetentionPolicy((DeleteRetentionPolicy) null);
        servicePropertiesHandler.props.setStaticWebsiteProperties((StaticWebsiteProperties) null);
        sAXParser.parse(inputStream, servicePropertiesHandler);
        return servicePropertiesHandler.props;
    }

    public static EnumSet<CorsHttpMethods> splitToEnumSet(String str, String str2) {
        EnumSet<CorsHttpMethods> noneOf = EnumSet.noneOf(CorsHttpMethods.class);
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        while (stringTokenizer.hasMoreElements()) {
            noneOf.add(CorsHttpMethods.valueOf(stringTokenizer.nextToken()));
        }
        return noneOf;
    }

    public static List<String> splitToList(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        while (stringTokenizer.hasMoreElements()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return arrayList;
    }

    public void characters(char[] cArr, int i2, int i3) {
        this.bld.append(cArr, i2, i3);
    }

    public void endElement(String str, String str2, String str3) {
        String pop = this.elementStack.pop();
        if (str2.equals(pop)) {
            String str4 = null;
            String peek = !this.elementStack.isEmpty() ? this.elementStack.peek() : null;
            String sb = this.bld.toString();
            if (!sb.isEmpty()) {
                str4 = sb;
            }
            if (!this.retentionPolicyEnabled || !Constants.AnalyticsConstants.RETENTION_POLICY_ELEMENT.equals(pop)) {
                if (Constants.AnalyticsConstants.CORS_RULE_ELEMENT.equals(pop)) {
                    this.props.getCors().getCorsRules().add(this.rule);
                } else if (Constants.AnalyticsConstants.RETENTION_POLICY_ELEMENT.equals(peek)) {
                    if (Constants.AnalyticsConstants.DAYS_ELEMENT.equals(pop)) {
                        this.retentionPolicyDays = Integer.parseInt(str4);
                    } else if (Constants.AnalyticsConstants.ENABLED_ELEMENT.equals(pop)) {
                        this.retentionPolicyEnabled = Boolean.parseBoolean(str4);
                    }
                } else if (Constants.AnalyticsConstants.LOGGING_ELEMENT.equals(peek)) {
                    if (Constants.AnalyticsConstants.VERSION_ELEMENT.equals(pop)) {
                        this.props.getLogging().setVersion(str4);
                    } else if (Constants.AnalyticsConstants.DELETE_ELEMENT.equals(pop)) {
                        if (Boolean.parseBoolean(str4)) {
                            this.props.getLogging().getLogOperationTypes().add(LoggingOperations.DELETE);
                        }
                    } else if (Constants.AnalyticsConstants.READ_ELEMENT.equals(pop)) {
                        if (Boolean.parseBoolean(str4)) {
                            this.props.getLogging().getLogOperationTypes().add(LoggingOperations.READ);
                        }
                    } else if (Constants.AnalyticsConstants.WRITE_ELEMENT.equals(pop) && Boolean.parseBoolean(str4)) {
                        this.props.getLogging().getLogOperationTypes().add(LoggingOperations.WRITE);
                    }
                } else if (Constants.AnalyticsConstants.HOUR_METRICS_ELEMENT.equals(peek)) {
                    MetricsProperties hourMetrics = this.props.getHourMetrics();
                    if (Constants.AnalyticsConstants.VERSION_ELEMENT.equals(pop)) {
                        hourMetrics.setVersion(str4);
                    } else if (Constants.AnalyticsConstants.ENABLED_ELEMENT.equals(pop)) {
                        if (Boolean.parseBoolean(str4)) {
                            MetricsLevel metricsLevel = hourMetrics.getMetricsLevel();
                            MetricsLevel metricsLevel2 = MetricsLevel.SERVICE_AND_API;
                            if (metricsLevel != metricsLevel2) {
                                metricsLevel2 = MetricsLevel.SERVICE;
                            }
                            hourMetrics.setMetricsLevel(metricsLevel2);
                        }
                    } else if (Constants.AnalyticsConstants.INCLUDE_APIS_ELEMENT.equals(pop) && Boolean.parseBoolean(str4) && hourMetrics.getMetricsLevel() != MetricsLevel.DISABLED) {
                        hourMetrics.setMetricsLevel(MetricsLevel.SERVICE_AND_API);
                    }
                } else if (Constants.AnalyticsConstants.MINUTE_METRICS_ELEMENT.equals(peek)) {
                    MetricsProperties minuteMetrics = this.props.getMinuteMetrics();
                    if (Constants.AnalyticsConstants.VERSION_ELEMENT.equals(pop)) {
                        minuteMetrics.setVersion(str4);
                    } else if (Constants.AnalyticsConstants.ENABLED_ELEMENT.equals(pop)) {
                        if (Boolean.parseBoolean(str4)) {
                            MetricsLevel metricsLevel3 = minuteMetrics.getMetricsLevel();
                            MetricsLevel metricsLevel4 = MetricsLevel.SERVICE_AND_API;
                            if (metricsLevel3 != metricsLevel4) {
                                metricsLevel4 = MetricsLevel.SERVICE;
                            }
                            minuteMetrics.setMetricsLevel(metricsLevel4);
                        }
                    } else if (Constants.AnalyticsConstants.INCLUDE_APIS_ELEMENT.equals(pop) && Boolean.parseBoolean(str4) && minuteMetrics.getMetricsLevel() != MetricsLevel.DISABLED) {
                        minuteMetrics.setMetricsLevel(MetricsLevel.SERVICE_AND_API);
                    }
                } else if (Constants.AnalyticsConstants.DEFAULT_SERVICE_VERSION.equals(pop)) {
                    this.props.setDefaultServiceVersion(str4);
                } else if (Constants.AnalyticsConstants.CORS_RULE_ELEMENT.equals(peek)) {
                    if (Constants.AnalyticsConstants.ALLOWED_ORIGINS_ELEMENT.equals(pop)) {
                        if (str4 != null) {
                            this.rule.setAllowedOrigins(splitToList(str4, ","));
                        }
                    } else if (Constants.AnalyticsConstants.ALLOWED_METHODS_ELEMENT.equals(pop)) {
                        if (str4 != null) {
                            this.rule.setAllowedMethods(splitToEnumSet(str4, ","));
                        }
                    } else if (Constants.AnalyticsConstants.EXPOSED_HEADERS_ELEMENT.equals(pop)) {
                        if (str4 != null) {
                            this.rule.setExposedHeaders(splitToList(str4, ","));
                        }
                    } else if (Constants.AnalyticsConstants.ALLOWED_HEADERS_ELEMENT.equals(pop)) {
                        if (str4 != null) {
                            this.rule.setAllowedHeaders(splitToList(str4, ","));
                        }
                    } else if (Constants.AnalyticsConstants.MAX_AGE_IN_SECONDS_ELEMENT.equals(pop)) {
                        this.rule.setMaxAgeInSeconds(Integer.parseInt(str4));
                    }
                } else if (Constants.AnalyticsConstants.DELETE_RETENTION_POLICY_ELEMENT.equals(peek)) {
                    if (Constants.AnalyticsConstants.ENABLED_ELEMENT.equals(pop)) {
                        if (str4 != null) {
                            if (Boolean.parseBoolean(str4)) {
                                this.props.getDeleteRetentionPolicy().setEnabled(true);
                            } else {
                                this.props.getDeleteRetentionPolicy().setEnabled(false);
                            }
                        }
                    } else if (Constants.AnalyticsConstants.DAYS_ELEMENT.equals(pop) && str4 != null) {
                        this.props.getDeleteRetentionPolicy().setRetentionIntervalInDays(Integer.valueOf(Integer.parseInt(str4)));
                    }
                } else if (Constants.AnalyticsConstants.STATIC_WEBSITE_ELEMENT.equals(peek)) {
                    if (Constants.AnalyticsConstants.ENABLED_ELEMENT.equals(pop)) {
                        if (str4 != null) {
                            this.props.getStaticWebsiteProperties().setEnabled(Boolean.parseBoolean(str4));
                        }
                    } else if (Constants.AnalyticsConstants.STATIC_WEBSITE_INDEX_DOCUMENT_ELEMENT.equals(pop)) {
                        if (str4 != null) {
                            this.props.getStaticWebsiteProperties().setIndexDocument(str4);
                        }
                    } else if (Constants.AnalyticsConstants.STATIC_WEBSITE_ERROR_DOCUMENT_404_PATH_ELEMENT.equals(pop) && str4 != null) {
                        this.props.getStaticWebsiteProperties().setErrorDocument404Path(str4);
                    }
                }
            } else if (Constants.AnalyticsConstants.LOGGING_ELEMENT.equals(peek)) {
                this.props.getLogging().setRetentionIntervalInDays(Integer.valueOf(this.retentionPolicyDays));
            } else if (Constants.AnalyticsConstants.HOUR_METRICS_ELEMENT.equals(peek)) {
                this.props.getHourMetrics().setRetentionIntervalInDays(Integer.valueOf(this.retentionPolicyDays));
            } else if (Constants.AnalyticsConstants.MINUTE_METRICS_ELEMENT.equals(peek)) {
                this.props.getMinuteMetrics().setRetentionIntervalInDays(Integer.valueOf(this.retentionPolicyDays));
            }
            this.bld = new StringBuilder();
            return;
        }
        throw new SAXException("The response received is invalid or improperly formatted.");
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.elementStack.push(str2);
        if (Constants.AnalyticsConstants.CORS_RULE_ELEMENT.equals(str2)) {
            this.rule = new CorsRule();
        } else if (Constants.AnalyticsConstants.LOGGING_ELEMENT.equals(str2)) {
            this.props.setLogging(new LoggingProperties());
        } else if (Constants.AnalyticsConstants.HOUR_METRICS_ELEMENT.equals(str2)) {
            this.props.setHourMetrics(new MetricsProperties());
        } else if (Constants.AnalyticsConstants.MINUTE_METRICS_ELEMENT.equals(str2)) {
            this.props.setMinuteMetrics(new MetricsProperties());
        } else if (Constants.AnalyticsConstants.CORS_ELEMENT.equals(str2)) {
            this.props.setCors(new CorsProperties());
        } else if (Constants.AnalyticsConstants.DELETE_RETENTION_POLICY_ELEMENT.equals(str2)) {
            this.props.setDeleteRetentionPolicy(new DeleteRetentionPolicy());
        } else if (Constants.AnalyticsConstants.STATIC_WEBSITE_ELEMENT.equals(str2)) {
            this.props.setStaticWebsiteProperties(new StaticWebsiteProperties());
        }
    }
}
