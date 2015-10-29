.class Lcom/pubinfo/izhejiang/EditInfomationActivity$3;
.super Ljava/lang/Object;
.source "EditInfomationActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/EditInfomationActivity;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/EditInfomationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 195
    :pswitch_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->checkNetWork()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usertag:Ljava/lang/String;

    const-string v4, "nick"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    # invokes: Lcom/pubinfo/izhejiang/EditInfomationActivity;->Commit1()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->access$1(Lcom/pubinfo/izhejiang/EditInfomationActivity;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usertag:Ljava/lang/String;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    # invokes: Lcom/pubinfo/izhejiang/EditInfomationActivity;->Commit2()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->access$2(Lcom/pubinfo/izhejiang/EditInfomationActivity;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->hideLoading()V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->hideLoading()V

    .line 209
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->hideLoading()V

    .line 213
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/PublicError;

    invoke-virtual {v3}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "errormessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/EditInfomationActivity;

    invoke-virtual {v3, v1}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
