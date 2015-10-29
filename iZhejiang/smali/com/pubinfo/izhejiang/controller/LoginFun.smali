.class public abstract Lcom/pubinfo/izhejiang/controller/LoginFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "LoginFun.java"

# interfaces
.implements Lcom/cat/protocol/DoLoginInterface;


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
.method protected getLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "countrycode"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/LoginFun;->diffTime()V

    .line 29
    new-instance v0, Lcom/cat/impl/DoLoginConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cat/impl/DoLoginConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoLoginInterface;Landroid/content/Context;)V

    .line 30
    return-void
.end method
