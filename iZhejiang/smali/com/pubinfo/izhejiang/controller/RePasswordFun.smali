.class public abstract Lcom/pubinfo/izhejiang/controller/RePasswordFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "RePasswordFun.java"

# interfaces
.implements Lcom/cat/protocol/DoRePasswordInterface;


# instance fields
.field private asyncHttpClient:Lcom/ta/util/http/AsyncHttpClient;
    .annotation runtime Lcom/ta/annotation/TAInject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p1, "authid"    # Ljava/lang/String;
    .param p2, "memberid"    # Ljava/lang/String;
    .param p3, "countrycode"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .param p5, "pwd"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/RePasswordFun;->diffTime()V

    .line 29
    new-instance v0, Lcom/cat/impl/DoRePasswordConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cat/impl/DoRePasswordConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoRePasswordInterface;Landroid/content/Context;)V

    .line 31
    return-void
.end method
