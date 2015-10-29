.class public abstract Lcom/pubinfo/izhejiang/controller/FindPasswordFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "FindPasswordFun.java"

# interfaces
.implements Lcom/cat/protocol/DoMobileExistInterface;


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
.method protected getMobileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "countrycode"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/FindPasswordFun;->diffTime()V

    .line 29
    new-instance v0, Lcom/cat/impl/DoMobileExistConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cat/impl/DoMobileExistConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoMobileExistInterface;Landroid/content/Context;)V

    .line 30
    return-void
.end method
