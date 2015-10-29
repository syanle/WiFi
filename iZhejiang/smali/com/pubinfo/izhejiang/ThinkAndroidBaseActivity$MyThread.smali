.class public Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$MyThread;
.super Ljava/lang/Thread;
.source "ThinkAndroidBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 293
    :try_start_0
    const-string v1, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    .line 294
    const-wide/16 v2, 0xbb8

    .line 293
    invoke-static {v1, v2, v3}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->executeCommand(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 304
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 302
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0
.end method
