.class final Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;
.super Landroid/os/Handler;
.source "UploadLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo/linker/logcollector/upload/UploadLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;


# direct methods
.method public constructor <init>(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v3, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    # getter for: Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->access$0(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->getInstance(Landroid/content/Context;)Lcom/qihoo/linker/logcollector/capture/LogFileStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->getUploadLogFile()Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "logFile":Ljava/io/File;
    if-nez v1, :cond_0

    .line 81
    iget-object v3, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    invoke-static {v3, v5}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->access$1(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;Z)V

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    # getter for: Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->url:Ljava/lang/String;
    invoke-static {v3}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->access$2(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    # getter for: Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->params:Lcom/qihoo/linker/logcollector/upload/HttpParameters;
    invoke-static {v4}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->access$3(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;)Lcom/qihoo/linker/logcollector/upload/HttpParameters;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/qihoo/linker/logcollector/upload/HttpManager;->uploadFile(Ljava/lang/String;Lcom/qihoo/linker/logcollector/upload/HttpParameters;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 87
    iget-object v3, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    # getter for: Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->access$0(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->getInstance(Landroid/content/Context;)Lcom/qihoo/linker/logcollector/capture/LogFileStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->deleteUploadLogFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    invoke-static {v3, v5}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->access$1(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;Z)V

    goto :goto_0

    .line 89
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget-object v3, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    invoke-static {v3, v5}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->access$1(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;Z)V

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 93
    iget-object v4, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->this$0:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    invoke-static {v4, v5}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->access$1(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;Z)V

    .line 94
    throw v3
.end method
