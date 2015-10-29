.class public Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;
.super Ljava/lang/Thread;
.source "AroundFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/fragment/AroundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 532
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->checkNetWork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->initMap()V

    .line 534
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->showLoading(Z)V
    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Z)V

    .line 536
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 550
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->showLoading(Z)V
    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Z)V

    .line 540
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    const-string v1, "0"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getNearType(Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
