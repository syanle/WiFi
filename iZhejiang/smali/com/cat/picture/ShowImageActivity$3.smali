.class Lcom/cat/picture/ShowImageActivity$3;
.super Ljava/lang/Object;
.source "ShowImageActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/picture/ShowImageActivity;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/picture/ShowImageActivity;


# direct methods
.method constructor <init>(Lcom/cat/picture/ShowImageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x3

    .line 180
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 182
    :pswitch_0
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    invoke-virtual {v5}, Lcom/cat/picture/ShowImageActivity;->checkNetWork()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    new-instance v5, Lcom/cat/picture/ShowImageActivity$MyThread;

    iget-object v6, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    invoke-direct {v5, v6}, Lcom/cat/picture/ShowImageActivity$MyThread;-><init>(Lcom/cat/picture/ShowImageActivity;)V

    invoke-virtual {v5}, Lcom/cat/picture/ShowImageActivity$MyThread;->start()V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    iget-object v6, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    const v7, 0x7f060032

    invoke-virtual {v6, v7}, Lcom/cat/picture/ShowImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/cat/picture/ShowImageActivity;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/cat/picture/ShowImageActivity;->access$4(Lcom/cat/picture/ShowImageActivity;Ljava/lang/String;)V

    .line 186
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    # invokes: Lcom/cat/picture/ShowImageActivity;->hideLoading()V
    invoke-static {v5}, Lcom/cat/picture/ShowImageActivity;->access$5(Lcom/cat/picture/ShowImageActivity;)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    # invokes: Lcom/cat/picture/ShowImageActivity;->hideLoading()V
    invoke-static {v5}, Lcom/cat/picture/ShowImageActivity;->access$5(Lcom/cat/picture/ShowImageActivity;)V

    .line 192
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v1, "data":Landroid/content/Intent;
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    invoke-virtual {v5, v7, v1}, Lcom/cat/picture/ShowImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 195
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    invoke-virtual {v5}, Lcom/cat/picture/ShowImageActivity;->finish()V

    goto :goto_0

    .line 198
    .end local v1    # "data":Landroid/content/Intent;
    :pswitch_2
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    # invokes: Lcom/cat/picture/ShowImageActivity;->hideLoading()V
    invoke-static {v5}, Lcom/cat/picture/ShowImageActivity;->access$5(Lcom/cat/picture/ShowImageActivity;)V

    .line 199
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v2, "data2":Landroid/content/Intent;
    const-string v5, "tag"

    const-string v6, "yes"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    invoke-virtual {v5, v7, v2}, Lcom/cat/picture/ShowImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 202
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    invoke-virtual {v5}, Lcom/cat/picture/ShowImageActivity;->finish()V

    goto :goto_0

    .line 205
    .end local v2    # "data2":Landroid/content/Intent;
    :pswitch_3
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    # invokes: Lcom/cat/picture/ShowImageActivity;->hideLoading()V
    invoke-static {v5}, Lcom/cat/picture/ShowImageActivity;->access$5(Lcom/cat/picture/ShowImageActivity;)V

    .line 206
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    iget-object v6, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    const v7, 0x7f060031

    invoke-virtual {v6, v7}, Lcom/cat/picture/ShowImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/cat/picture/ShowImageActivity;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/cat/picture/ShowImageActivity;->access$4(Lcom/cat/picture/ShowImageActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    # invokes: Lcom/cat/picture/ShowImageActivity;->hideLoading()V
    invoke-static {v5}, Lcom/cat/picture/ShowImageActivity;->access$5(Lcom/cat/picture/ShowImageActivity;)V

    .line 210
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v5

    .line 211
    invoke-virtual {v5}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 213
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 214
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cat/data/PublicError;

    invoke-virtual {v5}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "errormessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/cat/picture/ShowImageActivity$3;->this$0:Lcom/cat/picture/ShowImageActivity;

    # invokes: Lcom/cat/picture/ShowImageActivity;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/cat/picture/ShowImageActivity;->access$4(Lcom/cat/picture/ShowImageActivity;Ljava/lang/String;)V

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
