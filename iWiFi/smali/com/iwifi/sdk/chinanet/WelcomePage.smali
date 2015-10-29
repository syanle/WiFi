.class public Lcom/iwifi/sdk/chinanet/WelcomePage;
.super Landroid/app/Activity;
.source "WelcomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;
    }
.end annotation


# static fields
.field private static final MENU_ID:I = 0x3e8

.field public static final NO_UPDATE:I = 0xabcd006

.field private static final PIC_PATH:Ljava/lang/String; = "resouces/pics/drawable/"

.field public static final UPDATE_START:I = 0xabcd00a

.field public static loading_process:I


# instance fields
.field WIFIHIT:Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field protected btnBack:Landroid/widget/Button;

.field downloadurl:Ljava/lang/String;

.field file:Ljava/io/File;

.field fileName:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field launchActivity:Ljava/lang/String;

.field private mLocalVersionCode:I

.field private mLocalVersionName:Ljava/lang/String;

.field private mPackMg:Landroid/content/pm/PackageManager;

.field private mThread:Ljava/lang/Thread;

.field pack:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field protected web_back:Landroid/widget/Button;

.field protected web_refresh:Landroid/widget/Button;

.field protected web_stop:Landroid/widget/Button;

.field protected web_towards:Landroid/widget/Button;

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->mPackMg:Landroid/content/pm/PackageManager;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->mLocalVersionCode:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->mLocalVersionName:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->mThread:Ljava/lang/Thread;

    .line 73
    const-string v0, "com.pubinfo.freewifialliance.service.WifiHitService"

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->WIFIHIT:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/iwifi/sdk/chinanet/WelcomePage;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/iwifi/sdk/chinanet/WelcomePage;->isPackageExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/iwifi/sdk/chinanet/WelcomePage;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/iwifi/sdk/chinanet/WelcomePage;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, "image":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 403
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 404
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 405
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 407
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPackageExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pack"    # Ljava/lang/String;
    .param p2, "launchActivity"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 208
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 213
    .local v4, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 233
    :goto_1
    return v5

    .line 218
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 220
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 221
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 229
    const/4 v5, 0x1

    goto :goto_1

    .line 216
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private newSelector(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idNormal"    # Landroid/graphics/drawable/Drawable;
    .param p3, "idPressed"    # Landroid/graphics/drawable/Drawable;
    .param p4, "idFocused"    # Landroid/graphics/drawable/Drawable;
    .param p5, "idSelected"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 422
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 423
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    move-object v2, p2

    .line 424
    .local v2, "normal":Landroid/graphics/drawable/Drawable;
    move-object v3, p3

    .line 425
    .local v3, "pressed":Landroid/graphics/drawable/Drawable;
    move-object v1, p4

    .line 426
    .local v1, "focused":Landroid/graphics/drawable/Drawable;
    move-object v4, p5

    .line 428
    .local v4, "unable":Landroid/graphics/drawable/Drawable;
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 430
    new-array v5, v6, [I

    fill-array-data v5, :array_1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 432
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    invoke-virtual {v0, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 434
    new-array v5, v8, [I

    const v6, 0x101009c

    aput v6, v5, v7

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 436
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v0, v5, p5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 438
    new-array v5, v7, [I

    invoke-virtual {v0, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 439
    return-object v0

    .line 428
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 430
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method


# virtual methods
.method public getConnectedWifiSSId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 330
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 331
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 332
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_back:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_towards:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_refresh:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_stop:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 35
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/tui.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v5, "tui":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/tui_d.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v6, "tui_d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/jin.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    .local v9, "jin":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/jin_d.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v10, "jin_d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/shuaxin.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    .local v13, "shuaxin":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/shuaxin_d.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v14, "shuaxin_d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/close.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v17, "close":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/close_d.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v18, "close_d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v26, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "resouces/pics/drawable/liu_bei.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iwifi/sdk/chinanet/WelcomePage;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .local v26, "liubei":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object v7, v6

    move-object v8, v6

    .line 95
    invoke-direct/range {v3 .. v8}, Lcom/iwifi/sdk/chinanet/WelcomePage;->newSelector(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v21

    .local v21, "btn_back_selector":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v7, p0

    move-object/from16 v8, p0

    move-object v11, v10

    move-object v12, v10

    .line 96
    invoke-direct/range {v7 .. v12}, Lcom/iwifi/sdk/chinanet/WelcomePage;->newSelector(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v24

    .local v24, "btn_towards_selector":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v11, p0

    move-object/from16 v12, p0

    move-object v15, v14

    move-object/from16 v16, v14

    .line 97
    invoke-direct/range {v11 .. v16}, Lcom/iwifi/sdk/chinanet/WelcomePage;->newSelector(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v22

    .local v22, "btn_refresh_selector":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v15, p0

    move-object/from16 v16, p0

    move-object/from16 v19, v18

    move-object/from16 v20, v18

    .line 98
    invoke-direct/range {v15 .. v20}, Lcom/iwifi/sdk/chinanet/WelcomePage;->newSelector(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v23

    .line 100
    .local v23, "btn_stop_selector":Landroid/graphics/drawable/StateListDrawable;
    new-instance v34, Landroid/widget/RelativeLayout;

    invoke-direct/range {v34 .. v35}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .local v34, "relative_layout":Landroid/widget/RelativeLayout;
    new-instance v32, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v32

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v32, "lp_main":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/iwifi/sdk/chinanet/WelcomePage;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v3, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    .line 105
    new-instance v33, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v33, "lp_webview":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    const/4 v3, 0x2

    const/16 v4, 0x3e8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v25, "linear_menu":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    const/16 v3, 0x3e8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 115
    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    .line 119
    const/4 v4, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 118
    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 120
    .local v28, "lp0":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    move-object/from16 v0, v28

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 121
    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_back:Landroid/widget/Button;

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_back:Landroid/widget/Button;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_back:Landroid/widget/Button;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    .line 127
    const/4 v4, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 126
    move-object/from16 v0, v29

    invoke-direct {v0, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 128
    .local v29, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    move-object/from16 v0, v29

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 129
    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_stop:Landroid/widget/Button;

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_stop:Landroid/widget/Button;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_stop:Landroid/widget/Button;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    .line 134
    const/4 v4, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 133
    move-object/from16 v0, v30

    invoke-direct {v0, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 135
    .local v30, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    move-object/from16 v0, v30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 136
    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_towards:Landroid/widget/Button;

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_towards:Landroid/widget/Button;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_towards:Landroid/widget/Button;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    .line 141
    const/4 v4, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 140
    move-object/from16 v0, v31

    invoke-direct {v0, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 142
    .local v31, "lp3":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    move-object/from16 v0, v31

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 143
    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_refresh:Landroid/widget/Button;

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_refresh:Landroid/widget/Button;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_refresh:Landroid/widget/Button;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_back:Landroid/widget/Button;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_towards:Landroid/widget/Button;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_refresh:Landroid/widget/Button;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_stop:Landroid/widget/Button;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    .line 154
    const/16 v4, 0x32

    .line 153
    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v27, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_back:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_towards:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_refresh:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->web_stop:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/webkit/WebChromeClient;

    invoke-direct {v4}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->requestFocus()Z

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;-><init>(Lcom/iwifi/sdk/chinanet/WelcomePage;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    const-string v4, "http://www.baidu.com"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 392
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 361
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/iwifi/sdk/chinanet/WelcomePage;->finish()V

    .line 368
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 342
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 348
    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 327
    return-void
.end method
