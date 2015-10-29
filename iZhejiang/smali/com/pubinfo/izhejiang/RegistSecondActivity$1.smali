.class Lcom/pubinfo/izhejiang/RegistSecondActivity$1;
.super Ljava/lang/Thread;
.source "RegistSecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/RegistSecondActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$1;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    .line 243
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    :goto_0
    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->GETCODETIME:I
    invoke-static {}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$0()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$1;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$1(Lcom/pubinfo/izhejiang/RegistSecondActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    return-void

    .line 249
    :cond_1
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 250
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$1;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$1(Lcom/pubinfo/izhejiang/RegistSecondActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
