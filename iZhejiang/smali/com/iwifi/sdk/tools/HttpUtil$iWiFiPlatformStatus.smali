.class final enum Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;
.super Ljava/lang/Enum;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/tools/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "iWiFiPlatformStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

.field public static final enum iWiFi_10:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

.field public static final enum iWiFi_20:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

.field public static final enum iWiFi_NETWORK_CONNECTED:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

.field public static final enum iWiFi_NETWORK_ERROR:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

.field public static final enum iWiFi_NONE:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 637
    new-instance v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    const-string v1, "iWiFi_NONE"

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_NONE:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    .line 638
    new-instance v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    const-string v1, "iWiFi_10"

    invoke-direct {v0, v1, v3}, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_10:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    .line 639
    new-instance v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    const-string v1, "iWiFi_20"

    invoke-direct {v0, v1, v4}, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_20:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    .line 640
    new-instance v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    const-string v1, "iWiFi_NETWORK_CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_NETWORK_CONNECTED:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    .line 641
    new-instance v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    const-string v1, "iWiFi_NETWORK_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_NETWORK_ERROR:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    .line 636
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    sget-object v1, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_NONE:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_10:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_20:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_NETWORK_CONNECTED:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_NETWORK_ERROR:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->ENUM$VALUES:[Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    return-object v0
.end method

.method public static values()[Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->ENUM$VALUES:[Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
