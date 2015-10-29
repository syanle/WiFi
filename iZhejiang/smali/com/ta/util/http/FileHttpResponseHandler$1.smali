.class Lcom/ta/util/http/FileHttpResponseHandler$1;
.super Ljava/util/TimerTask;
.source "FileHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/util/http/FileHttpResponseHandler;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/util/http/FileHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/ta/util/http/FileHttpResponseHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/util/http/FileHttpResponseHandler$1;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    .line 83
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 89
    :goto_0
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$1;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    # getter for: Lcom/ta/util/http/FileHttpResponseHandler;->timerInterrupt:Z
    invoke-static {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->access$6(Lcom/ta/util/http/FileHttpResponseHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$1;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    iget-object v1, p0, Lcom/ta/util/http/FileHttpResponseHandler$1;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    # getter for: Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J
    invoke-static {v1}, Lcom/ta/util/http/FileHttpResponseHandler;->access$7(Lcom/ta/util/http/FileHttpResponseHandler;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ta/util/http/FileHttpResponseHandler$1;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    invoke-virtual {v3}, Lcom/ta/util/http/FileHttpResponseHandler;->getDownloadSize()J

    move-result-wide v3

    .line 92
    iget-object v5, p0, Lcom/ta/util/http/FileHttpResponseHandler$1;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    # getter for: Lcom/ta/util/http/FileHttpResponseHandler;->networkSpeed:J
    invoke-static {v5}, Lcom/ta/util/http/FileHttpResponseHandler;->access$8(Lcom/ta/util/http/FileHttpResponseHandler;)J

    move-result-wide v5

    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/ta/util/http/FileHttpResponseHandler;->sendProgressMessage(JJJ)V

    .line 95
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v7

    .line 99
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
