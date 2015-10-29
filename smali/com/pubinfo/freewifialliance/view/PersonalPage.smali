.class public Lcom/pubinfo/freewifialliance/view/PersonalPage;
.super Lcom/pubinfo/freewifialliance/controller/PersonalPageFun;
.source "PersonalPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;
    }
.end annotation


# instance fields
.field WIFICONN:Ljava/lang/String;

.field aboutRl:Landroid/widget/RelativeLayout;

.field private changeButton:Landroid/widget/Button;

.field disconnectButton:Landroid/widget/Button;

.field private file:Ljava/io/File;

.field handler:Landroid/os/Handler;

.field introfomation:Ljava/lang/String;

.field private loggedRelativeLayout:Landroid/widget/RelativeLayout;

.field private logginButton:Landroid/widget/Button;

.field logout:Landroid/widget/Button;

.field final mController:Lcom/umeng/socialize/controller/UMSocialService;

.field private mLocalVersionName:Ljava/lang/String;

.field private mPackMg:Landroid/content/pm/PackageManager;

.field number:Landroid/widget/TextView;

.field private personRl:Landroid/widget/RelativeLayout;

.field phoneTextView:Landroid/widget/TextView;

.field private settingRl:Landroid/widget/RelativeLayout;

.field private settingsButton:Landroid/widget/Button;

.field private shareButton:Landroid/widget/Button;

.field private shareRl:Landroid/widget/RelativeLayout;

.field private storeRl:Landroid/widget/RelativeLayout;

.field timeTextView:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field private unloggedRelativeLayout:Landroid/widget/RelativeLayout;

.field private updateRl:Landroid/widget/RelativeLayout;

.field w:I

.field private weixinRl:Landroid/widget/RelativeLayout;

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/controller/PersonalPageFun;-><init>()V

    .line 81
    const-string v0, "com.umeng.share"

    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 267
    const-string v0, "com.pubinfo.freewifialliance.service.WeixinService"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->WIFICONN:Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mPackMg:Landroid/content/pm/PackageManager;

    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mLocalVersionName:Ljava/lang/String;

    .line 291
    const-string v0, "\u63d0\u9192\uff1a\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u66f4\u65b0\uff1f"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->introfomation:Ljava/lang/String;

    .line 377
    new-instance v0, Lcom/pubinfo/freewifialliance/view/PersonalPage$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/view/PersonalPage$1;-><init>(Lcom/pubinfo/freewifialliance/view/PersonalPage;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/view/PersonalPage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->showMsgToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/view/PersonalPage;)Ljava/io/File;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->file:Ljava/io/File;

    return-object v0
.end method

.method public static executeCommand(Ljava/lang/String;J)I
    .locals 4
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 233
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;-><init>(Ljava/lang/Process;Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;)V

    .line 234
    .local v2, "worker":Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;
    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;->start()V

    .line 236
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;->join(J)V

    .line 237
    # getter for: Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;->access$1(Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 238
    # getter for: Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;->access$1(Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 247
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 238
    return v3

    .line 240
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/view/PersonalPage$Worker;->interrupt()V

    .line 244
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 245
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    .line 247
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 248
    throw v3
.end method

