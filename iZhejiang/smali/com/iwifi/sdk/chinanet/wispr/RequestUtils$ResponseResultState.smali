.class public final enum Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;
.super Ljava/lang/Enum;
.source "RequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseResultState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_GET_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_GET_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_GET_BRAS_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_GET_BRAS_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_GET_LOGOFF_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_GET_LOGOFF_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_NONE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_POST_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field public static final enum RSP_POST_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_NONE"

    invoke-direct {v0, v1, v3}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_NONE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 34
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_GET_BRAS_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 35
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_GET_BRAS_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 36
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_GET_AUTH_SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 37
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_GET_AUTH_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 38
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_POST_AUTH_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 39
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_POST_AUTH_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 40
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_GET_LOGOFF_SUCCESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 41
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    const-string v1, "RSP_GET_LOGOFF_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_NONE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ENUM$VALUES:[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    return-object v0
.end method

.method public static values()[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ENUM$VALUES:[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    array-length v1, v0

    new-array v2, v1, [Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
