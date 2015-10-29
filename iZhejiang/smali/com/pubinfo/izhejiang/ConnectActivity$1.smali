.class Lcom/pubinfo/izhejiang/ConnectActivity$1;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 495
    :goto_0
    return-void

    .line 475
    :sswitch_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v2, Lcom/cat/tools/SelectSharePopupWindow;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 476
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->itemsOnClick:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$0(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cat/tools/SelectSharePopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 475
    iput-object v2, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->menuWindow:Lcom/cat/tools/SelectSharePopupWindow;

    .line 478
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->menuWindow:Lcom/cat/tools/SelectSharePopupWindow;

    .line 479
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 480
    const/16 v3, 0x51

    .line 478
    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/cat/tools/SelectSharePopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 485
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v0, "data":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->setResult(ILandroid/content/Intent;)V

    .line 487
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->finish()V

    goto :goto_0

    .line 490
    .end local v0    # "data":Landroid/content/Intent;
    :sswitch_2
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$1;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # invokes: Lcom/pubinfo/izhejiang/ConnectActivity;->goIntent()V
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$1(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    goto :goto_0

    .line 472
    :sswitch_data_0
    .sparse-switch
        0x7f0a002c -> :sswitch_1
        0x7f0a0030 -> :sswitch_0
        0x7f0a0074 -> :sswitch_2
    .end sparse-switch
.end method
