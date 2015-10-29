.class Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;
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
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    iput p2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->val$position:I

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->val$position:I

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

    .line 754
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 756
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    :cond_0
    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked:Z
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->val$position:I

    iput v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    .line 760
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->connToWifiJugdeByRecord()V

    .line 761
    invoke-static {v3}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$1(Z)V

    .line 794
    :cond_1
    :goto_0
    return-void

    .line 765
    :cond_2
    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked2:Z
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # invokes: Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$3(Lcom/pubinfo/freewifialliance/view/WifiListPage;)V

    .line 768
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->val$position:I

    iput v1, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    .line 769
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 772
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->initWifiNotEnable()V

    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    goto :goto_0

    .line 774
    :cond_3
    new-instance v6, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;

    .line 775
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    .line 774
    invoke-direct {v6, v0}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;-><init>(Landroid/content/Context;)V

    .line 777
    .local v6, "wifiAdmin":Lcom/pubinfo/wifi_core/core/util/WifiAdmin;
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x1

    .line 776
    invoke-virtual {v6, v0, v1, v2}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 778
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$4(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/ListView;

    move-result-object v7

    new-instance v0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v1

    .line 779
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v2

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 778
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 780
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->setClicked(Z)V

    .line 781
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$5(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/TextView;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$6(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;

    move-result-object v0

    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$6(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    .line 785
    iget v3, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->val$position:I

    .line 784
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 785
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;->this$1:Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

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

    .line 784
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->access$7(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
