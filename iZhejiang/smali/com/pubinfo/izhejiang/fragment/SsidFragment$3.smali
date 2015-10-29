.class Lcom/pubinfo/izhejiang/fragment/SsidFragment$3;
.super Ljava/lang/Object;
.source "SsidFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showWifiBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$3;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$3;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 555
    return-void
.end method
