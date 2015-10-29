.class Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$1;
.super Ljava/lang/Thread;
.source "FindPasswordCheckMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$1;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    :goto_0
    # getter for: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->GETCODETIME:I
    invoke-static {}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$0()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$1;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    # getter for: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$1(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$1;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    # getter for: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$1(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    # getter for: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->GETCODETIME:I
    invoke-static {}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$0()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$2(I)V

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
