.class Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;
.super Landroid/os/Handler;
.source "SsidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const-string v4, ""

    iput-object v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->macstring:Ljava/lang/String;

    .line 136
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v16, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 138
    invoke-static {}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getTianyiWifi()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v9, "buff":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v10, "buff2":Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-lt v12, v3, :cond_1

    .line 148
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 149
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 148
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "macssidstring":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 151
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 150
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->macstring:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v2, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->username:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->macstring:Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getSsidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static/range {v1 .. v6}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 142
    .end local v13    # "macssidstring":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 143
    .local v14, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v3, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 145
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    const-string v3, "mac"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 158
    .end local v9    # "buff":Ljava/lang/StringBuffer;
    .end local v10    # "buff2":Ljava/lang/StringBuffer;
    .end local v12    # "i":I
    .end local v14    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v16    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v17, "wifiList1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 160
    invoke-static {}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getTianyiWifi()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 166
    .end local v17    # "wifiList1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_2
    new-instance v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-direct {v3, v4}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->start()V

    goto/16 :goto_0

    .line 169
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    new-instance v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiListAll:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifimac:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->ssidstring:Ljava/lang/String;

    .line 172
    invoke-direct/range {v1 .. v6}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v1, "wifiAdapter":Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Lcom/cat/list/XListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cat/list/XListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .end local v1    # "wifiAdapter":Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn_click:Z

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$5(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    goto/16 :goto_0

    .line 186
    :pswitch_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$6(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$5(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    goto/16 :goto_0

    .line 198
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$5(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 201
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v8

    .line 203
    .local v8, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 204
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lt v12, v3, :cond_5

    .line 211
    .end local v12    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 205
    .restart local v12    # "i":I
    :cond_5
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/PublicError;

    invoke-virtual {v3}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, "errormessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v3, v11}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$6(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Ljava/lang/String;)V

    .line 204
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 216
    .end local v8    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v11    # "errormessage":Ljava/lang/String;
    .end local v12    # "i":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$5(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const-string v4, ""

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$6(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :pswitch_7
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v18, "wifiList3":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 224
    invoke-static {}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getTianyiWifi()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v19, "wifiListsystem":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 228
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    if-lt v12, v3, :cond_7

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 240
    new-instance v2, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 241
    invoke-static/range {v19 .. v19}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getNewList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifimac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->ssidstring:Ljava/lang/String;

    .line 240
    invoke-direct/range {v2 .. v7}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v2, "wifiAdapter2":Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;
    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->notifyDataSetChanged()V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Lcom/cat/list/XListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cat/list/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn_click:Z

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$5(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    goto/16 :goto_0

    .line 229
    .end local v2    # "wifiAdapter2":Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;
    :cond_7
    new-instance v15, Lcom/cat/data/SsidData;

    invoke-direct {v15}, Lcom/cat/data/SsidData;-><init>()V

    .line 230
    .local v15, "sd4":Lcom/cat/data/SsidData;
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v15, v3}, Lcom/cat/data/SsidData;->setLevel(I)V

    .line 231
    const-string v3, ""

    invoke-virtual {v15, v3}, Lcom/cat/data/SsidData;->setLogo(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v15, v3}, Lcom/cat/data/SsidData;->setMac(Ljava/lang/String;)V

    .line 233
    const-string v3, "3"

    invoke-virtual {v15, v3}, Lcom/cat/data/SsidData;->setNettype(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v15, v3}, Lcom/cat/data/SsidData;->setSsid(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->checkPassword(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/cat/data/SsidData;->setPassword(I)V

    .line 236
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 249
    .end local v12    # "i":I
    .end local v15    # "sd4":Lcom/cat/data/SsidData;
    .end local v18    # "wifiList3":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v19    # "wifiListsystem":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const v4, 0x7f02013a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$0(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getWiFi()V

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn:Z

    .line 265
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$5(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    goto/16 :goto_0

    .line 257
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Lcom/cat/list/XListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/cat/list/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const v4, 0x7f020137

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn:Z

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const v5, 0x7f06002f

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$6(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn_click:Z

    goto :goto_6

    .line 271
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const v4, 0x7f020137

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Lcom/cat/list/XListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/cat/list/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn_click:Z

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn:Z

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$5(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 177
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method
