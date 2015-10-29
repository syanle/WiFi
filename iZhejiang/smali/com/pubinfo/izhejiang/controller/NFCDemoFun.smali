.class public abstract Lcom/pubinfo/izhejiang/controller/NFCDemoFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "NFCDemoFun.java"

# interfaces
.implements Lcom/cat/protocol/DoCTPassInterface;
.implements Lcom/cat/protocol/DoCTPassResultInterface;


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
.method protected getCTPass(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lcom/cat/impl/DoCTPassConn;

    invoke-direct {v0, p0, p1}, Lcom/cat/impl/DoCTPassConn;-><init>(Lcom/cat/protocol/DoCTPassInterface;Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method protected getCTPassResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "seqid"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/lang/String;
    .param p4, "pcflag"    # Ljava/lang/String;
    .param p5, "timestamp"    # Ljava/lang/String;
    .param p6, "s"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/NFCDemoFun;->diffTime()V

    .line 38
    new-instance v0, Lcom/cat/impl/DoCTPassResultConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p0

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/cat/impl/DoCTPassResultConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoCTPassResultInterface;Landroid/content/Context;)V

    .line 40
    return-void
.end method
