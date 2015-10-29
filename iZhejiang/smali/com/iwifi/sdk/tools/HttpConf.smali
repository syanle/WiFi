.class public Lcom/iwifi/sdk/tools/HttpConf;
.super Ljava/lang/Object;
.source "HttpConf.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "10001000"

.field public static final APP_SECRET:Ljava/lang/String; = "513add10608f815f4d7eaf7c6376097b"

.field public static final Ad_LIST:Ljava/lang/String; = "GetAd"

.field public static final BIKE_LIST:Ljava/lang/String; = "GetBikeParkInfo"

.field public static final CHINANET_USERNAME_SUFFIX:Ljava/lang/String; = "@51iwifi.com"

.field public static final CITY_LIST:Ljava/lang/String; = "GetCityListServlet"

.field public static final CUSTOM_URL:Ljava/lang/String; = "http://www.baidu.com"

.field public static final GasInfo_LIST:Ljava/lang/String; = "GetOilServlet"

.field public static final GasSation_LIST:Ljava/lang/String; = "GetOilinfoServlet"

.field public static final JIE_KOU:Ljava/lang/String; = "yxtjk/"

.field public static final MAIN_MENU:Ljava/lang/String; = "GetMenuServlet"

.field public static final METHOD_AUTH:Ljava/lang/String; = "api-hichina/auth"

.field public static final METHOD_CHECKCODE:Ljava/lang/String; = "checkcode"

.field public static final METHOD_CHINANETAUTH:Ljava/lang/String; = "chinanetauth"

.field public static final METHOD_HEARTHIT:Ljava/lang/String; = "chinanetheartbeat"

.field public static final METHOD_NETTYPE:Ljava/lang/String; = "api-hichina/info"

.field public static final METHOD_SMS:Ljava/lang/String; = "sms"

.field public static final METHOD_SSID:Ljava/lang/String; = "ssidlists"

.field public static final PARK_LIST:Ljava/lang/String; = "GetParksServlet"

.field public static final ROAD:Ljava/lang/String; = "GetRoadServlet"

.field public static final SEARCH:Ljava/lang/String; = "GetSearchResultServlet"

.field public static final SUISHOUPAI:Ljava/lang/String; = "GetSuiShouPaiServlet"

.field public static final VIDEO_LIST:Ljava/lang/String; = "GetVideoinfoListServlet"

.field public static final WIFI_HOST:Ljava/lang/String; = "http://www.hichinawifi.com/wifiapp/"

.field public static final WIFI_HOST2:Ljava/lang/String; = "http://115.239.134.129/wifiapp/"

.field public static final ZONE:Ljava/lang/String; = "GetZoneServlet"

.field public static b_iWiFiSDK_ThirdPartyJar:Z = false

.field public static iWiFi20_AC_HOST:Ljava/lang/String; = null

.field public static iWiFi20_AUTHEN_STR:Ljava/lang/String; = null

.field public static iWiFi20_AUTHEN_STR2:Ljava/lang/String; = null

.field public static final iWiFi20_METHOD_AC:Ljava/lang/String; = "appaciauth.htm"

.field public static final iWiFi20_METHOD_ACOFF:Ljava/lang/String; = "appacilogout.htm"

.field public static final iWiFi20_METHOD_APAUTH:Ljava/lang/String; = "smartwifi/auth"

.field public static final iWiFi20_METHOD_CHECKCODE:Ljava/lang/String; = "checkcode.html"

.field public static final iWiFi20_METHOD_GETPORTAL:Ljava/lang/String; = "getPortalUrl"

.field public static final iWiFi20_METHOD_SDKKEY:Ljava/lang/String; = "checkapp.html"

.field public static final iWiFi20_METHOD_SMS:Ljava/lang/String; = "sendcode.html"

.field public static final iWiFi20_METHOD_SSID:Ljava/lang/String; = "ssidlists.html"

.field public static final iWiFi20_METHOD_THIRD_AUTH:Ljava/lang/String; = "appauth.html"

.field public static final iWiFi20_METHOD_THIRD_LOGOFF:Ljava/lang/String; = "useroffline.html"

.field public static final iWiFi20_METHOD_TOKEN:Ljava/lang/String; = "token.html"

.field public static final iWiFi20_METHOD_VERIFY_PLATFORMCODE:Ljava/lang/String; = "platform10/platformcode.htm"

.field public static iWiFi20_WIFI_HOST:Ljava/lang/String; = null

.field public static iWiFi_3RD_AUTHEN_SUCC_PORTAL_URL:Ljava/lang/String; = null

.field public static final iWiFi_3RD_JAR_VERSION_TAG:Ljava/lang/String; = "2.2.1_170_20141230"

.field public static iWiFi_SECOND_AGENT:Ljava/lang/String;

.field public static iWiFi_USER_AGENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string v0, "http://auth.51awifi.com/bas/"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_AC_HOST:Ljava/lang/String;

    .line 127
    const-string v0, "http://app2c.51awifi.com/PubInfoWifiInterface/sdk/"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    .line 141
    const-string v0, "http://portal.51iwifi.com"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_AUTHEN_STR:Ljava/lang/String;

    .line 142
    const-string v0, "http://portal.51awifi.com"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_AUTHEN_STR2:Ljava/lang/String;

    .line 194
    const-string v0, "CDMA+WLAN"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi_USER_AGENT:Ljava/lang/String;

    .line 195
    const-string v0, ""

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi_SECOND_AGENT:Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iwifi/sdk/tools/HttpConf;->b_iWiFiSDK_ThirdPartyJar:Z

    .line 204
    const-string v0, "http://app.51iwifi.com:12380/redirect.jsp"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi_3RD_AUTHEN_SUCC_PORTAL_URL:Ljava/lang/String;

    .line 212
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
    .line 215
    sput-object p0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi_SECOND_AGENT:Ljava/lang/String;

    .line 216
    return-void
.end method
