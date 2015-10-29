.class public abstract Lcom/pubinfo/izhejiang/controller/PersonInfomationFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "PersonInfomationFun.java"

# interfaces
.implements Lcom/cat/protocol/DoRegistNewInterface;


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
.method protected getRegistNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "nick"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "countrycode"    # Ljava/lang/String;
    .param p8, "checktype"    # Ljava/lang/String;
    .param p9, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/PersonInfomationFun;->diffTime()V

    .line 30
    new-instance v0, Lcom/cat/impl/DoRegistNewConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p0

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/cat/impl/DoRegistNewConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoRegistNewInterface;Landroid/content/Context;)V

    .line 32
    return-void
.end method
