.class public enum Lcom/umeng/socialize/bean/APP_PLATFORM;
.super Ljava/lang/Enum;
.source "APP_PLATFORM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/bean/APP_PLATFORM;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMAIL:Lcom/umeng/socialize/bean/APP_PLATFORM;

.field public static final enum FACEBOOK:Lcom/umeng/socialize/bean/APP_PLATFORM;

.field public static final enum GOOGLE:Lcom/umeng/socialize/bean/APP_PLATFORM;

.field public static final enum QQ:Lcom/umeng/socialize/bean/APP_PLATFORM;

.field public static final enum SMS:Lcom/umeng/socialize/bean/APP_PLATFORM;

.field public static final enum TWITTER:Lcom/umeng/socialize/bean/APP_PLATFORM;

.field public static final enum WEIXIN:Lcom/umeng/socialize/bean/APP_PLATFORM;

.field public static final enum WEIXIN_SIRCLE:Lcom/umeng/socialize/bean/APP_PLATFORM;

.field private static final synthetic a:[Lcom/umeng/socialize/bean/APP_PLATFORM;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/umeng/socialize/bean/a;

    const-string v1, "QQ"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/bean/a;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->QQ:Lcom/umeng/socialize/bean/APP_PLATFORM;

    .line 23
    new-instance v0, Lcom/umeng/socialize/bean/b;

    const-string v1, "WEIXIN"

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/bean/b;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->WEIXIN:Lcom/umeng/socialize/bean/APP_PLATFORM;

    .line 30
    new-instance v0, Lcom/umeng/socialize/bean/c;

    const-string v1, "WEIXIN_SIRCLE"

    invoke-direct {v0, v1, v5}, Lcom/umeng/socialize/bean/c;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->WEIXIN_SIRCLE:Lcom/umeng/socialize/bean/APP_PLATFORM;

    .line 37
    new-instance v0, Lcom/umeng/socialize/bean/d;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v6}, Lcom/umeng/socialize/bean/d;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->SMS:Lcom/umeng/socialize/bean/APP_PLATFORM;

    .line 44
    new-instance v0, Lcom/umeng/socialize/bean/e;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v7}, Lcom/umeng/socialize/bean/e;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->EMAIL:Lcom/umeng/socialize/bean/APP_PLATFORM;

    .line 51
    new-instance v0, Lcom/umeng/socialize/bean/f;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->FACEBOOK:Lcom/umeng/socialize/bean/APP_PLATFORM;

    .line 57
    new-instance v0, Lcom/umeng/socialize/bean/g;

    const-string v1, "TWITTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->TWITTER:Lcom/umeng/socialize/bean/APP_PLATFORM;

    .line 63
    new-instance v0, Lcom/umeng/socialize/bean/h;

    const-string v1, "GOOGLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->GOOGLE:Lcom/umeng/socialize/bean/APP_PLATFORM;

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/umeng/socialize/bean/APP_PLATFORM;

    sget-object v1, Lcom/umeng/socialize/bean/APP_PLATFORM;->QQ:Lcom/umeng/socialize/bean/APP_PLATFORM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/socialize/bean/APP_PLATFORM;->WEIXIN:Lcom/umeng/socialize/bean/APP_PLATFORM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/socialize/bean/APP_PLATFORM;->WEIXIN_SIRCLE:Lcom/umeng/socialize/bean/APP_PLATFORM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/socialize/bean/APP_PLATFORM;->SMS:Lcom/umeng/socialize/bean/APP_PLATFORM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/socialize/bean/APP_PLATFORM;->EMAIL:Lcom/umeng/socialize/bean/APP_PLATFORM;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/umeng/socialize/bean/APP_PLATFORM;->FACEBOOK:Lcom/umeng/socialize/bean/APP_PLATFORM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/umeng/socialize/bean/APP_PLATFORM;->TWITTER:Lcom/umeng/socialize/bean/APP_PLATFORM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/umeng/socialize/bean/APP_PLATFORM;->GOOGLE:Lcom/umeng/socialize/bean/APP_PLATFORM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->a:[Lcom/umeng/socialize/bean/APP_PLATFORM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/bean/APP_PLATFORM;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/bean/APP_PLATFORM;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/bean/APP_PLATFORM;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socialize/bean/APP_PLATFORM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/APP_PLATFORM;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/bean/APP_PLATFORM;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socialize/bean/APP_PLATFORM;->a:[Lcom/umeng/socialize/bean/APP_PLATFORM;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socialize/bean/APP_PLATFORM;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
