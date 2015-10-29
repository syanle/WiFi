.class Lcom/cat/parase/XMLDefaultHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GeneralConfigParser.java"


# instance fields
.field private GENERAl_CONFIG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 71
    const-string v0, "general_config"

    iput-object v0, p0, Lcom/cat/parase/XMLDefaultHandler;->GENERAl_CONFIG:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 87
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 81
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 95
    iget-object v2, p0, Lcom/cat/parase/XMLDefaultHandler;->GENERAl_CONFIG:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    const-string v2, "default_iwifi_user_agent"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 100
    sput-object v1, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi_USER_AGENT:Ljava/lang/String;

    .line 102
    :cond_0
    const-string v2, "iwifi20_wifi_host"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    sput-object v1, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    .line 106
    :cond_1
    const-string v2, "iwfi20_authen_str"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    sput-object v1, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_AUTHEN_STR:Ljava/lang/String;

    .line 110
    :cond_2
    const-string v2, "iwifi_thirdparty_jar"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_3

    .line 112
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/iwifi/sdk/tools/HttpConf;->b_iWiFiSDK_ThirdPartyJar:Z

    .line 114
    :cond_3
    const-string v2, "iwifi_logger_status"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    .local v0, "logStatus":Z
    const/4 v2, 0x3

    .line 118
    const/4 v3, 0x0

    .line 117
    invoke-static {v0, v2, v3}, Lcom/iwifi/sdk/tools/Logger;->setLogStatus(ZII)V

    .line 121
    .end local v0    # "logStatus":Z
    .end local v1    # "temp":Ljava/lang/String;
    :cond_4
    return-void
.end method
