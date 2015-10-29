.class public Lcom/bread/breadservice/BRDDesktopActivity;
.super Landroid/app/Activity;
.source "BRDDesktopActivity.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.bread.breadservice.BRDDesktop"

.field public static final APKPATH:Ljava/lang/String; = "APKPATH"

.field public static final PICPATH:Ljava/lang/String; = "PICPATH"

.field public static final URL:Ljava/lang/String; = "URL"


# instance fields
.field private apkpath:Ljava/lang/String;

.field private picpath:Ljava/lang/String;

.field private rl_main:Landroid/widget/RelativeLayout;

.field private rt_main:Landroid/widget/RelativeLayout;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bread/breadservice/BRDDesktopActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bread/breadservice/BRDDesktopActivity;->apkpath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bread/breadservice/BRDDesktopActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/bread/breadservice/BRDDesktopActivity;->startInstallIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/bread/breadservice/BRDDesktopActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bread/breadservice/BRDDesktopActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/bread/breadservice/BRDDesktopActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/bread/breadservice/BRDDesktopActivity;->startWebIntent(Ljava/lang/String;)V

    return-void
.end method

.method private showImageviewAds(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const v9, 0x106000d

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 57
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rt_main:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rt_main:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rt_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 63
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rl_main:Landroid/widget/RelativeLayout;

    .line 64
    iget-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rl_main:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rl_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 69
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, "iv_ad":Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v3, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    iget-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rl_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v5, Lcom/bread/breadservice/BRDDesktopActivity$1;

    invoke-direct {v5, p0}, Lcom/bread/breadservice/BRDDesktopActivity$1;-><init>(Lcom/bread/breadservice/BRDDesktopActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v4, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v2, "iv_close":Landroid/widget/ImageView;
    const-string v5, "bread_close.png"

    invoke-static {p0, v5}, Lcom/bread/breadservice/BRDUtils;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bmClose":Landroid/graphics/Bitmap;
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bmClose = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    new-instance v5, Lcom/bread/breadservice/BRDDesktopActivity$2;

    invoke-direct {v5, p0}, Lcom/bread/breadservice/BRDDesktopActivity$2;-><init>(Lcom/bread/breadservice/BRDDesktopActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rl_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rt_main:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rl_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v5, p0, Lcom/bread/breadservice/BRDDesktopActivity;->rt_main:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/bread/breadservice/BRDDesktopActivity;->setContentView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method private startInstallIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "apkpath"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    const-string v2, "application/vnd.android.package-archive"

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/bread/breadservice/BRDDesktopActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method private startWebIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/bread/breadservice/BRDDesktopActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x80

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bread/breadservice/BRDDesktopActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/bread/breadservice/BRDDesktopActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 40
    invoke-virtual {p0}, Lcom/bread/breadservice/BRDDesktopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PICPATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bread/breadservice/BRDDesktopActivity;->picpath:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/bread/breadservice/BRDDesktopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "APKPATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bread/breadservice/BRDDesktopActivity;->apkpath:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/bread/breadservice/BRDDesktopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bread/breadservice/BRDDesktopActivity;->url:Ljava/lang/String;

    .line 43
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "picpath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bread/breadservice/BRDDesktopActivity;->picpath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apkpath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bread/breadservice/BRDDesktopActivity;->apkpath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bread/breadservice/BRDDesktopActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/bread/breadservice/BRDDesktopActivity;->picpath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/bread/breadservice/BRDDesktopActivity;->picpath:Ljava/lang/String;

    invoke-static {v1}, Lcom/bread/breadservice/BRDUtils;->PNGToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, "bmAds":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/bread/breadservice/BRDDesktopActivity;->showImageviewAds(Landroid/graphics/Bitmap;)V

    .line 53
    .end local v0    # "bmAds":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/bread/breadservice/BRDDesktopActivity;->finish()V

    goto :goto_0
.end method
