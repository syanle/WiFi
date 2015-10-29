.class public Lcom/autonavi/aps/api/TelephoneBean;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/autonavi/aps/api/TelephoneBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/api/TelephoneBean;->a:Ljava/lang/String;

    sput-object v0, Lcom/autonavi/aps/api/TelephoneBean;->b:Lcom/autonavi/aps/api/TelephoneBean;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/telephony/TelephonyManager;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/api/TelephoneBean;
    .locals 6

    sget-object v0, Lcom/autonavi/aps/api/TelephoneBean;->b:Lcom/autonavi/aps/api/TelephoneBean;

    if-nez v0, :cond_3

    new-instance v0, Lcom/autonavi/aps/api/TelephoneBean;

    invoke-direct {v0}, Lcom/autonavi/aps/api/TelephoneBean;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/TelephoneBean;->b:Lcom/autonavi/aps/api/TelephoneBean;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/TelephoneBean;->a:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_0
    const-string v0, "APS_Preferences"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "imeisalt"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "APS_Preferences"

    sget-object v3, Lcom/autonavi/aps/api/TelephoneBean;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/autonavi/aps/api/TelephoneBean;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/TelephoneBean;->a:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/autonavi/aps/api/TelephoneBean;->b:Lcom/autonavi/aps/api/TelephoneBean;

    return-object v0

    :cond_4
    const-string v1, "lenovodualcard"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/TelephoneBean;->a:Ljava/lang/String;

    return-object v0
.end method
