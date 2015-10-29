.class public Lcom/pubinfo/izhejiang/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private applicationFragment:Landroid/app/Fragment;

.field private application_bt:Landroid/widget/RadioButton;

.field private aroundFragment:Landroid/app/Fragment;

.field private around_bt:Landroid/widget/RadioButton;

.field around_tag:I

.field fgManager:Landroid/app/FragmentManager;

.field private helpFragment:Landroid/app/Fragment;

.field private help_bt:Landroid/widget/RadioButton;

.field private i:I

.field mCurrFragment:Landroid/app/Fragment;

.field private myFragment:Landroid/app/Fragment;

.field private my_bt:Landroid/widget/RadioButton;

.field nowTime:J

.field onClickListener:Landroid/view/View$OnClickListener;

.field private ssidFragment:Landroid/app/Fragment;

.field private ssid_bt:Landroid/widget/RadioButton;

.field startTime:J

.field tag:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->i:I

    .line 34
    iput-wide v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->startTime:J

    .line 35
    iput-wide v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->nowTime:J

    .line 38
    iput v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->around_tag:I

    .line 125
    new-instance v0, Lcom/pubinfo/izhejiang/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/MainActivity$1;-><init>(Lcom/pubinfo/izhejiang/MainActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/MainActivity;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssidFragment:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/MainActivity;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssidFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/MainActivity;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/pubinfo/izhejiang/MainActivity;->aroundFragment:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/MainActivity;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->aroundFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/MainActivity;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pubinfo/izhejiang/MainActivity;->applicationFragment:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/MainActivity;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->applicationFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/MainActivity;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pubinfo/izhejiang/MainActivity;->myFragment:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/MainActivity;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->myFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private switchContent(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 3
    .param p1, "to"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->mCurrFragment:Landroid/app/Fragment;

    if-eq v1, p1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->fgManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 239
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->mCurrFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->mCurrFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 249
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/pubinfo/izhejiang/MainActivity;->mCurrFragment:Landroid/app/Fragment;

    .line 250
    return-void

    .line 242
    .restart local v0    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->mCurrFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    invoke-virtual {p0, p1, v2, v2}, Lcom/pubinfo/izhejiang/MainActivity;->changeFrament(Landroid/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->mCurrFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method


# virtual methods
.method public changeFrament(Landroid/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->fgManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 226
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->fgManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 227
    .local v1, "fg":Landroid/app/FragmentTransaction;
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 229
    const v3, 0x7f0a0015

    invoke-virtual {v1, v3, p1, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 230
    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 231
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 234
    return-void

    .line 222
    .end local v1    # "fg":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->fgManager:Landroid/app/FragmentManager;

    const/4 v4, 0x0

    .line 223
    const/4 v5, 0x1

    .line 222
    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public changeImage([I[I[II)V
    .locals 3
    .param p1, "image1"    # [I
    .param p2, "image2"    # [I
    .param p3, "rabtid"    # [I
    .param p4, "index"    # I

    .prologue
    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 313
    return-void

    .line 305
    :cond_0
    if-eq v0, p4, :cond_1

    .line 306
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 307
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 304
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 310
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public changeRadioButtonImage(I)V
    .locals 4
    .param p1, "btids"    # I

    .prologue
    const/4 v3, 0x4

    .line 254
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 256
    .local v0, "imageh":[I
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 258
    .local v1, "imagel":[I
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    .line 268
    .local v2, "rabt":[I
    packed-switch p1, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 270
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pubinfo/izhejiang/MainActivity;->changeImage([I[I[II)V

    goto :goto_0

    .line 276
    :pswitch_1
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pubinfo/izhejiang/MainActivity;->changeImage([I[I[II)V

    goto :goto_0

    .line 279
    :pswitch_2
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pubinfo/izhejiang/MainActivity;->changeImage([I[I[II)V

    goto :goto_0

    .line 282
    :pswitch_3
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pubinfo/izhejiang/MainActivity;->changeImage([I[I[II)V

    goto :goto_0

    .line 254
    :array_0
    .array-data 4
        0x7f020121
        0x7f02011b
        0x7f020119
        0x7f02011f
    .end array-data

    .line 256
    :array_1
    .array-data 4
        0x7f020120
        0x7f02011a
        0x7f020118
        0x7f02011e
    .end array-data

    .line 258
    :array_2
    .array-data 4
        0x7f0a0017
        0x7f0a0018
        0x7f0a0019
        0x7f0a001a
    .end array-data

    .line 268
    :pswitch_data_0
    .packed-switch 0x7f0a0017
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1e

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->nowTime:J

    .line 52
    const-string v3, "LoginSucess"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pubinfo/izhejiang/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 53
    .local v2, "sharedata":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 54
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "logintime"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->startTime:J

    .line 55
    iget-wide v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->nowTime:J

    iget-wide v5, p0, Lcom/pubinfo/izhejiang/MainActivity;->startTime:J

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/pubinfo/izhejiang/MainActivity;->showTimeCount(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 56
    .local v0, "content":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-gtz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-nez v3, :cond_2

    .line 57
    :cond_0
    iget-wide v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->startTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_1

    .line 58
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    :cond_1
    :goto_0
    const v3, 0x7f0a0017

    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssid_bt:Landroid/widget/RadioButton;

    .line 69
    const v3, 0x7f0a0018

    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->around_bt:Landroid/widget/RadioButton;

    .line 70
    const v3, 0x7f0a0019

    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->application_bt:Landroid/widget/RadioButton;

    .line 71
    const v3, 0x7f0a001a

    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->my_bt:Landroid/widget/RadioButton;

    .line 72
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssid_bt:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/MainActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->around_bt:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/MainActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->application_bt:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/MainActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->my_bt:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/MainActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v3, Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-direct {v3}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;-><init>()V

    iput-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssidFragment:Landroid/app/Fragment;

    .line 84
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssidFragment:Landroid/app/Fragment;

    iput-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->mCurrFragment:Landroid/app/Fragment;

    .line 85
    iput v7, p0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    .line 86
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssidFragment:Landroid/app/Fragment;

    const/4 v4, 0x0

    const-string v5, "ssidFragment"

    invoke-virtual {p0, v3, v4, v5}, Lcom/pubinfo/izhejiang/MainActivity;->changeFrament(Landroid/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssid_bt:Landroid/widget/RadioButton;

    const v4, 0x7f020120

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 92
    invoke-static {p0}, Lnet/youmi/android/AdManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/AdManager;

    move-result-object v3

    .line 93
    const-string v4, "4dbf0078cae5a3c9"

    const-string v5, "e6140d9f31e5654b"

    invoke-virtual {v3, v4, v5}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p0}, Lnet/youmi/android/AdManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/AdManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lnet/youmi/android/AdManager;->setUserDataCollect(Z)V

    .line 97
    invoke-static {p0}, Lnet/youmi/android/offers/OffersManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/offers/OffersManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/offers/OffersManager;->onAppLaunch()V

    .line 98
    const-string v3, "\u5e94\u7528"

    invoke-static {v3}, Lnet/youmi/android/offers/OffersBrowserConfig;->setBrowserTitleText(Ljava/lang/String;)V

    .line 99
    const v3, -0xe75c62

    invoke-static {v3}, Lnet/youmi/android/offers/OffersBrowserConfig;->setBrowserTitleBackgroundColor(I)V

    .line 104
    return-void

    .line 63
    :cond_2
    const-string v3, "logintime"

    iget-wide v4, p0, Lcom/pubinfo/izhejiang/MainActivity;->startTime:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/MainActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->fgManager:Landroid/app/FragmentManager;

    .line 45
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/MainActivity;->init()V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 291
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 292
    iget v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->i:I

    if-nez v1, :cond_0

    .line 293
    const-string v1, "\u518d\u70b9\u51fb\u4e00\u6b21\u5c06\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 294
    iget v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pubinfo/izhejiang/MainActivity;->i:I

    .line 300
    :goto_0
    return v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/MainActivity;->finish()V

    goto :goto_0

    .line 300
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 117
    const/high16 v0, 0x4000000

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-direct {v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssidFragment:Landroid/app/Fragment;

    .line 119
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->ssidFragment:Landroid/app/Fragment;

    const/4 v1, 0x0

    const-string v2, "ssidFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/pubinfo/izhejiang/MainActivity;->changeFrament(Landroid/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 120
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/MainActivity;->changeRadioButtonImage(I)V

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    .line 123
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 215
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method public showTimeCount(J)J
    .locals 4
    .param p1, "time"    # J

    .prologue
    .line 108
    const-wide/32 v2, 0x5265c00

    div-long v0, p1, v2

    .line 109
    .local v0, "days":J
    return-wide v0
.end method
