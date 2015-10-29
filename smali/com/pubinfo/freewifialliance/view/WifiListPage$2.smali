.class Lcom/pubinfo/freewifialliance/view/WifiListPage$2;
.super Landroid/os/Handler;
.source "WifiListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/WifiListPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    .line 189
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 195
    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v3, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 197
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    new-instance v0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    .line 206
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    iget-object v4, v5, Lcom/pubinfo/freewifialliance/view/WifiListPage;->ssidString:Ljava/lang/String;

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    iget v5, v5, Lcom/pubinfo/freewifialliance/view/WifiListPage;->i:I

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 207
    .local v0, "wifiAdapter":Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$4(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 210
    .end local v0    # "wifiAdapter":Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;
    .end local v3    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v7, "wifiList1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 212
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    new-instance v4, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    .line 214
    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    const-string v8, ""

    const/4 v9, 0x0

    .line 213
    invoke-direct/range {v4 .. v9}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 215
    .local v4, "wifiAdapter2":Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$4(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
