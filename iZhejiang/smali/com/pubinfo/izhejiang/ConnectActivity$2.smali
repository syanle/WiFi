.class Lcom/pubinfo/izhejiang/ConnectActivity$2;
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 502
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->menuWindow:Lcom/cat/tools/SelectSharePopupWindow;

    invoke-virtual {v1}, Lcom/cat/tools/SelectSharePopupWindow;->dismiss()V

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 505
    :pswitch_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-boolean v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->click_zan:Z

    if-eqz v1, :cond_0

    .line 506
    new-instance v1, Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-direct {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;->start()V

    .line 507
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iput-boolean v4, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->click_zan:Z

    goto :goto_0

    .line 511
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 512
    const-class v2, Lcom/pubinfo/izhejiang/CommentActivity;

    .line 511
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mac"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->wifimac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v1, "username"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v1, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 518
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/pubinfo/izhejiang/ConnectActivity;->showShare(ZLjava/lang/String;Z)V
    invoke-static {v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$2(Lcom/pubinfo/izhejiang/ConnectActivity;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x7f0a001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
