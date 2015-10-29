.class Lcom/pubinfo/izhejiang/AroundMoreActivity$4;
.super Ljava/lang/Object;
.source "AroundMoreActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/AroundMoreActivity;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 283
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 327
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 285
    :pswitch_0
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->showLoading()V

    .line 286
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->checkNetWork()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cat/data/ComData;->getBottomData()Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    .line 288
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 289
    iget-object v6, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cat/data/BottomData;

    invoke-virtual {v5}, Lcom/cat/data/BottomData;->getName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/pubinfo/izhejiang/AroundMoreActivity;->Commit(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->access$0(Lcom/pubinfo/izhejiang/AroundMoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v6, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    const v7, 0x7f060032

    invoke-virtual {v6, v7}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->showMsgToast(Ljava/lang/String;)V

    .line 293
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->hideLoading()V

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->hideLoading()V

    .line 298
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cat/data/ComData;->getMapCustom()Ljava/util/List;

    move-result-object v4

    .line 299
    .local v4, "mc":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapCustom;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 300
    new-instance v0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    .line 301
    iget-object v6, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 300
    invoke-direct {v0, v5, v6, v4}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;-><init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 302
    .local v0, "adapter":Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;
    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->notifyDataSetChanged()V

    .line 303
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/AroundMoreActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 305
    .end local v0    # "adapter":Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;
    :cond_2
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/AroundMoreActivity;->listView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 309
    .end local v4    # "mc":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapCustom;>;"
    :pswitch_2
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->hideLoading()V

    .line 310
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v6, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    const v7, 0x7f060031

    invoke-virtual {v6, v7}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :pswitch_3
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->hideLoading()V

    .line 314
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v5

    .line 315
    invoke-virtual {v5}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v1

    .line 316
    .local v1, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 317
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 318
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cat/data/PublicError;

    invoke-virtual {v5}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "errormessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v5, v2}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->showMsgToast(Ljava/lang/String;)V

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