.method private init()V
    .locals 7

    .prologue
    .line 103
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 108
    const v5, 0x7f0c005b

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 109
    .local v3, "refresh":Landroid/widget/ImageButton;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 111
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 112
    const-string v6, "\u4eb2\u4eec\uff0c\u9001\u4f60\u4e00\u4e2a\u5b89\u5168\u514d\u8d39\u7684\u8e6d\u7f51\u5229\u5668\uff01http://www.smartzg.cn/iwifi/"

    invoke-interface {v5, v6}, Lcom/umeng/socialize/controller/UMSocialService;->setShareContent(Ljava/lang/String;)V

    .line 113
    const v5, 0x7f0c0033

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->personRl:Landroid/widget/RelativeLayout;

    .line 114
    const v5, 0x7f0c0038

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->storeRl:Landroid/widget/RelativeLayout;

    .line 115
    const v5, 0x7f0c003a

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->shareRl:Landroid/widget/RelativeLayout;

    .line 116
    const v5, 0x7f0c003c

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->settingRl:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->personRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->storeRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->shareRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->settingRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v5, 0x7f0c003e

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->weixinRl:Landroid/widget/RelativeLayout;

    .line 123
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->weixinRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v5, 0x7f0c0042

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->aboutRl:Landroid/widget/RelativeLayout;

    .line 126
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->aboutRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v5, 0x7f0c0040

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->updateRl:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->updateRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v5, 0x7f0c0044

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->disconnectButton:Landroid/widget/Button;

    .line 132
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->disconnectButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v5, 0x7f0c0036

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->timeTextView:Landroid/widget/TextView;

    .line 136
    const v5, 0x7f0c0037

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->logout:Landroid/widget/Button;

    .line 137
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->logout:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v5, 0x7f0c0035

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->number:Landroid/widget/TextView;

    .line 142
    const-string v0, "wxa603e0696280ef9c"

    .line 144
    .local v0, "appID":Ljava/lang/String;
    const-string v2, "http://www.smartzg.cn/sms/i-wifi.apk"

    .line 146
    .local v2, "contentUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v5}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->supportWXPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMWXHandler;

    move-result-object v4

    .line 149
    .local v4, "wxHandler":Lcom/umeng/socialize/controller/UMWXHandler;
    const-string v5, "\u7231wifi\u5f88\u4e0d\u9519"

    invoke-virtual {v4, v5}, Lcom/umeng/socialize/controller/UMWXHandler;->setWXTitle(Ljava/lang/String;)V

    .line 151
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v5}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v5

    .line 152
    invoke-virtual {v5, p0, v0, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->supportWXCirclePlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMWXHandler;

    move-result-object v1

    .line 153
    .local v1, "circleHandler":Lcom/umeng/socialize/controller/UMWXHandler;
    const-string v5, "\u7231wifi\u8fd8\u4e0d\u9519..."

    invoke-virtual {v1, v5}, Lcom/umeng/socialize/controller/UMWXHandler;->setCircleTitle(Ljava/lang/String;)V

    .line 155
    const v5, 0x7f0c005a

    invoke-virtual {p0, v5}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->title:Landroid/widget/TextView;

    .line 156
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->title:Landroid/widget/TextView;

    const-string v6, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected checkNew()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    .line 297
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 300
    :try_start_0
    const-string v10, "FileName"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 301
    .local v5, "sharedata":Landroid/content/SharedPreferences;
    const-string v10, "item"

    const-string v11, ""

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "fileName":Ljava/lang/String;
    const-string v10, "version_name"

    const-string v11, ""

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "version_name":Ljava/lang/String;
    const-string v10, "update_grade"

    const-string v11, ""

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "update_grade":Ljava/lang/String;
    const-string v10, "down"

    .line 307
    const/4 v11, 0x0

    .line 306
    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 308
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v10, "done"

    const-string v11, ""

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "down":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 311
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    .line 312
    const-string v12, "AiWifi.apk"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    iput-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->file:Ljava/io/File;

    .line 313
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mPackMg:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    :try_start_1
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mPackMg:Landroid/content/pm/PackageManager;

    .line 316
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 317
    const/4 v12, 0x1

    .line 315
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 318
    .local v3, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mLocalVersionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    .end local v3    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_2
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 323
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mLocalVersionName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    if-eqz v10, :cond_0

    .line 325
    :try_start_3
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 327
    const-string v10, "FileName"

    const/4 v11, 0x0

    .line 326
    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 327
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 328
    .local v6, "sharedata1":Landroid/content/SharedPreferences$Editor;
    const-string v10, "down"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 329
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 330
    .local v7, "sharedata2":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 375
    .end local v0    # "down":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "sharedata":Landroid/content/SharedPreferences;
    .end local v6    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "sharedata2":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "update_grade":Ljava/lang/String;
    .end local v9    # "version_name":Ljava/lang/String;
    :goto_1
    return-void

    .line 319
    .restart local v0    # "down":Ljava/lang/String;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v5    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v8    # "update_grade":Ljava/lang/String;
    .restart local v9    # "version_name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 372
    .end local v0    # "down":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "sharedata":Landroid/content/SharedPreferences;
    .end local v8    # "update_grade":Ljava/lang/String;
    .end local v9    # "version_name":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 373
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "down":Ljava/lang/String;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v5    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v8    # "update_grade":Ljava/lang/String;
    .restart local v9    # "version_name":Ljava/lang/String;
    :cond_0
    :try_start_5
    const-string v10, "1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 340
    const-string v10, "y"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getScreenWidth()I

    move-result v10

    add-int/lit16 v10, v10, -0xb5

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, -0x2d

    iput v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->w:I

    .line 342
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 344
    :cond_1
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 346
    const-string v10, "FileName"

    const/4 v11, 0x0

    .line 345
    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 346
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 347
    .restart local v6    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 351
    .end local v6    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v10, "2"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 352
    const-string v10, "y"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 353
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 355
    :cond_3
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 357
    const-string v10, "FileName"

    const/4 v11, 0x0

    .line 356
    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 357
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 358
    .restart local v6    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 363
    .end local v6    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 367
    :cond_5
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 370
    :cond_6
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 335
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->storeRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "\u6682\u672a\u5f00\u901a"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->showMsgToast(Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->shareRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/umeng/socialize/controller/UMSocialService;->openShare(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->settingRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/SettingsPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->disconnectButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 191
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->finish()V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->logout:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/pubinfo/freewifialliance/view/LoginPage;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "type"

    const-string v1, "log"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-static {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    .line 198
    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    .line 197
    invoke-virtual/range {v0 .. v8}, Lcom/pubinfo/wifi_core/core/database/Database;->insertUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v9}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->updateRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->checkNew()V

    .line 203
    :try_start_0
    const-string v0, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    .line 204
    const-wide/16 v1, 0xbb8

    .line 203
    invoke-static {v0, v1, v2}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->executeCommand(Ljava/lang/String;J)I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->updateSsidList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 213
    :cond_6
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->aboutRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/About;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->weixinRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/pubinfo/freewifialliance/controller/PersonalPageFun;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->init()V

    .line 100
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tencent/mm/sdk/openapi/BaseReq;

    .prologue
    .line 468
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/openapi/BaseResp;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tencent/mm/sdk/openapi/BaseResp;

    .prologue
    .line 474
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Lcom/pubinfo/freewifialliance/controller/PersonalPageFun;->onResume()V

    .line 163
    invoke-static {p0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->selectUserRow()V

    .line 164
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getPhone()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->number:Landroid/widget/TextView;

    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    .line 169
    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->logout:Landroid/widget/Button;

    const-string v1, "\u5207\u6362"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->number:Landroid/widget/TextView;

    const-string v1, "\u672a\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->logout:Landroid/widget/Button;

    const-string v1, "\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLogged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->loggedRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->unloggedRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->phoneTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    .line 451
    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    return-void
.end method

.method public showUnlogged()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->loggedRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->unloggedRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 460
    return-void
.end method

.method public startWeiXinService()V
    .locals 7

    .prologue
    const v5, 0x7fffffff

    .line 269
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "isServiceRunning":Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/view/PersonalPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 272
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 274
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 273
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 280
    if-nez v2, :cond_1

    .line 281
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v1, "intent2":Landroid/content/Intent;
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->WIFICONN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-virtual {v4, v1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 285
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_1
    return-void

    .line 274
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 275
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->WIFICONN:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    const/4 v2, 0x1

    goto :goto_0
.end method
