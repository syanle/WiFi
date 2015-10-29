.class public Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;
.super Landroid/widget/BaseAdapter;
.source "SsidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field level:I

.field logourl:Ljava/lang/String;

.field private mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

.field mac:Ljava/lang/String;

.field private macstring:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/SsidData;",
            ">;"
        }
    .end annotation
.end field

.field private ssid:Ljava/lang/String;

.field ssidclick:Ljava/lang/String;

.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/SsidData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 612
    .local p3, "listfinal":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    .line 611
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 613
    iput-object p2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->context:Landroid/content/Context;

    .line 614
    iput-object p3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    .line 615
    iput-object p4, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->macstring:Ljava/lang/String;

    .line 616
    iput-object p5, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->ssid:Ljava/lang/String;

    .line 617
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->macstring:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Lcom/pubinfo/izhejiang/fragment/SsidFragment;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 634
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    const v6, 0x7f020038

    const v5, 0x7f020037

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 640
    if-nez p2, :cond_4

    .line 641
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 642
    const v1, 0x7f030038

    .line 641
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 643
    new-instance v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    .line 644
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    .line 645
    const v0, 0x7f0a00f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 644
    iput-object v0, v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl:Landroid/widget/RelativeLayout;

    .line 646
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    .line 647
    const v0, 0x7f0a00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 646
    iput-object v0, v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_ssid:Landroid/widget/TextView;

    .line 648
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    .line 649
    const v0, 0x7f0a00f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 648
    iput-object v0, v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_strength:Landroid/widget/ImageView;

    .line 650
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    .line 651
    const v0, 0x7f0a00f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 650
    iput-object v0, v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_attention:Landroid/widget/TextView;

    .line 652
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    .line 653
    const v0, 0x7f0a00f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 652
    iput-object v0, v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_connected:Landroid/widget/TextView;

    .line 654
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    .line 655
    const v0, 0x7f0a00f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 654
    iput-object v0, v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_info:Landroid/widget/ImageView;

    .line 656
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    .line 657
    const v0, 0x7f0a00f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 656
    iput-object v0, v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl_wifi_item:Landroid/widget/RelativeLayout;

    .line 658
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getNettype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->type:Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->level:I

    .line 665
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mac:Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->logourl:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->ssidclick:Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v1, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_ssid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->type:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 672
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_attention:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl:Landroid/widget/RelativeLayout;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 691
    :cond_0
    :goto_1
    iget v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->level:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x55

    if-le v0, v1, :cond_8

    .line 692
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_strength:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 693
    const v2, 0x7f020133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 692
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getSsid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_connected:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_info:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    :goto_3
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->logourl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 726
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->logourl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->mDownloader:Lcom/cat/list/ImageDownloader;

    if-nez v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    new-instance v1, Lcom/cat/list/ImageDownloader;

    invoke-direct {v1}, Lcom/cat/list/ImageDownloader;-><init>()V

    iput-object v1, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->mDownloader:Lcom/cat/list/ImageDownloader;

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->mDownloader:Lcom/cat/list/ImageDownloader;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->logourl:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl:Landroid/widget/RelativeLayout;

    const-string v3, "/Awifi"

    .line 732
    iget-object v4, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$1;

    invoke-direct {v5, p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$1;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)V

    .line 731
    invoke-virtual/range {v0 .. v5}, Lcom/cat/list/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/cat/list/OnImageDownload;)V

    .line 771
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl_wifi_item:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_info:Landroid/widget/ImageView;

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$3;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    return-object p2

    .line 660
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    goto/16 :goto_0

    .line 674
    :cond_5
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 675
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_attention:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 677
    :cond_6
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->type:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/SsidData;

    invoke-virtual {v0}, Lcom/cat/data/SsidData;->getPassword()I

    move-result v0

    if-nez v0, :cond_7

    .line 679
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_attention:Landroid/widget/TextView;

    .line 680
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl:Landroid/widget/RelativeLayout;

    .line 682
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 684
    :cond_7
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_attention:Landroid/widget/TextView;

    .line 685
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl:Landroid/widget/RelativeLayout;

    .line 687
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 694
    :cond_8
    iget v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->level:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_9

    .line 695
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_strength:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 696
    const v2, 0x7f020134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 695
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 697
    :cond_9
    iget v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->level:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_a

    .line 698
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_strength:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 699
    const v2, 0x7f020135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 698
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 701
    :cond_a
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_strength:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 702
    const v2, 0x7f020136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 701
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 711
    :cond_b
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->tv_connected:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->iv_info:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 757
    :cond_c
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->mHolder:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_4
.end method
