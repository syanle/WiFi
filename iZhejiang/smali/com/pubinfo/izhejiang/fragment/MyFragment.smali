.class public Lcom/pubinfo/izhejiang/fragment/MyFragment;
.super Lcom/pubinfo/izhejiang/controller/MyFun;
.source "MyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;
    }
.end annotation


# static fields
.field public static final MY_LOGIN:I = 0x2

.field public static final PERSON_INFO:I = 0x3

.field public static final PUSH_LIST:I = 0x4


# instance fields
.field btn_click:Z

.field city:Ljava/lang/String;

.field connecttimes:Ljava/lang/String;

.field countrycode2:Ljava/lang/String;

.field email:Ljava/lang/String;

.field face:Ljava/lang/String;

.field facenew:Ljava/lang/String;

.field faceurl:Ljava/lang/String;

.field grade:Ljava/lang/String;

.field isnewpush:Ljava/lang/String;

.field iv_pushmsg:Landroid/widget/ImageView;

.field private listHandler:Landroid/os/Handler;

.field ll_left:Landroid/widget/LinearLayout;

.field ll_right:Landroid/widget/LinearLayout;

.field nick:Ljava/lang/String;

.field onClickListener:Landroid/view/View$OnClickListener;

.field point:Ljava/lang/String;

.field rl_login:Landroid/widget/RelativeLayout;

.field rl_logo:Landroid/widget/RelativeLayout;

.field tv_jifen:Landroid/widget/TextView;

.field tv_level:Landroid/widget/TextView;

.field tv_login:Landroid/widget/TextView;

.field tv_nick:Landroid/widget/TextView;

.field tv_times:Landroid/widget/TextView;

.field username:Ljava/lang/String;

.field protected wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/MyFun;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->listHandler:Landroid/os/Handler;

    .line 56
    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->btn_click:Z

    .line 293
    new-instance v0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;-><init>(Lcom/pubinfo/izhejiang/fragment/MyFragment;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/fragment/MyFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->listHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/fragment/MyFragment;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->init()V

    return-void
.end method

.method private getUserInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 95
    const-string v2, "LoginSucess"

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "sharedata3":Landroid/content/SharedPreferences;
    const-string v1, "username"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->username:Ljava/lang/String;

    .line 97
    const-string v1, "countrycode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->countrycode2:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->username:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_logo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_logo:Landroid/widget/RelativeLayout;

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 101
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->ll_left:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->ll_right:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_login:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 104
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_login:Landroid/widget/RelativeLayout;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 105
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_login:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_nick:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_login:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 110
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_login:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_login:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->ll_left:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->ll_right:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_nick:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->countrycode2:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getUserInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 122
    const-string v2, "MyFragment"

    const/4 v3, 0x0

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "face"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->face:Ljava/lang/String;

    .line 127
    const-string v1, "nick"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    .line 128
    const-string v1, "faceurl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->faceurl:Ljava/lang/String;

    .line 129
    const-string v1, "point"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->point:Ljava/lang/String;

    .line 130
    const-string v1, "grade"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->grade:Ljava/lang/String;

    .line 131
    const-string v1, "connecttimes"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->connecttimes:Ljava/lang/String;

    .line 132
    const-string v1, "isnewpush"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isnewpush:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_nick:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->grade:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->grade:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_level:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->grade:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->point:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->point:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_jifen:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->point:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->connecttimes:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->connecttimes:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_times:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->connecttimes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isnewpush:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->chosePhoto()V

    .line 156
    return-void

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_nick:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    const v2, 0x7f0200aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private initialHandler()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;-><init>(Lcom/pubinfo/izhejiang/fragment/MyFragment;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->listHandler:Landroid/os/Handler;

    .line 291
    return-void
.end method

.method public static readImage(Ljava/lang/String;)[B
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 473
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 474
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 477
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 478
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 481
    .local v1, "inStream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->readStream(Ljava/io/InputStream;)[B

    move-result-object v3

    return-object v3
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 488
    .local v2, "outSteam":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 489
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 490
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 493
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 494
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 495
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 491
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public CreatFileSdcard()Z
    .locals 5

    .prologue
    .line 418
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 419
    const-string v4, "mounted"

    .line 418
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 420
    .local v2, "sdCardExist":Z
    if-nez v2, :cond_0

    .line 421
    const/4 v3, 0x0

    .line 432
    :goto_0
    return v3

    .line 424
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/cat/tools/APPConf;->PHOTO_SAVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "dirFirstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 428
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, "dirSecondFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 432
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public chosePhoto()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 437
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v2, "oleFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 443
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 444
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x3

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 445
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "pathString":Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 449
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_logo:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object v5, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_logo:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "pathString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public doUserInfoErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->listHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    return-void
.end method

.method public doUserInfoSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 369
    if-eqz p1, :cond_1

    .line 372
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/UserInfoParser;->Userinfoparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 375
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->listHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    :goto_0
    return-void

    .line 377
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    .line 378
    check-cast v0, Ljava/util/List;

    .line 377
    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setUserInfoData(Ljava/util/List;)V

    .line 379
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->listHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    goto :goto_0

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->listHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 462
    const-string v2, "wifi"

    .line 461
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 465
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 328
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 329
    if-eqz p3, :cond_4

    .line 330
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->username:Ljava/lang/String;

    .line 331
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "countrycode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->countrycode2:Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getUserInfo()V

    .line 337
    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 338
    iput-boolean v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->btn_click:Z

    .line 339
    if-eqz p3, :cond_6

    .line 340
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "zhuxiao"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 343
    const-string v4, "MyFragment"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, "sharedata":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_level:Landroid/widget/TextView;

    const-string v4, "\u2014 \u2014"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_jifen:Landroid/widget/TextView;

    const-string v4, "\u2014 \u2014"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_times:Landroid/widget/TextView;

    const-string v4, "\u2014 \u2014"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedata":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getUserInfo()V

    .line 360
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 361
    iput-boolean v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->btn_click:Z

    .line 362
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getUserInfo()V

    .line 364
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/pubinfo/izhejiang/controller/MyFun;->onActivityResult(IILandroid/content/Intent;)V

    .line 365
    :cond_4
    :goto_1
    return-void

    .line 350
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_5
    const-string v3, "back"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->username:Ljava/lang/String;

    .line 352
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "countrycode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->countrycode2:Ljava/lang/String;

    goto :goto_0

    .line 356
    .end local v2    # "tag":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getUserInfo()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 69
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->initialHandler()V

    .line 73
    :cond_0
    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    .line 74
    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_logo:Landroid/widget/RelativeLayout;

    .line 75
    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_level:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0a009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_jifen:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0a009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_times:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_nick:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_login:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_login:Landroid/widget/RelativeLayout;

    .line 82
    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->ll_left:Landroid/widget/LinearLayout;

    .line 83
    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->ll_right:Landroid/widget/LinearLayout;

    .line 84
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->rl_login:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->ll_left:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->ll_right:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getUserInfo()V

    .line 90
    return-object v0
.end method
