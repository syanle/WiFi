.class public Lcom/pubinfo/freewifialliance/view/UserIntroduce;
.super Landroid/support/v4/app/FragmentActivity;
.source "UserIntroduce.java"


# instance fields
.field mAdapter:Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;

.field mIndicator:Lcom/pubinfo/freewifialliance/view/PageIndicator;

.field mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->requestWindowFeature(I)Z

    .line 42
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->setContentView(I)V

    .line 44
    new-instance v0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->mAdapter:Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;

    .line 46
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->mPager:Landroid/support/v4/view/ViewPager;

    .line 47
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->mAdapter:Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 49
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pubinfo/freewifialliance/view/IconPageIndicator;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->mIndicator:Lcom/pubinfo/freewifialliance/view/PageIndicator;

    .line 50
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->mIndicator:Lcom/pubinfo/freewifialliance/view/PageIndicator;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/UserIntroduce;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v1}, Lcom/pubinfo/freewifialliance/view/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
