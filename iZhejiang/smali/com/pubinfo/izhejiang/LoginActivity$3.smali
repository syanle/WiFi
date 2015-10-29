.class Lcom/pubinfo/izhejiang/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/LoginActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 104
    :sswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    new-instance v1, Lcom/cat/tools/SelectFindPasswordPopupWindow;

    .line 105
    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    # getter for: Lcom/pubinfo/izhejiang/LoginActivity;->itemsOnClick:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/LoginActivity;->access$1(Lcom/pubinfo/izhejiang/LoginActivity;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cat/tools/SelectFindPasswordPopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, v0, Lcom/pubinfo/izhejiang/LoginActivity;->menuWindow:Lcom/cat/tools/SelectFindPasswordPopupWindow;

    .line 107
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->menuWindow:Lcom/cat/tools/SelectFindPasswordPopupWindow;

    .line 108
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    const/16 v2, 0x51

    .line 107
    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/cat/tools/SelectFindPasswordPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 113
    :sswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    # invokes: Lcom/pubinfo/izhejiang/LoginActivity;->goRegistIntent()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/LoginActivity;->access$2(Lcom/pubinfo/izhejiang/LoginActivity;)V

    goto :goto_0

    .line 116
    :sswitch_2
    # getter for: Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z
    invoke-static {}, Lcom/pubinfo/izhejiang/LoginActivity;->access$3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/LoginActivity;->showLoading()V

    .line 118
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->loading_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    # getter for: Lcom/pubinfo/izhejiang/LoginActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/LoginActivity;->access$4(Lcom/pubinfo/izhejiang/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    invoke-static {v4}, Lcom/pubinfo/izhejiang/LoginActivity;->access$5(Z)V

    goto :goto_0

    .line 124
    :sswitch_3
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/LoginActivity;->finish()V

    goto :goto_0

    .line 127
    :sswitch_4
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$3;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    # invokes: Lcom/pubinfo/izhejiang/LoginActivity;->goIntent()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/LoginActivity;->access$6(Lcom/pubinfo/izhejiang/LoginActivity;)V

    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x7f0a002c -> :sswitch_3
        0x7f0a0074 -> :sswitch_2
        0x7f0a0075 -> :sswitch_4
        0x7f0a0076 -> :sswitch_0
        0x7f0a0077 -> :sswitch_1
    .end sparse-switch
.end method
