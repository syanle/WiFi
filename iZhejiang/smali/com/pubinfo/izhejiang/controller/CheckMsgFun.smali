.class public abstract Lcom/pubinfo/izhejiang/controller/CheckMsgFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "CheckMsgFun.java"

# interfaces
.implements Lcom/cat/protocol/DoSmsAuthInterface;
.implements Lcom/cat/protocol/DoCheckCodeInterface;


# instance fields
.field private asyncHttpClient:Lcom/ta/util/http/AsyncHttpClient;
    .annotation runtime Lcom/ta/annotation/TAInject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCheckCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/CheckMsgFun;->diffTime()V

    .line 40
    new-instance v0, Lcom/cat/impl/DoCheckcodeConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cat/impl/DoCheckcodeConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoCheckCodeInterface;Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method protected getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "countrycode"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/CheckMsgFun;->diffTime()V

    .line 31
    new-instance v0, Lcom/cat/impl/DoSmsAuthConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cat/impl/DoSmsAuthConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoSmsAuthInterface;Landroid/content/Context;)V

    .line 32
    return-void
.end method
