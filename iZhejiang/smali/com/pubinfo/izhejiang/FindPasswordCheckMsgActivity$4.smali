.class Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;
.super Ljava/lang/Object;
.source "FindPasswordCheckMsgActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->initialHandler()V
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 230
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return v8

    .line 232
    :pswitch_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->checkNetWork()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->phone:Ljava/lang/String;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->countrycode:Ljava/lang/String;

    const-string v6, "2"

    .line 234
    iget-object v7, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v7}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 233
    # invokes: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$9(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->showMsgToast(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->hideLoading()V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->hideLoading()V

    .line 242
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->hideLoading()V

    .line 246
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v3

    .line 247
    invoke-virtual {v3}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 249
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 250
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/PublicError;

    invoke-virtual {v3}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "errormessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v3, v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->showMsgToast(Ljava/lang/String;)V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    .end local v0    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v1    # "errormessage":Ljava/lang/String;
    .end local v2    # "i":I
    :pswitch_3
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->sendcodeButton:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->GETCODETIME:I
    invoke-static {}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$0()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u518d\u6b21\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 259
    :pswitch_4
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->sendcodeButton:Landroid/widget/Button;

    const-string v4, "\u518d\u6b21\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->sendcodeButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->sendcodeButton:Landroid/widget/Button;

    const/high16 v4, 0x7f080000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 262
    const/16 v3, 0x78

    invoke-static {v3}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$2(I)V

    goto/16 :goto_0

    .line 265
    :pswitch_5
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->hideLoading()V

    .line 266
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    const v5, 0x7f060045

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
