.class public Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/view/WifiListPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private i:I

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    .line 695
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 697
    iput-object p2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->context:Landroid/content/Context;

    .line 698
    iput-object p3, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    .line 699
    iput-object p4, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->ssid:Ljava/lang/String;

    .line 700
    iput p5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->i:I

    .line 701
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;)Lcom/pubinfo/freewifialliance/view/WifiListPage;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 712
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 718
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 725
    if-eqz p2, :cond_0

    .line 726
    const/4 p2, 0x0

    .line 729
    :cond_0
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 730
    const v6, 0x7f03003c

    const/4 v7, 0x0

    .line 729
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 733
    const v5, 0x7f0c00ee

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 732
    check-cast v4, Landroid/widget/TextView;

    .line 735
    .local v4, "wifiName":Landroid/widget/TextView;
    const v5, 0x7f0c001c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 734
    check-cast v0, Landroid/widget/TextView;

    .line 738
    .local v0, "introduceTextView":Landroid/widget/TextView;
    const v5, 0x7f0c00ec

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 737
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 741
    .local v1, "lineRl":Landroid/widget/RelativeLayout;
    const v5, 0x7f0c00ef

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 740
    check-cast v2, Landroid/widget/ImageView;

    .line 743
    .local v2, "progressIv":Landroid/widget/ImageView;
    const v5, 0x7f0c00eb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 742
    check-cast v3, Landroid/widget/Button;

    .line 744
    .local v3, "toconnectButton":Landroid/widget/Button;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    :try_start_0
    new-instance v5, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$1;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;I)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 802
    :goto_0
    :try_start_1
    new-instance v5, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter$2;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;I)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    .line 875
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 876
    const v5, 0x7f02005c

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 877
    const v5, 0x7f020050

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 878
    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 879
    const v5, 0x7f020055

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 883
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 884
    const-string v6, "chinanet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 885
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 886
    const-string v6, "chinanet"

    .line 885
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 886
    if-eqz v5, :cond_3

    .line 887
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 888
    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 889
    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 890
    const v5, 0x7f020052

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 894
    :goto_1
    const-string v5, "\u7535\u4fe1\u514d\u8d39\u4e0a\u7f51"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :cond_3
    :goto_2
    return-object p2

    .line 892
    :cond_4
    const v5, 0x7f020053

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 896
    :catch_0
    move-exception v5

    goto :goto_2

    .line 796
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method
