.class public abstract Lcom/pubinfo/izhejiang/controller/PushMessageFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "PushMessageFun.java"

# interfaces
.implements Lcom/cat/protocol/DoPushListInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPushlist(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "authid"    # Ljava/lang/String;
    .param p2, "countrycode"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/PushMessageFun;->diffTime()V

    .line 24
    new-instance v0, Lcom/cat/impl/DoPushListConn;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/cat/impl/DoPushListConn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoPushListInterface;Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method protected getReadPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "termac"    # Ljava/lang/String;
    .param p2, "authid"    # Ljava/lang/String;
    .param p3, "countrycode"    # Ljava/lang/String;
    .param p4, "pushid"    # Ljava/lang/String;
    .param p5, "appkey"    # Ljava/lang/String;
    .param p6, "secret"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method
