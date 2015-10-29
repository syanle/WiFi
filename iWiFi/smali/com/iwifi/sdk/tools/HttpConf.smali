.class public Lcom/iwifi/sdk/tools/HttpConf;
.super Ljava/lang/Object;
.source "HttpConf.java"


# static fields
.field public static final Ad_LIST:Ljava/lang/String; = "GetAd"

.field public static final BIKE_LIST:Ljava/lang/String; = "GetBikeParkInfo"

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

.field public static iWiFi20_AUTHEN_STR:Ljava/lang/String; = null

.field public static final iWiFi20_METHOD_APAUTH:Ljava/lang/String; = "smartwifi/auth"

.field public static final iWiFi20_METHOD_CHECKCODE:Ljava/lang/String; = "platform10/login-p.htm"

.field public static final iWiFi20_METHOD_GETPORTAL:Ljava/lang/String; = "getPortalUrl"

.field public static final iWiFi20_METHOD_SMS:Ljava/lang/String; = "platform10/sendcode-p.htm"

.field public static final iWiFi20_METHOD_SSID:Ljava/lang/String; = "platform10/ssidlists.htm"

.field public static final iWiFi20_METHOD_THIRD_AUTH:Ljava/lang/String; = "platform10/appauth.htm"

.field public static final iWiFi20_METHOD_THIRD_LOGOFF:Ljava/lang/String; = "platform10/useroffline.htm"

.field public static final iWiFi20_METHOD_TOKEN:Ljava/lang/String; = "platform10/token.htm"

.field public static final iWiFi20_METHOD_VERIFY_PLATFORMCODE:Ljava/lang/String; = "platform10/platformcode.htm"

.field public static iWiFi20_WIFI_HOST:Ljava/lang/String;

.field public static iWiFi_USER_AGENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "http://www.51iwifi.com/"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    .line 120
    const-string v0, "http://portal.51iwifi.com:80/"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_AUTHEN_STR:Ljava/lang/String;

    .line 176
    const-string v0, "CDMA+WLAN"

    sput-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi_USER_AGENT:Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iwifi/sdk/tools/HttpConf;->b_iWiFiSDK_ThirdPartyJar:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
