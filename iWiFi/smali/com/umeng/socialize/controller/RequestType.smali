.class public enum Lcom/umeng/socialize/controller/RequestType;
.super Ljava/lang/Enum;
.source "RequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/controller/RequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANALYTICS:Lcom/umeng/socialize/controller/RequestType;

.field public static final enum API:Lcom/umeng/socialize/controller/RequestType;

.field public static final enum SOCIAL:Lcom/umeng/socialize/controller/RequestType;

.field private static final synthetic a:[Lcom/umeng/socialize/controller/RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/umeng/socialize/controller/f;

    const-string v1, "SOCIAL"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/controller/f;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 20
    new-instance v0, Lcom/umeng/socialize/controller/g;

    const-string v1, "ANALYTICS"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/controller/g;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/umeng/socialize/controller/RequestType;->ANALYTICS:Lcom/umeng/socialize/controller/RequestType;

    .line 29
    new-instance v0, Lcom/umeng/socialize/controller/h;

    const-string v1, "API"

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/controller/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/controller/RequestType;->API:Lcom/umeng/socialize/controller/RequestType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/socialize/controller/RequestType;

    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->ANALYTICS:Lcom/umeng/socialize/controller/RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->API:Lcom/umeng/socialize/controller/RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/socialize/controller/RequestType;->a:[Lcom/umeng/socialize/controller/RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/controller/RequestType;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/RequestType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/controller/RequestType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socialize/controller/RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/RequestType;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/controller/RequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socialize/controller/RequestType;->a:[Lcom/umeng/socialize/controller/RequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socialize/controller/RequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
