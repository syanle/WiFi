.class public Lcom/pubinfo/freewifialliance/view/CenterPage;
.super Landroid/app/TabActivity;
.source "CenterPage.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field mIcon:[I

.field mTitle:[Ljava/lang/String;

.field private mainTab:Landroid/widget/RadioGroup;

.field private me:Landroid/content/Intent;

.field private tabhost:Landroid/widget/TabHost;

.field private wifiList:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 23
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wifi\u70ed\u70b9"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e2a\u4eba\u4e2d\u5fc3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->mTitle:[Ljava/lang/String;

    .line 30
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->mIcon:[I

    .line 23
    return-void

    .line 30
    :array_0
    .array-data 4
        0x7f020145
        0x7f020074
    .end array-data
.end method


# virtual methods
.method public getTabItemView(I)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 80
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030016

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->mIcon:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->mTitle:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CenterPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-object v2
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 65
    packed-switch p2, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->mTitle:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->mTitle:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f0c0010
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0200a2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0, v6}, Lcom/pubinfo/freewifialliance/view/CenterPage;->requestWindowFeature(I)Z

    .line 36
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/CenterPage;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CenterPage;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->layoutInflater:Landroid/view/LayoutInflater;

    .line 40
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/pubinfo/freewifialliance/view/WifiListPage;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->wifiList:Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CenterPage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "jump"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->wifiList:Landroid/content/Intent;

    const-string v3, "jump"

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CenterPage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "jump"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/pubinfo/freewifialliance/view/PersonalPage;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->me:Landroid/content/Intent;

    .line 47
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->mTitle:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 48
    invoke-virtual {p0, v7}, Lcom/pubinfo/freewifialliance/view/CenterPage;->getTabItemView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->wifiList:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 49
    .local v0, "tabSpec":Landroid/widget/TabHost$TabSpec;
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 50
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 54
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->mTitle:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 55
    invoke-virtual {p0, v6}, Lcom/pubinfo/freewifialliance/view/CenterPage;->getTabItemView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->me:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 56
    .local v1, "tabSpec1":Landroid/widget/TabHost$TabSpec;
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 57
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/CenterPage;->tabhost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 60
    return-void
.end method
