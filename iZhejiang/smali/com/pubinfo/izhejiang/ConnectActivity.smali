.class public Lcom/pubinfo/izhejiang/ConnectActivity;
.super Lcom/pubinfo/izhejiang/controller/ConnectFun;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;,
        Lcom/pubinfo/izhejiang/ConnectActivity$MyThread2;,
        Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;,
        Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;
    }
.end annotation


# static fields
.field public static final NO_UPDATE:I = 0xabcd006

.field static final SETTINGS_UPDATE_UI:Ljava/lang/String; = "com.settings.timer"

.field public static final UPDATE_START:I = 0xabcd00a

.field public static loading_process:I


# instance fields
.field WIFICONN:Ljava/lang/String;

.field accountid:Ljava/lang/String;

.field private awUpdater:Lcom/pubinfo/izhejiang/update/AWingUpdater;

.field back:Landroid/widget/ImageButton;

.field city:Ljava/lang/String;

.field click_zan:Z

.field countrycode:Ljava/lang/String;

.field device_id:Ljava/lang/String;

.field downloadurl:Ljava/lang/String;

.field file:Ljava/io/File;

.field fileName:Ljava/lang/String;

.field handlers:Landroid/os/Handler;

.field idex:I

.field intent:Landroid/content/Intent;

.field private itemsOnClick:Landroid/view/View$OnClickListener;

.field iv_type:Landroid/widget/ImageView;

.field lat:Ljava/lang/String;

.field logourl:Ljava/lang/String;

.field lon:Ljava/lang/String;

.field mDownloader:Lcom/cat/list/ImageDownloader;

.field private mLocalVersionCode:I

.field private mLocalVersionName:Ljava/lang/String;

.field private mPackMg:Landroid/content/pm/PackageManager;

.field private mThread:Ljava/lang/Thread;

.field private mTicker:Ljava/lang/Runnable;

.field private mainHandler:Landroid/os/Handler;

.field menuWindow:Lcom/cat/tools/SelectSharePopupWindow;

.field private msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

.field onClickListener:Landroid/view/View$OnClickListener;

.field receiveroff:Ljava/lang/Boolean;

.field rl_confirm:Landroid/widget/RelativeLayout;

.field rl_logo:Landroid/widget/RelativeLayout;

.field rl_network:Landroid/widget/RelativeLayout;

.field rl_safety:Landroid/widget/RelativeLayout;

.field rl_share:Landroid/widget/RelativeLayout;

.field setTimerReceiver:Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;

.field ssidclick:Ljava/lang/String;

.field ssidconnect:Ljava/lang/String;

.field startTime:J

.field private stepTimeHandler:Landroid/os/Handler;

.field tag_yesno:Ljava/lang/String;

.field title:Landroid/widget/TextView;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field tv3:Landroid/widget/TextView;

.field tv4:Landroid/widget/TextView;

.field tv5:Landroid/widget/TextView;

.field tv_safety:Landroid/widget/ImageView;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field username:Ljava/lang/String;

.field wifiManager:Landroid/net/wifi/WifiManager;

.field wifimac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/ConnectFun;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->click_zan:Z

    .line 87
    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 96
    const-string v0, "com.cat.service.TimeService"

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->WIFICONN:Ljava/lang/String;

    .line 97
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->receiveroff:Ljava/lang/Boolean;

    .line 98
    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tag_yesno:Ljava/lang/String;

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->startTime:J

    .line 107
    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mPackMg:Landroid/content/pm/PackageManager;

    .line 108
    iput v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mLocalVersionCode:I

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mLocalVersionName:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mThread:Ljava/lang/Thread;

    .line 111
    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->awUpdater:Lcom/pubinfo/izhejiang/update/AWingUpdater;

    .line 442
    iput v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->idex:I

    .line 469
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$1;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 499
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$2;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->itemsOnClick:Landroid/view/View$OnClickListener;

    .line 624
    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->itemsOnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/ConnectActivity;)V
    .locals 0

    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->goIntent()V

    return-void
.end method

