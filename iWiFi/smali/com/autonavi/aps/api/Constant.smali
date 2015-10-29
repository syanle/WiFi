.class public Lcom/autonavi/aps/api/Constant;
.super Ljava/lang/Object;


# static fields
.field public static final apsEncryptKey:Ljava/lang/String; = "autonavi00spas$#@!666666"

.field public static final apsNetworkTimeout:I = 0x14

.field public static final apsPreferencesName:Ljava/lang/String; = "APS_Preferences"

.field public static final apsServer:Ljava/lang/String; = "http://aps.amap.com/APS/r"

.field public static apsVerion:I = 0x0

.field public static final defaultCgiSignal:I = 0xa

.field public static final enableApsLog:Z = false

.field public static final gpsScanSpan:I = 0x5

.field public static final imeiMaxSalt:I = 0x2710

.field public static final imeiSaltPreferencesKey:Ljava/lang/String; = "imeisalt"

.field public static final minRequestDuration:I = 0x2

.field public static final minSdcardAvaliableSizeToWrite:J = 0x32L

.field public static final requestSystemNetworkLocationMinTime:I = 0x14

.field public static final requestSystemNetworkLocationTimeout:I = 0x3

.field public static final sdcardLogPath:Ljava/lang/String; = "/apsapi/tmp.dat"

.field public static final version:Ljava/lang/String; = "1.0.201208161816"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/autonavi/aps/api/Constant;->apsVerion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
