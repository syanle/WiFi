.class public Lcom/pubinfo/izhejiang/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static final UPLOAD_URL:Ljava/lang/String; = "http://xxxxxxxx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 19
    new-instance v1, Lcom/qihoo/linker/logcollector/upload/HttpParameters;

    invoke-direct {v1}, Lcom/qihoo/linker/logcollector/upload/HttpParameters;-><init>()V

    .line 20
    .local v1, "params":Lcom/qihoo/linker/logcollector/upload/HttpParameters;
    const-string v2, "key1"

    const-string v3, "value1"

    invoke-virtual {v1, v2, v3}, Lcom/qihoo/linker/logcollector/upload/HttpParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v2, "key2"

    const-string v3, "value2"

    invoke-virtual {v1, v2, v3}, Lcom/qihoo/linker/logcollector/upload/HttpParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v2, "key3"

    const-string v3, "value3"

    invoke-virtual {v1, v2, v3}, Lcom/qihoo/linker/logcollector/upload/HttpParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x1

    .line 28
    .local v0, "isDebug":Z
    invoke-static {v0}, Lcom/qihoo/linker/logcollector/LogCollector;->setDebugMode(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "http://xxxxxxxx"

    invoke-static {v2, v3, v1}, Lcom/qihoo/linker/logcollector/LogCollector;->init(Landroid/content/Context;Ljava/lang/String;Lcom/qihoo/linker/logcollector/upload/HttpParameters;)V

    .line 30
    return-void
.end method
