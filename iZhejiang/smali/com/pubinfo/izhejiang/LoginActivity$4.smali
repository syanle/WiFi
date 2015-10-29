.class Lcom/pubinfo/izhejiang/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/LoginActivity;->initialHandler()V
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 377
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 408
    :goto_0
    return v6

    .line 379
    :pswitch_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/LoginActivity;->checkNetWork()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    # invokes: Lcom/pubinfo/izhejiang/LoginActivity;->Commit()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/LoginActivity;->access$7(Lcom/pubinfo/izhejiang/LoginActivity;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/LoginActivity;->showMsgToast(Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    .line 384
    invoke-static {v6}, Lcom/pubinfo/izhejiang/LoginActivity;->access$5(Z)V

    goto :goto_0

    .line 388
    :pswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    .line 389
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/LoginActivity;->showMsgToast(Ljava/lang/String;)V

    .line 390
    invoke-static {v6}, Lcom/pubinfo/izhejiang/LoginActivity;->access$5(Z)V

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    .line 394
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v3

    .line 395
    invoke-virtual {v3}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 396
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 402
    .end local v2    # "i":I
    :cond_1
    invoke-static {v6}, Lcom/pubinfo/izhejiang/LoginActivity;->access$5(Z)V

    goto :goto_0

    .line 398
    .restart local v2    # "i":I
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/PublicError;

    invoke-virtual {v3}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "errormessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity$4;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v3, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->showMsgToast(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
