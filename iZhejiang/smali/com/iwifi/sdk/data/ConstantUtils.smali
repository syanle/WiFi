.class public Lcom/iwifi/sdk/data/ConstantUtils;
.super Ljava/lang/Object;
.source "ConstantUtils.java"


# static fields
.field public static final ANDROID_OS_VERSION:I

.field public static final PREFERENCE_LOCATION_ADDRESS:Ljava/lang/String; = "Location_Address"

.field public static final PREFERENCE_LOCATION_LATITUDE:Ljava/lang/String; = "Location_Latitude"

.field public static final PREFERENCE_LOCATION_LONGITUDE:Ljava/lang/String; = "Location_Longitude"

.field public static final PREFERENCE_LOCATION_RESULTTYPE:Ljava/lang/String; = "Location_ResultType"

.field public static final PREFERENCE_LOCATION_TIME:Ljava/lang/String; = "Location_Time"

.field public static final PREFERENCE_PUSH_INFO_LATEST_AUTHEN_PHONENUM:Ljava/lang/String; = "latest_authen_phoneNum"

.field public static final PREFERENCE_PUSH_INFO_UPDATED_FLAG:Ljava/lang/String; = "pushInfo_updated_flag"

.field public static final PREFERNCE_CENTER_PAGE_JUMP:Ljava/lang/String; = "jump"

.field public static final PREFERNCE_CENTER_PAGE_TAB_INDEX:Ljava/lang/String; = "center_page_tab_current_index"

.field public static final PREFERNCE_QUICK_SHARE:Ljava/lang/String; = "QuickSharedShown"

.field public static final PREFERNCE_WEIXIN_SHARE:Ljava/lang/String; = "WeixinShown"

.field public static final PUSH_ADDRESS:Ljava/lang/String; = "uppushinfo.html"

.field public static final PUSH_HOST:Ljava/lang/String; = "http://app2c.51awifi.com/PubInfoWifiInterface/sdk/"

.field public static final SHARED_PREFERENCE_FILE_NAME:Ljava/lang/String; = "location_preferences"

.field public static final iWiFi_CLIENT_VERSION:Ljava/lang/String; = "2.0"

.field public static final iWiFi_Client_Authen_Default_AppID:Ljava/lang/String; = "56697b27fe070c1064f9f5bf8c8174bc"

.field public static final iWiFi_Client_Enable_Push:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iwifi/sdk/data/ConstantUtils;->ANDROID_OS_VERSION:I

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
