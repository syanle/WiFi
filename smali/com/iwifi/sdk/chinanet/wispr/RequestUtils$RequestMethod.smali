.class public final enum Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;
.super Ljava/lang/Enum;
.source "RequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

.field private static final synthetic ENUM$VALUES:[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

.field public static final enum GET:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

.field public static final enum POST:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

.field public static final enum PUT:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->GET:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    .line 22
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->POST:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    .line 23
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->DELETE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    .line 24
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->PUT:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->GET:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->POST:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->DELETE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->PUT:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->ENUM$VALUES:[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    return-object v0
.end method

.method public static values()[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->ENUM$VALUES:[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    array-length v1, v0

    new-array v2, v1, [Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
