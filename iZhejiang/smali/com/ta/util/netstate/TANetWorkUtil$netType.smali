.class public final enum Lcom/ta/util/netstate/TANetWorkUtil$netType;
.super Ljava/lang/Enum;
.source "TANetWorkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/netstate/TANetWorkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "netType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ta/util/netstate/TANetWorkUtil$netType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CMNET:Lcom/ta/util/netstate/TANetWorkUtil$netType;

.field public static final enum CMWAP:Lcom/ta/util/netstate/TANetWorkUtil$netType;

.field private static final synthetic ENUM$VALUES:[Lcom/ta/util/netstate/TANetWorkUtil$netType;

.field public static final enum noneNet:Lcom/ta/util/netstate/TANetWorkUtil$netType;

.field public static final enum wifi:Lcom/ta/util/netstate/TANetWorkUtil$netType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;

    const-string v1, "wifi"

    invoke-direct {v0, v1, v2}, Lcom/ta/util/netstate/TANetWorkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;->wifi:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    new-instance v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;

    const-string v1, "CMNET"

    invoke-direct {v0, v1, v3}, Lcom/ta/util/netstate/TANetWorkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;->CMNET:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    new-instance v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;

    const-string v1, "CMWAP"

    invoke-direct {v0, v1, v4}, Lcom/ta/util/netstate/TANetWorkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;->CMWAP:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    new-instance v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;

    const-string v1, "noneNet"

    invoke-direct {v0, v1, v5}, Lcom/ta/util/netstate/TANetWorkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;->noneNet:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ta/util/netstate/TANetWorkUtil$netType;

    sget-object v1, Lcom/ta/util/netstate/TANetWorkUtil$netType;->wifi:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ta/util/netstate/TANetWorkUtil$netType;->CMNET:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ta/util/netstate/TANetWorkUtil$netType;->CMWAP:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ta/util/netstate/TANetWorkUtil$netType;->noneNet:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;->ENUM$VALUES:[Lcom/ta/util/netstate/TANetWorkUtil$netType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ta/util/netstate/TANetWorkUtil$netType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;

    return-object v0
.end method

.method public static values()[Lcom/ta/util/netstate/TANetWorkUtil$netType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ta/util/netstate/TANetWorkUtil$netType;->ENUM$VALUES:[Lcom/ta/util/netstate/TANetWorkUtil$netType;

    array-length v1, v0

    new-array v2, v1, [Lcom/ta/util/netstate/TANetWorkUtil$netType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
