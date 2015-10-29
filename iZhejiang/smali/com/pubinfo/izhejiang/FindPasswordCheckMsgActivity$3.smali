.class Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;
.super Ljava/lang/Object;
.source "FindPasswordCheckMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 66
    :sswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->showLoading()V

    .line 67
    new-instance v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-direct {v0, v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;-><init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->start()V

    goto :goto_0

    .line 77
    :sswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->finish()V

    goto :goto_0

    .line 80
    :sswitch_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->showLoading()V

    .line 81
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->phone:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v3, "2"

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 81
    # invokes: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getCheckCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$10(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a002c -> :sswitch_1
        0x7f0a002e -> :sswitch_2
        0x7f0a0046 -> :sswitch_0
    .end sparse-switch
.end method
