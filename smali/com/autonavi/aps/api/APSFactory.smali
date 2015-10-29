.class public Lcom/autonavi/aps/api/APSFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/aps/api/IAPS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/api/APSFactory;->a:Lcom/autonavi/aps/api/IAPS;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/IAPS;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/autonavi/aps/api/APSFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/api/IAPS;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/api/IAPS;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/autonavi/aps/api/APS;->getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/APS;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSFactory;->a:Lcom/autonavi/aps/api/IAPS;

    :cond_1
    :goto_0
    sget-object v0, Lcom/autonavi/aps/api/APSFactory;->a:Lcom/autonavi/aps/api/IAPS;

    return-object v0

    :cond_2
    const-string v0, "lenovodualcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/APSLENOVODUALCARD;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSFactory;->a:Lcom/autonavi/aps/api/IAPS;

    goto :goto_0
.end method
