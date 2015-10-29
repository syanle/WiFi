.class Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;
.super Landroid/os/Handler;
.source "AroundFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/AroundFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    .line 192
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 195
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->layout_more:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->showLoading(Z)V
    invoke-static {v3, v4}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Z)V

    .line 203
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getLocation()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$5(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->initOverlay()V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    .line 214
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cat/data/ComData;->getMapData()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    .line 215
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 216
    iget-object v4, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/MapData;

    invoke-virtual {v3}, Lcom/cat/data/MapData;->getName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->Commit(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$6(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    .line 223
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->relativelayout_Map:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 228
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    invoke-static {v4}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$3(Z)V

    goto/16 :goto_0

    .line 234
    :pswitch_4
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    invoke-static {v4}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$3(Z)V

    .line 236
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    .line 237
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :pswitch_5
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    .line 243
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v3

    .line 244
    invoke-virtual {v3}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 246
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 253
    .end local v0    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v2    # "i":I
    :cond_1
    invoke-static {v4}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$3(Z)V

    goto/16 :goto_0

    .line 247
    .restart local v0    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .restart local v2    # "i":I
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/PublicError;

    .line 248
    invoke-virtual {v3}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "errormessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3, v1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->showMsgToast(Ljava/lang/String;)V

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    .end local v0    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v1    # "errormessage":Ljava/lang/String;
    .end local v2    # "i":I
    :pswitch_6
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->initOverlay2()V

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
