.class public Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;
.super Landroid/app/Fragment;
.source "ApplicationFragment.java"


# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field relativeLayout1:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;->clickListener:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const v1, 0x7f030019

    .line 27
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 29
    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;->relativeLayout1:Landroid/widget/RelativeLayout;

    .line 31
    new-instance v1, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment$1;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment$1;-><init>(Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;)V

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;->clickListener:Landroid/view/View$OnClickListener;

    .line 60
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;->relativeLayout1:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 71
    const-string v0, "SplashScreen"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 67
    const-string v0, "SplashScreen"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 68
    return-void
.end method
