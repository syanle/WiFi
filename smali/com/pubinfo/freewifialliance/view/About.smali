.class public Lcom/pubinfo/freewifialliance/view/About;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "About.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field private mLocalVersionCode:I

.field private mLocalVersionName:Ljava/lang/String;

.field private mPackMg:Landroid/content/pm/PackageManager;

.field refreshButton:Landroid/widget/ImageButton;

.field serviceTextView:Landroid/widget/TextView;

.field suggestion:Landroid/widget/TextView;

.field updateTextView:Landroid/widget/TextView;

.field userInfoTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/About;->mPackMg:Landroid/content/pm/PackageManager;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/About;->mLocalVersionCode:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/About;->mLocalVersionName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    .line 49
    const v3, 0x7f0c0008

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/view/About;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "version":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/About;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->mPackMg:Landroid/content/pm/PackageManager;

    .line 52
    :try_start_0
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->mPackMg:Landroid/content/pm/PackageManager;

    .line 53
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/About;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 54
    const/4 v5, 0x1

    .line 52
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 55
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/pubinfo/freewifialliance/view/About;->mLocalVersionCode:I

    .line 56
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->mLocalVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->mLocalVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v3, 0x7f0c005b

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/view/About;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->refreshButton:Landroid/widget/ImageButton;

    .line 63
    const v3, 0x7f0c0014

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/view/About;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->backButton:Landroid/widget/ImageButton;

    .line 64
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->backButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 67
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->refreshButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 69
    const v3, 0x7f0c0009

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/view/About;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->userInfoTextView:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f0c000a

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/view/About;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->updateTextView:Landroid/widget/TextView;

    .line 71
    const v3, 0x7f0c000b

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/view/About;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->serviceTextView:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f0c000c

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/view/About;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->suggestion:Landroid/widget/TextView;

    .line 74
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->suggestion:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->userInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->updateTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/About;->serviceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/About;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/About;->finish()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/About;->userInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/Introduce;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/About;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/About;->updateTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/Faq;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/About;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/About;->serviceTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/About;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/About;->suggestion:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/Suggestion;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/About;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/About;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/About;->init()V

    .line 45
    return-void
.end method
