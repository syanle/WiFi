.class public Lcom/cat/tools/HttpConf;
.super Ljava/lang/Object;
.source "HttpConf.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "10001000"

.field public static final APP_SECRET:Ljava/lang/String; = "513add10608f815f4d7eaf7c6376097b"

.field public static UPDATE_XMLPATH:Ljava/lang/String; = null

.field public static b_iWiFiSDK_ThirdPartyJar:Z = false

.field public static iWiFi20_AUTHEN_STR:Ljava/lang/String; = null

.field public static final iWiFi20_METHOD_APAUTH:Ljava/lang/String; = "smartwifi/auth"

.field public static final iWiFi20_METHOD_GETPORTAL:Ljava/lang/String; = "getPortalUrl"

.field public static final iWiFi20_METHOD_SDKKEY:Ljava/lang/String; = "checkapp.html"

.field public static final iWiFi20_METHOD_SSID:Ljava/lang/String; = "ssidlists.html"

.field public static final iWiFi20_METHOD_THIRD_AUTH:Ljava/lang/String; = "appauth.html"

.field public static final iWiFi20_METHOD_THIRD_LOGOFF:Ljava/lang/String; = "useroffline.html"

.field public static final iWiFi20_METHOD_TOKEN:Ljava/lang/String; = "token.html"

.field public static final iWiFi20_METHOD_VERIFY_PLATFORMCODE:Ljava/lang/String; = "platform10/platformcode.htm"

.field public static iWiFi_3RD_AUTHEN_SUCC_PORTAL_URL:Ljava/lang/String; = null

.field public static final iWiFi_3RD_JAR_VERSION_TAG:Ljava/lang/String; = "2.2.1_170_20141230"

.field public static final iWiFi_METHOD_APINFO:Ljava/lang/String; = "apinfo1.html"

.field public static final iWiFi_METHOD_COMMENT:Ljava/lang/String; = "comment.html"

.field public static final iWiFi_METHOD_CTPASS:Ljava/lang/String; = "getctpass.html"

.field public static final iWiFi_METHOD_CTPASSRESULT:Ljava/lang/String; = "authctpasstoken.html"

.field public static final iWiFi_METHOD_IVR:Ljava/lang/String; = "checkivr.html"

.field public static final iWiFi_METHOD_LOGI:Ljava/lang/String; = "login.html"

.field public static final iWiFi_METHOD_MOBILEEXIST:Ljava/lang/String; = "checkinfo.html"

.field public static final iWiFi_METHOD_NEARBUSLIST:Ljava/lang/String; = "getnearbuslist.html"

.field public static final iWiFi_METHOD_NEARTYPE:Ljava/lang/String; = "getneartype.html"

.field public static final iWiFi_METHOD_PUSHLIST:Ljava/lang/String; = "getpushlist.html"

.field public static final iWiFi_METHOD_READPUSH:Ljava/lang/String; = "readpush.html"

.field public static final iWiFi_METHOD_REG:Ljava/lang/String; = "checksms.html"

.field public static final iWiFi_METHOD_REGNEW:Ljava/lang/String; = "reg.html"

.field public static final iWiFi_METHOD_REPWD:Ljava/lang/String; = "repwd.html"

.field public static final iWiFi_METHOD_SMS:Ljava/lang/String; = "sendsms.html"

.field public static final iWiFi_METHOD_SSID:Ljava/lang/String; = "ssidinfo.html"

.field public static final iWiFi_METHOD_TIMEDIFF:Ljava/lang/String; = "gettimedifference.html"

.field public static final iWiFi_METHOD_UPLOAD:Ljava/lang/String; = "upload.html"

.field public static final iWiFi_METHOD_USERINFO:Ljava/lang/String; = "getuserinfo.html"

.field public static iWiFi_SECOND_AGENT:Ljava/lang/String;

.field public static iWiFi_USER_AGENT:Ljava/lang/String;

.field public static iWiFi_WIFI_HOST:Ljava/lang/String;

.field public static iWiFi_WIFI_HOSTAP:Ljava/lang/String;

.field public static iWiFi_WIFI_HOSTGE:Ljava/lang/String;

.field public static iWiFi_WIFI_HOSTNEAR:Ljava/lang/String;

.field public static iWiFi_WIFI_HOSTNFC:Ljava/lang/String;

.field public static iWiFi_WIFI_TOTAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5
    const-string v0, "http://app2c.51awifi.com/PubInfoWifiInterface/sdk/checkVersion"

    sput-object v0, Lcom/cat/tools/HttpConf;->UPDATE_XMLPATH:Ljava/lang/String;

    .line 9
    const-string v0, "http://2cint.51awifi.com/PubInfoWifiInterface"

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_TOTAL:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_TOTAL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/app30/member/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOST:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_TOTAL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/app30/ap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTAP:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_TOTAL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/app30/near/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTNEAR:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_TOTAL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/app30/general/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTGE:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_TOTAL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/app30/nfc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTNFC:Ljava/lang/String;

    .line 116
    const-string v0, "http://portal.51iwifi.com:80/"

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi20_AUTHEN_STR:Ljava/lang/String;

    .line 158
    const-string v0, "CDMA+WLAN"

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_USER_AGENT:Ljava/lang/String;

    .line 159
    const-string v0, ""

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_SECOND_AGENT:Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cat/tools/HttpConf;->b_iWiFiSDK_ThirdPartyJar:Z

    .line 168
    const-string v0, "http://app.51iwifi.com:12380/redirect.jsp"

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_3RD_AUTHEN_SUCC_PORTAL_URL:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "useragent"    # Ljava/lang/String;

    .prologue
    .line 179
    sput-object p0, Lcom/cat/tools/HttpConf;->iWiFi_SECOND_AGENT:Ljava/lang/String;

    .line 180
    return-void
.end method
