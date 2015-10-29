.class public abstract Lcom/pubinfo/izhejiang/controller/RegistFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "RegistFun.java"

# interfaces
.implements Lcom/cat/protocol/DoSmsAuthInterface;


# instance fields
.field private asyncHttpClient:Lcom/ta/util/http/AsyncHttpClient;
    .annotation runtime Lcom/ta/annotation/TAInject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "appkey"    # Ljava/lang/String;
    .param p5, "secret"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method