.method static synthetic access$10(Lcom/pubinfo/izhejiang/ConnectActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mTicker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$12(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/ConnectActivity;ZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1, p2, p3}, Lcom/pubinfo/izhejiang/ConnectActivity;->showShare(ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/pubinfo/izhejiang/ConnectActivity;->getComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/ConnectActivity;Lcom/pubinfo/izhejiang/update/AWingUpdater;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->awUpdater:Lcom/pubinfo/izhejiang/update/AWingUpdater;

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/ConnectActivity;)Lcom/pubinfo/izhejiang/update/AWingUpdater;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->awUpdater:Lcom/pubinfo/izhejiang/update/AWingUpdater;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/ConnectActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mLocalVersionCode:I

    return v0
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/ConnectActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mLocalVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pubinfo/izhejiang/ConnectActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->stepTimeHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$9(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->stepTimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private goIntent()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tag_yesno:Ljava/lang/String;

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->disconnWifiBy()V

    .line 1136
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->finish()V

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tag_yesno:Ljava/lang/String;

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->initFresh()V

    .line 1139
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->start()V

    .line 1140
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->btn_commit:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const v3, 0x7f0a0030

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 133
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 134
    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->back:Landroid/widget/ImageButton;

    .line 135
    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->title:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_confirm:Landroid/widget/RelativeLayout;

    .line 137
    const v2, 0x7f0a006e

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    .line 138
    const v2, 0x7f0a00c9

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_tag:Landroid/widget/ImageView;

    .line 139
    const v2, 0x7f0a00ca

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_msg:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f0a00cb

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_network:Landroid/widget/RelativeLayout;

    .line 141
    const v2, 0x7f0a00cd

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_safety:Landroid/widget/RelativeLayout;

    .line 142
    const v2, 0x7f0a00cc

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    .line 143
    const v2, 0x7f0a00ce

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    .line 144
    const v2, 0x7f0a00b9

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv1:Landroid/widget/TextView;

    .line 145
    const v2, 0x7f0a00cf

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv2:Landroid/widget/TextView;

    .line 146
    const v2, 0x7f0a00d0

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv3:Landroid/widget/TextView;

    .line 147
    const v2, 0x7f0a00d2

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv4:Landroid/widget/TextView;

    .line 148
    const v2, 0x7f0a00d5

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv5:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f0a0074

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->btn_commit:Landroid/widget/Button;

    .line 150
    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_share:Landroid/widget/RelativeLayout;

    .line 151
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 153
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->type:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "logourl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->logourl:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ssidclick"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ssidconnect"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidconnect:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const-string v2, "ConnectActivity"

    invoke-virtual {p0, v2, v5}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 162
    .local v1, "sharedata2":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ssidclick"

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v2, "ssidconnect"

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidconnect:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v2, "LoginSucess"

    invoke-virtual {p0, v2, v5}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    .line 169
    const-string v2, "countrycode"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->countrycode:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->back:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_confirm:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_network:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_safety:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->btn_commit:Landroid/widget/Button;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_share:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->btn_commit:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_tag:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_share:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 190
    new-instance v2, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;

    invoke-direct {v2, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->start()V

    .line 192
    return-void
.end method

.method private initFresh()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_tag:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 199
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 627
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/ConnectActivity$6;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$6;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    .line 767
    return-void
.end method

.method private sendMsg(II)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "c"    # I

    .prologue
    .line 411
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 412
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 413
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 414
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->handlers:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    return-void
.end method

.method private showShare()V
    .locals 2

    .prologue
    .line 593
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 594
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 596
    .local v0, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 602
    const v1, 0x7f06008f

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 604
    const-string v1, "http://sharesdk.cn"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitleUrl(Ljava/lang/String;)V

    .line 606
    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 608
    const-string v1, "/sdcard/Test.jpg"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 610
    const-string v1, "http://sharesdk.cn"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 612
    const-string v1, "\u6211\u662f\u6d4b\u8bd5\u8bc4\u8bba\u6587\u672c"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 614
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 616
    const-string v1, "http://sharesdk.cn"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSiteUrl(Ljava/lang/String;)V

    .line 618
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 621
    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 622
    return-void
.end method

.method private showShare(ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "silent"    # Z
    .param p2, "platform"    # Ljava/lang/String;
    .param p3, "captureView"    # Z

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 528
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 533
    .local v1, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    const v2, 0x7f06002d

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 546
    const-string v2, "http://izhejiang.51awifi.com/"

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 547
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setFilePath(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v1, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 550
    if-eqz p2, :cond_0

    .line 551
    invoke-virtual {v1, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 555
    :cond_0
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 559
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 589
    invoke-virtual {v1, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 590
    return-void
.end method


# virtual methods
.method public Beginning()V
    .locals 4

    .prologue
    .line 364
    const-string v2, "down"

    .line 365
    const/4 v3, 0x0

    .line 364
    invoke-virtual {p0, v2, v3}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 366
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    new-instance v2, Lcom/pubinfo/izhejiang/ConnectActivity$5;

    invoke-direct {v2, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$5;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    .line 373
    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/ConnectActivity$5;->start()V

    .line 374
    return-void
.end method

.method public changeWifiBy()V
    .locals 5

    .prologue
    .line 448
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->showWifiLoading(Ljava/lang/String;)V

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 452
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    .line 451
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 453
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 454
    new-instance v0, Lcom/wifi/util/WifiAdmin;

    invoke-direct {v0, p0}, Lcom/wifi/util/WifiAdmin;-><init>(Landroid/content/Context;)V

    .line 456
    .local v0, "wifiAdmin":Lcom/wifi/util/WifiAdmin;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/wifi/util/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wifi/util/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v0    # "wifiAdmin":Lcom/wifi/util/WifiAdmin;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 467
    return-void

    .line 458
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public connTimeOut()V
    .locals 7

    .prologue
    .line 1009
    const v1, 0x7f020027

    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1010
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    .line 1009
    invoke-virtual/range {v0 .. v6}, Lcom/pubinfo/izhejiang/ConnectActivity;->setStatus(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1012
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1011
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1013
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1014
    return-void
.end method

.method public connToWifi()V
    .locals 0

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->connWifiBy()V

    .line 1002
    return-void
.end method

.method public connWifiBy()V
    .locals 6

    .prologue
    .line 433
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->showWifiLoading(Ljava/lang/String;)V

    .line 434
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    invoke-direct {v0, p0, p0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;)V

    .line 436
    .local v0, "authen_opt":Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    const-string v2, "2.0"

    .line 437
    const-string v3, "56697b27fe070c1064f9f5bf8c8174bc"

    .line 438
    const v4, 0x7f060001

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {p0, v5}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-virtual/range {v0 .. v5}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_AuthenticationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public disconnWifiBy()V
    .locals 12

    .prologue
    .line 1150
    const-string v1, "LOGOFF"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1151
    .local v11, "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "result"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->result:Ljava/lang/String;

    .line 1152
    const-string v1, "message"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->message:Ljava/lang/String;

    .line 1153
    const-string v1, "appauth_type"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->appauth_type:Ljava/lang/String;

    .line 1154
    const-string v1, "logoffUrl"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->logoffUrl:Ljava/lang/String;

    .line 1155
    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->token:Ljava/lang/String;

    .line 1156
    const-string v1, "portal_url"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->portal_url:Ljava/lang/String;

    .line 1157
    const-string v1, "platform_code"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->platform_code:Ljava/lang/String;

    .line 1158
    const-string v1, "third_token"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->third_token:Ljava/lang/String;

    .line 1159
    const-string v1, "dev_id"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->dev_id:Ljava/lang/String;

    .line 1160
    const-string v1, "ac_name"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->ac_name:Ljava/lang/String;

    .line 1161
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    invoke-direct {v0, p0, p0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;)V

    .line 1163
    .local v0, "authen_opt":Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->appauth_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->logoffUrl:Ljava/lang/String;

    .line 1164
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->token:Ljava/lang/String;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->third_token:Ljava/lang/String;

    iget-object v6, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->ac_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->platform_code:Ljava/lang/String;

    iget-object v8, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->portal_url:Ljava/lang/String;

    .line 1165
    const v9, 0x7f060001

    invoke-virtual {p0, v9}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f060002

    invoke-virtual {p0, v10}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1163
    invoke-virtual/range {v0 .. v10}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_LogoffUrlRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method public doApInfoErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1084
    return-void
.end method

.method public doApInfoSucc(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x6

    .line 1045
    if-eqz p1, :cond_3

    .line 1048
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/ApInfoParser;->Apinfoparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1049
    .local v3, "result":Ljava/lang/Object;
    const-string v4, "OK"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1050
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    check-cast v3, Ljava/util/List;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 1051
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1052
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1078
    :goto_0
    return-void

    .line 1054
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    .line 1055
    check-cast v3, Ljava/util/List;

    .line 1054
    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Lcom/cat/data/ComData;->setApInfoData(Ljava/util/List;)V

    .line 1056
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->setAPINFO()V

    .line 1058
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    .line 1059
    invoke-virtual {v4}, Lcom/cat/data/ComData;->getApInfoData()Ljava/util/List;

    move-result-object v2

    .line 1060
    .local v2, "listap":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/ApInfoData;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/ApInfoData;

    .line 1061
    .local v0, "ad":Lcom/cat/data/ApInfoData;
    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getNettype()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1062
    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getNettype()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->type:Ljava/lang/String;

    .line 1064
    :cond_1
    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getLogo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getLogo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1065
    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getLogo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->logourl:Ljava/lang/String;

    .line 1067
    :cond_2
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1069
    .end local v0    # "ad":Lcom/cat/data/ApInfoData;
    .end local v2    # "listap":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/ApInfoData;>;"
    :catch_0
    move-exception v1

    .line 1070
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1074
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public doCommentErr(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->click_zan:Z

    .line 1041
    return-void
.end method

.method public doCommentSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1018
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->click_zan:Z

    .line 1019
    if-eqz p1, :cond_0

    .line 1022
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/PublicParser;->Publicparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1023
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1024
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 1025
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1027
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->setZAN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1029
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getConfirmFail()V
    .locals 7

    .prologue
    .line 858
    const v1, 0x7f020027

    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 859
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    .line 858
    invoke-virtual/range {v0 .. v6}, Lcom/pubinfo/izhejiang/ConnectActivity;->setStatus(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public getConfirmSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "device_Id"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->device_id:Ljava/lang/String;

    .line 779
    iput-object p2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->accountid:Ljava/lang/String;

    .line 780
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getConnectedWifiMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifimac:Ljava/lang/String;

    .line 791
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$7;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$7;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 796
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->wifimac:Ljava/lang/String;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->getApInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 798
    const-string v0, "Location"

    .line 799
    const/4 v1, 0x0

    .line 798
    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 800
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v0, "cityS"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->city:Ljava/lang/String;

    .line 801
    const-string v0, "lat"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lat:Ljava/lang/String;

    .line 802
    const-string v0, "lon"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lon:Ljava/lang/String;

    .line 804
    invoke-static {p0}, Lorg/androidpn/client/ServiceManager;->getInstance(Landroid/content/Context;)Lorg/androidpn/client/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidpn/client/ServiceManager;->disconnectPnServer()V

    .line 805
    invoke-static {}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->getReceiverInstance()Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->doRegister(Landroid/content/Context;)V

    .line 806
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lat:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lon:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->city:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    invoke-static {}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->getReceiverInstance()Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->countrycode:Ljava/lang/String;

    .line 808
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lat:Ljava/lang/String;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lon:Ljava/lang/String;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->city:Ljava/lang/String;

    .line 807
    invoke-virtual/range {v0 .. v5}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->loadParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/androidpn/client/ServiceManager;->getInstance(Landroid/content/Context;)Lorg/androidpn/client/ServiceManager;

    move-result-object v6

    .line 816
    .local v6, "serviceManager":Lorg/androidpn/client/ServiceManager;
    const v0, 0x7f020057

    invoke-virtual {v6, v0}, Lorg/androidpn/client/ServiceManager;->setNotificationIcon(I)V

    .line 817
    invoke-virtual {v6}, Lorg/androidpn/client/ServiceManager;->startService()V

    .line 820
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread2;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread2;->start()V

    .line 832
    return-void

    .line 809
    .end local v6    # "serviceManager":Lorg/androidpn/client/ServiceManager;
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->city:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->getReceiverInstance()Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->countrycode:Ljava/lang/String;

    .line 811
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lat:Ljava/lang/String;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lon:Ljava/lang/String;

    const-string v5, "\u6d59\u6c5f\u7701\u676d\u5dde\u5e02"

    .line 810
    invoke-virtual/range {v0 .. v5}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->loadParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected hideWifiLoading()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    return-void
.end method

.method public loadFile(Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 377
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 378
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 381
    .local v7, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v2, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 383
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 384
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-float v9, v11

    .line 386
    .local v9, "length":F
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 387
    .local v8, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 388
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_0

    .line 389
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    iget-object v11, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->file:Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 390
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 391
    .local v0, "buf":[B
    const/4 v1, -0x1

    .line 392
    .local v1, "ch":I
    const/4 v3, 0x0

    .line 393
    .local v3, "count":F
    :goto_0
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v11, -0x1

    if-ne v1, v11, :cond_2

    .line 398
    float-to-double v11, v3

    .line 400
    .end local v0    # "buf":[B
    .end local v1    # "ch":I
    .end local v3    # "count":F
    :cond_0
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/pubinfo/izhejiang/ConnectActivity;->sendMsg(II)V

    .line 401
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 402
    if-eqz v6, :cond_1

    .line 403
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 408
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "length":F
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_1
    return-void

    .line 394
    .restart local v0    # "buf":[B
    .restart local v1    # "ch":I
    .restart local v3    # "count":F
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "length":F
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 395
    int-to-float v11, v1

    add-float/2addr v3, v11

    .line 396
    const/4 v11, 0x1

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v12, v3

    div-float/2addr v12, v9

    float-to-int v12, v12

    invoke-direct {p0, v11, v12}, Lcom/pubinfo/izhejiang/ConnectActivity;->sendMsg(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    .end local v0    # "buf":[B
    .end local v1    # "ch":I
    .end local v3    # "count":F
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "length":F
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    .line 406
    .local v4, "e":Ljava/lang/Exception;
    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/pubinfo/izhejiang/ConnectActivity;->sendMsg(II)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->init()V

    .line 124
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->initialHandler()V

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 1245
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->onDestroy()V

    .line 1259
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1263
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1264
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->finish()V

    .line 1267
    const/4 v0, 0x1

    .line 1269
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLogoffRequestFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1185
    const-string v0, "iWifiSDKDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onLogoffRequestFail : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    return-void
.end method

.method public onLogoffRequestSucc(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1173
    const-string v1, "LOGOFF"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1174
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1176
    const-string v1, "iWifiSDKDemo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onLogoffRequestSucc : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return-void
.end method

.method public sendMessageToUIThread(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    return-void
.end method

.method public setAPINFO()V
    .locals 1

    .prologue
    .line 969
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$10;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$10;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 981
    return-void
.end method

.method public setConectTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 984
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/pubinfo/izhejiang/ConnectActivity$11;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 989
    return-void
.end method

.method public setStatus(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "drawable"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "i"    # I
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "logourl"    # Ljava/lang/String;

    .prologue
    .line 870
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$8;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/pubinfo/izhejiang/ConnectActivity$8;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 956
    return-void
.end method

.method public setZAN()V
    .locals 1

    .prologue
    .line 959
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$9;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$9;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 966
    return-void
.end method

.method public showTimeCount(J)Ljava/lang/String;
    .locals 14
    .param p1, "time"    # J

    .prologue
    .line 1191
    const-wide/32 v10, 0x15752a00

    cmp-long v10, p1, v10

    if-ltz v10, :cond_0

    .line 1192
    const-string v9, "00:00:00"

    .line 1207
    :goto_0
    return-object v9

    .line 1194
    :cond_0
    const-string v9, ""

    .line 1195
    .local v9, "timeCount":Ljava/lang/String;
    const-wide/32 v10, 0x36ee80

    div-long v1, p1, v10

    .line 1196
    .local v1, "hourc":J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "hour":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1199
    const-wide/32 v10, 0x36ee80

    mul-long/2addr v10, v1

    sub-long v10, p1, v10

    const-wide/32 v12, 0xea60

    div-long v4, v10, v12

    .line 1200
    .local v4, "minuec":J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1201
    .local v3, "minue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1203
    const-wide/32 v10, 0x36ee80

    mul-long/2addr v10, v1

    sub-long v10, p1, v10

    const-wide/32 v12, 0xea60

    mul-long/2addr v12, v4

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v7, v10, v12

    .line 1204
    .local v7, "secc":J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1205
    .local v6, "sec":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1206
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1207
    goto/16 :goto_0
.end method

.method protected showWifiLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1111
    new-instance v0, Lcom/pubinfo/izhejiang/ConnectActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/pubinfo/izhejiang/ConnectActivity$12;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1124
    return-void
.end method

.method public startTimeService(I)V
    .locals 7
    .param p1, "i"    # I

    .prologue
    const v5, 0x7fffffff

    .line 1087
    const/4 v2, 0x0

    .line 1088
    .local v2, "isServiceRunning":Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1089
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 1091
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1090
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1096
    if-nez v2, :cond_1

    .line 1097
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cat.service.TimeService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->intent:Landroid/content/Intent;

    .line 1098
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1099
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "time"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1100
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1101
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->WIFICONN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/ConnectActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1107
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 1091
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1092
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->WIFICONN:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1093
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public startUpdate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 239
    new-instance v3, Landroid/os/Handler;

    new-instance v4, Lcom/pubinfo/izhejiang/ConnectActivity$3;

    invoke-direct {v4, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$3;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->handlers:Landroid/os/Handler;

    .line 329
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "apk_catch"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 331
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mPackMg:Landroid/content/pm/PackageManager;

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "?mobile="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&lat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&lng="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->lon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getConnectedSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&dev_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->device_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&platform="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ter_type=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 338
    const-string v4, "&package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    iput-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->url:Ljava/lang/String;

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mPackMg:Landroid/content/pm/PackageManager;

    .line 342
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ConnectActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 343
    const/4 v5, 0x1

    .line 341
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 344
    .local v2, "packInfo":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mLocalVersionCode:I

    .line 345
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mLocalVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v2    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v3, Lcom/pubinfo/izhejiang/ConnectActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity$4;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/io/File;)V

    iput-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mThread:Ljava/lang/Thread;

    .line 357
    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 358
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
