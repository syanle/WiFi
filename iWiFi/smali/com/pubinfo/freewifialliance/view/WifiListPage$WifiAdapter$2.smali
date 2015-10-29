.class Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;
.super Ljava/lang/Object;
.source "WifiListPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    iput p2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$0(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$1(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$0(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 808
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$1(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 812
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    :cond_0
    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked:Z
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    const-string v0, "--loading--"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    iput v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    .line 817
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->connToWifiJugdeByRecord()V

    .line 818
    invoke-static {v9}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$1(Z)V

    .line 870
    :cond_1
    :goto_0
    return-void

    .line 821
    :cond_2
    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked2:Z
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    iput v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    .line 823
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->initWifiNotEnable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_1
    invoke-static {v9}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$7(Z)V

    goto :goto_0

    .line 828
    :cond_3
    :try_start_1
    new-instance v7, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;

    .line 829
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    .line 828
    invoke-direct {v7, v0}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;-><init>(Landroid/content/Context;)V

    .line 831
    .local v7, "wifiAdmin":Lcom/pubinfo/wifi_core/core/util/WifiAdmin;
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v1, ""

    .line 832
    const/4 v2, 0x1

    .line 830
    invoke-virtual {v7, v0, v1, v2}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 833
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$4(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/ListView;

    move-result-object v8

    new-instance v0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v1

    .line 834
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v2

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v3

    const-string v4, ""

    .line 835
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 833
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 836
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->setClicked(Z)V

    .line 837
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$5(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/TextView;

    move-result-object v0

    .line 838
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$6(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$6(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    .line 841
    iget v3, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->val$position:I

    .line 840
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 841
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const v3, 0x7f06005d

    invoke-virtual {v0, v3}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # invokes: Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$3(Lcom/pubinfo/freewifialliance/view/WifiListPage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 845
    .end local v7    # "wifiAdmin":Lcom/pubinfo/wifi_core/core/util/WifiAdmin;
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 852
    :cond_4
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    .line 853
    const-string v1, "LOGOFF"

    .line 852
    invoke-virtual {v0, v1, v9}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 855
    .local v6, "sharedata":Landroid/content/SharedPreferences;
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "result"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->result:Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "message"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->message:Ljava/lang/String;

    .line 857
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "appauth_type"

    .line 858
    const-string v2, ""

    .line 857
    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->appauth_type:Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "logoffUrl"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->logoffUrl:Ljava/lang/String;

    .line 860
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->token:Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "portal_url"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->portal_url:Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "platform_code"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->platform_code:Ljava/lang/String;

    .line 863
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    .line 864
    const-string v1, "third_token"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 863
    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->third_token:Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "dev_id"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->dev_id:Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const-string v1, "ac_name"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->ac_name:Ljava/lang/String;

    .line 868
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->disconnWifiBy()V

    goto/16 :goto_0
.end method
