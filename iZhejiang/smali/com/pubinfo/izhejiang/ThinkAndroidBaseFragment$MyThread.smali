.class public Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$MyThread;
.super Ljava/lang/Thread;
.source "ThinkAndroidBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 239
    :try_start_0
    const-string v1, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    .line 240
    const-wide/16 v2, 0xbb8

    .line 239
    invoke-static {v1, v2, v3}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->executeCommand(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 250
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 248
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0
.end method
