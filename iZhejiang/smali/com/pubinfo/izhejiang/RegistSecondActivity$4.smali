.class Lcom/pubinfo/izhejiang/RegistSecondActivity$4;
.super Ljava/lang/Object;
.source "RegistSecondActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/RegistSecondActivity;->initialHandler()V
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 308
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    return v8

    .line 310
    :pswitch_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->checkNetWork()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/RegistSecondActivity;->phone:Ljava/lang/String;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    const-string v6, "1"

    .line 312
    iget-object v7, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v7}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 311
    # invokes: Lcom/pubinfo/izhejiang/RegistSecondActivity;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$4(Lcom/pubinfo/izhejiang/RegistSecondActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->showMsgToast(Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->hideLoading()V

    goto :goto_0

    .line 319
    :pswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->hideLoading()V

    .line 320
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->hideLoading()V

    .line 324
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 327
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 328
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/PublicError;

    invoke-virtual {v3}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "errormessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v3, v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->showMsgToast(Ljava/lang/String;)V

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v1    # "errormessage":Ljava/lang/String;
    .end local v2    # "i":I
    :pswitch_3
    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->GETCODETIME:I
    invoke-static {}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$0()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$9(I)V

    .line 335
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->GETCODETIME:I
    invoke-static {}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$0()I

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

    .line 338
    :pswitch_4
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->clicknum:I

    if-eq v3, v8, :cond_2

    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->clicknum:I

    if-le v3, v8, :cond_3

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 341
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    const-string v4, "\u518d\u6b21\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    .line 344
    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 345
    invoke-static {v6}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$9(I)V

    goto/16 :goto_0

    .line 347
    :cond_3
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    const-string v4, "\u518d\u6b21\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 349
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    .line 350
    const/high16 v4, 0x7f080000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 351
    invoke-static {v6}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$9(I)V

    .line 352
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget v4, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->clicknum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/pubinfo/izhejiang/RegistSecondActivity;->clicknum:I

    goto/16 :goto_0

    .line 356
    :pswitch_5
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->hideLoading()V

    .line 357
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    const v5, 0x7f060046

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    nop

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
