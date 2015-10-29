.class public Lcom/pubinfo/wifi_core/core/util/McuUtil;
.super Ljava/lang/Object;
.source "McuUtil.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ACCOUNT_DEFAULT:Ljava/lang/String; = "yytjk"

.field public static final ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field public static final CAMERA_SETTING:Ljava/lang/String; = "camera_setting"

.field public static final CAMERA_SETTING_DEFAULT:I = 0x5

.field public static final KEY_BACKURL:Ljava/lang/String; = "backurl"

.field public static final KEY_DOWNURL:Ljava/lang/String; = "downurl"

.field public static final KEY_ISNATIVE:Ljava/lang/String; = "isnative"

.field public static final KEY_PLAYURL:Ljava/lang/String; = "playurl"

.field public static final KEY_PUNAME:Ljava/lang/String; = "puname"

.field public static final KEY_VIDEONAME:Ljava/lang/String; = "videoname"

.field public static final LEN_DOWN:Ljava/lang/String; = "2"

.field public static final LEN_DULL:Ljava/lang/String; = "6"

.field public static final LEN_LEFT:Ljava/lang/String; = "3"

.field public static final LEN_LIGHT:Ljava/lang/String; = "5"

.field public static final LEN_RIGHT:Ljava/lang/String; = "4"

.field public static final LEN_STOP:Ljava/lang/String; = "15"

.field public static final LEN_UP:Ljava/lang/String; = "1"

.field public static final LEN_ZOOMIN:Ljava/lang/String; = "7"

.field public static final LEN_ZOOMOUT:Ljava/lang/String; = "8"

.field public static final LOGIN_TYPE_ACCOUNT_0:I = 0x0

.field public static final LOGIN_TYPE_MSISDN_1:I = 0x1

.field public static final MSPURL:Ljava/lang/String; = "mspurl"

.field public static final MSPURL_DEFAULT:Ljava/lang/String; = "http://123.167.5.78/msp/login/login.action"

.field public static final MaxFileCount:Ljava/lang/String; = "0"

.field public static final NETSETTING:Ljava/lang/String; = "net_setting"

.field public static final NETSETTING_DEFAULT:Ljava/lang/String; = "WAP\u94fe\u63a5"

.field public static final NETSETTING_NET:Ljava/lang/String; = "NET\u94fe\u63a5"

.field public static final NETSETTING_WAP:Ljava/lang/String; = "WAP\u94fe\u63a5"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PASSWORD_DEFAULT:Ljava/lang/String; = "123456"

.field public static final PICTUREPATHNAME:Ljava/lang/String; = "picturePathName"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final PLATFORM_DEFAULT:Ljava/lang/String; = "111111"

.field public static final PROVINCE:Ljava/lang/String; = "province"

.field public static final PROVINCE_DEFAULT:I = 0x20

.field public static final PTZCONTROL_DOWN:I = 0x2

.field public static final PTZCONTROL_LEFT:I = 0x3

.field public static final PTZCONTROL_LenZoom:I = 0x7

.field public static final PTZCONTROL_LenZoomOut:I = 0x8

.field public static final PTZCONTROL_RIGHT:I = 0x4

.field public static final PTZCONTROL_Stop:I = 0x9

.field public static final PTZCONTROL_UP:I = 0x1

.field public static final PTZCONTROL_Zoom:I = 0x5

.field public static final PTZCONTROL_ZoomOut:I = 0x6

.field public static final PTZ_SETTING:Ljava/lang/String; = "ptz_setting"

.field public static final PTZ_SETTING_DEFAULT:I = 0x5

.field public static final ProvinceMsp:[Ljava/lang/String;

.field public static final SELECTDIR:Ljava/lang/String; = "SelectedDirectory"

.field public static final SELECTDIR_DEFAULT:Ljava/lang/String; = "../sdcard"

.field public static final SETTING_NAME:Ljava/lang/String; = "usersetting"

.field public static final STREAMTYPECHECKED:Ljava/lang/String; = "streamtypechecked"

.field public static final STREAMTYPECHECKED_1:I = 0x1

.field public static final STREAMTYPECHECKED_2:I = 0x2

.field public static final TIMEOUT:J = 0x4e20L

.field public static final USERINFOCHECKED:Ljava/lang/String; = "userinfochecked"

.field public static final VERSION:Ljava/lang/String; = "GX_02_MOTO_XT800_V3.10.000"

.field public static strPTZ:Ljava/lang/String;

.field public static strVideoCapture:Ljava/lang/String;

.field public static strVideoFullScreen:Ljava/lang/String;

.field public static strVideoRecord:Ljava/lang/String;

.field public static uploadurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "1"

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/McuUtil;->strVideoCapture:Ljava/lang/String;

    .line 79
    const-string v0, "1"

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/McuUtil;->strVideoRecord:Ljava/lang/String;

    .line 80
    const-string v0, "1"

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/McuUtil;->strPTZ:Ljava/lang/String;

    .line 81
    const-string v0, "1"

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/McuUtil;->strVideoFullScreen:Ljava/lang/String;

    .line 85
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 86
    const-string v2, "bj.3geye.mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 87
    const-string v2, "tj.3geye.mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 88
    const-string v2, "he.3geye.mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 89
    const-string v2, "sx.3geye.mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 90
    const-string v2, "nm.3geye.mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 91
    const-string v2, "ln.3geye.mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 92
    const-string v2, "jl.3geye.mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 93
    const-string v2, "hl.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 94
    const-string v2, "sh.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 95
    const-string v2, "js.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 96
    const-string v2, "zj.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 97
    const-string v2, "ah.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 98
    const-string v2, "fj.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 99
    const-string v2, "jx.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 100
    const-string v2, "qh.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 101
    const-string v2, "xj.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 102
    const-string v2, "sd.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 103
    const-string v2, "ha.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 104
    const-string v2, "hb.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 105
    const-string v2, "hn.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 106
    const-string v2, "gd.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 107
    const-string v2, "gx.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 108
    const-string v2, "hi.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 109
    const-string v2, "cq.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 110
    const-string v2, "sc.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 111
    const-string v2, "gz.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 112
    const-string v2, "yn.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 113
    const-string v2, "xz.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 114
    const-string v2, "sn.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 115
    const-string v2, "gs.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 116
    const-string v2, "nx.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 117
    const-string v2, "ge.3geye.mobi"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 118
    const-string v2, ""

    aput-object v2, v0, v1

    .line 85
    sput-object v0, Lcom/pubinfo/wifi_core/core/util/McuUtil;->ProvinceMsp:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
