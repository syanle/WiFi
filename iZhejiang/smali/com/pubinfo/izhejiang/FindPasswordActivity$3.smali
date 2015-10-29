.class Lcom/pubinfo/izhejiang/FindPasswordActivity$3;
.super Ljava/lang/Object;
.source "FindPasswordActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/FindPasswordActivity;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 204
    :pswitch_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->checkNetWork()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    # invokes: Lcom/pubinfo/izhejiang/FindPasswordActivity;->Commit()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->access$1(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->hideLoading()V

    .line 208
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->hideLoading()V

    .line 214
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->hideLoading()V

    .line 218
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 222
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/PublicError;

    invoke-virtual {v3}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "errormessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    invoke-virtual {v3, v1}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->showMsgToast(Ljava/lang/String;)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
