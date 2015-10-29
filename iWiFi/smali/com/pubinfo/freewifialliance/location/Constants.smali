.class public Lcom/pubinfo/freewifialliance/location/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static final ALARMLIST:Ljava/lang/String; = "Alarm_List"

.field public static final ALARMLISTM:Ljava/lang/String; = "@"

.field public static final ALARMLISTN:Ljava/lang/String; = ":"

.field private static final ALARMMYID:Ljava/lang/String; = "Alarm_my_Id"

.field private static final ALARMTEAMID:Ljava/lang/String; = "Alarm_team_Id"

.field public static final ALARM_BROADCAST:Ljava/lang/String; = "com.pubinfo.officeassistant.alarm_broadcast"

.field private static final APPENDIXID:Ljava/lang/String; = "Appendix_Id"

.field public static final APPENDIXID_KEY:I = 0xf4240

.field public static final BOUNDARY:Ljava/lang/String; = "1234567890"

.field public static final FILEPATH:Ljava/lang/String;

.field public static final HANDLER_DOWNLOADTHUMBNAIL_FAIL:I = 0x3de

.field public static final HANDLER_DOWNLOADTHUMBNAIL_SUCCESS:I = 0x3dd

.field public static final HANDLER_LOCATION_LNGLAT_SUCCESS:I = 0x3e1

.field public static final HANDLER_LOCATION_START:I = 0x3e2

.field public static final HANDLER_LOCATION_SUCCESS:I = 0x3dc

.field public static final HANDLER_POSTIMAGE_FAIL:I = 0x3e0

.field public static final HANDLER_POSTIMAGE_SUCCESS:I = 0x3df

.field public static final HANDLER_TIMEOUTHEART_RECALL:I = 0x3e3

.field public static final HANDLER_UPDATE:I = 0x3db

.field public static final HANDLER_UPLOADFILE_FAIL:I = 0x3e5

.field public static final HANDLER_UPLOADFILE_SUCCESS:I = 0x3e4

.field public static final INTENT_KEY_ALAM_ID:Ljava/lang/String; = "alam_id"

.field public static final INTENT_KEY_ALAM_MSG:Ljava/lang/String; = "alam_msg"

.field public static final INTENT_KEY_APPENDIX_TITLE:Ljava/lang/String; = "appendix_title"

.field public static final INTENT_KEY_FILEPATH:Ljava/lang/String; = "file_path"

.field public static final INTENT_KEY_NOTIFICATION_FILEPATH:Ljava/lang/String; = "notification_file_path"

.field public static final INTENT_KEY_UPDATE_EXPLAIN:Ljava/lang/String; = "update_explain"

.field public static final INTENT_KEY_UPDATE_ISUPDATE:Ljava/lang/String; = "update_isUpdate"

.field public static final INTENT_KEY_UPDATE_PRODUCT:Ljava/lang/String; = "update_product"

.field public static final INTENT_KEY_UPDATE_URL:Ljava/lang/String; = "update_url"

.field public static final INTENT_KEY_UPDATE_VERSION:Ljava/lang/String; = "update_curVersion"

.field public static final MAILURL:Ljava/lang/String; = "http://60.191.115.162:8080/einfo/"

.field public static final MYALARMSTARTID_KEY:I = 0x7a120

.field public static final Preference_PointUpload_etime:Ljava/lang/String; = "etime"

.field public static final Preference_PointUpload_flag:Ljava/lang/String; = "flag"

.field public static final Preference_PointUpload_frequency:Ljava/lang/String; = "frequency "

.field public static final Preference_PointUpload_stime:Ljava/lang/String; = "stime"

.field public static final Preference_Time_Date:Ljava/lang/String; = "time_date"

.field public static final SERVICEROOT:Ljava/lang/String; = "http://60.191.115.162:8080/einfo/"

.field public static final TEAMALARMSTARTID_KEY:I = 0x0

.field public static final TIMEOUT_ATTENDDETAIL:I = 0x0

.field public static final TIMEOUT_POINTUPLOAD:I = 0x1

.field public static actionType0:I

.field public static appIMSI:Ljava/lang/String;

.field public static appVersionName:Ljava/lang/String;

.field public static final cameraPhoto:Ljava/lang/String;

.field public static personal_anchor:Landroid/graphics/Bitmap;

.field public static personal_label:Landroid/graphics/Bitmap;

.field public static public_anchor:Landroid/graphics/Bitmap;

.field public static public_label:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/ework"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/freewifialliance/location/Constants;->FILEPATH:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pubinfo/freewifialliance/location/Constants;->FILEPATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tempphoto.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/freewifialliance/location/Constants;->cameraPhoto:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/pubinfo/freewifialliance/location/Constants;->actionType0:I

    .line 74
    const-string v0, "1.0"

    sput-object v0, Lcom/pubinfo/freewifialliance/location/Constants;->appVersionName:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/pubinfo/freewifialliance/location/Constants;->appIMSI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringArr(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "rStr":[Ljava/lang/String;
    return-object v0
.end method

.method public static getTeamalarmId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    const-string v1, "Alarm_team_Id"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 78
    return v0
.end method

.method public static final myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "Test"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
