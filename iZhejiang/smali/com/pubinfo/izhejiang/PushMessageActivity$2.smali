.class Lcom/pubinfo/izhejiang/PushMessageActivity$2;
.super Ljava/lang/Object;
.source "PushMessageActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/PushMessageActivity;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/PushMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 118
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 169
    :goto_0
    return v8

    .line 120
    :pswitch_0
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->checkNetWork()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    # invokes: Lcom/pubinfo/izhejiang/PushMessageActivity;->goLoading()V
    invoke-static {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$1(Lcom/pubinfo/izhejiang/PushMessageActivity;)V

    .line 122
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/PushMessageActivity;->authid:Ljava/lang/String;

    iget-object v6, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/PushMessageActivity;->countrycode:Ljava/lang/String;

    .line 123
    iget-object v7, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v7}, Lcom/pubinfo/izhejiang/PushMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 122
    # invokes: Lcom/pubinfo/izhejiang/PushMessageActivity;->getPushlist(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v4, v5, v6, v7}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$2(Lcom/pubinfo/izhejiang/PushMessageActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    # invokes: Lcom/pubinfo/izhejiang/PushMessageActivity;->goNoMsg()V
    invoke-static {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$3(Lcom/pubinfo/izhejiang/PushMessageActivity;)V

    .line 126
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    const v6, 0x7f060032

    invoke-virtual {v5, v6}, Lcom/pubinfo/izhejiang/PushMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/PushMessageActivity;->showMsgToast(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->hideLoading()V

    .line 128
    invoke-static {v8}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$4(Z)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    # invokes: Lcom/pubinfo/izhejiang/PushMessageActivity;->goNoMsg()V
    invoke-static {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$3(Lcom/pubinfo/izhejiang/PushMessageActivity;)V

    .line 134
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->hideLoading()V

    .line 135
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    const v6, 0x7f060031

    invoke-virtual {v5, v6}, Lcom/pubinfo/izhejiang/PushMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/PushMessageActivity;->showMsgToast(Ljava/lang/String;)V

    .line 136
    invoke-static {v8}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$4(Z)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    # invokes: Lcom/pubinfo/izhejiang/PushMessageActivity;->goNoMsg()V
    invoke-static {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$3(Lcom/pubinfo/izhejiang/PushMessageActivity;)V

    .line 140
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->hideLoading()V

    .line 141
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 149
    .end local v2    # "i":I
    :cond_1
    invoke-static {v8}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$4(Z)V

    goto :goto_0

    .line 145
    .restart local v2    # "i":I
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/PublicError;

    invoke-virtual {v4}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "errormessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v4, v1}, Lcom/pubinfo/izhejiang/PushMessageActivity;->showMsgToast(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v1    # "errormessage":Ljava/lang/String;
    .end local v2    # "i":I
    :pswitch_3
    invoke-static {v8}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$4(Z)V

    .line 153
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->hideLoading()V

    .line 154
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    .line 155
    invoke-virtual {v4}, Lcom/cat/data/ComData;->getPushListData()Ljava/util/List;

    move-result-object v3

    .line 156
    .local v3, "listpush":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PushListData;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 157
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/PushMessageActivity;->wifiLView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 158
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    new-instance v5, Lcom/cat/adapter/MessageListAdapter;

    .line 159
    iget-object v6, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/PushMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/cat/adapter/MessageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 158
    iput-object v5, v4, Lcom/pubinfo/izhejiang/PushMessageActivity;->msgAdapter:Lcom/cat/adapter/MessageListAdapter;

    .line 160
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/PushMessageActivity;->wifiLView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/PushMessageActivity;->msgAdapter:Lcom/cat/adapter/MessageListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 162
    :cond_3
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$2;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    # invokes: Lcom/pubinfo/izhejiang/PushMessageActivity;->goNoMsg()V
    invoke-static {v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$3(Lcom/pubinfo/izhejiang/PushMessageActivity;)V

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
