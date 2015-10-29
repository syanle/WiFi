.class public abstract Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;
.source "BaiduMapsFun.java"

# interfaces
.implements Lcom/cat/protocol/DoNearTypeInterface;
.implements Lcom/cat/protocol/DoNearBusListInterface;


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
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNearBusList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 13
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "lng"    # Ljava/lang/String;
    .param p3, "lat"    # Ljava/lang/String;
    .param p4, "radius"    # Ljava/lang/String;
    .param p5, "cate"    # Ljava/lang/String;
    .param p6, "sort"    # Ljava/lang/String;
    .param p7, "authid"    # Ljava/lang/String;
    .param p8, "bussid"    # Ljava/lang/String;
    .param p9, "ssid"    # Ljava/lang/String;
    .param p10, "page"    # Ljava/lang/String;
    .param p11, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->diffTime()V

    .line 40
    new-instance v0, Lcom/cat/impl/DoNearBusListConn;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v11, p0

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/cat/impl/DoNearBusListConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoNearBusListInterface;Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method protected getNearType(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->diffTime()V

    .line 30
    new-instance v0, Lcom/cat/impl/DoNearTypeConn;

    invoke-direct {v0, p1, p0, p2}, Lcom/cat/impl/DoNearTypeConn;-><init>(Ljava/lang/String;Lcom/cat/protocol/DoNearTypeInterface;Landroid/content/Context;)V

    .line 31
    return-void
.end method
