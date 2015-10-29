.class public Lcom/pubinfo/freewifialliance/view/LoginPage;
.super Lcom/pubinfo/freewifialliance/controller/LoginFun;
.source "LoginPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;
    }
.end annotation


# static fields
.field private static GETCODETIME:I


# instance fields
.field private final OUTOF_TIME:I

.field private btnConnectNet:Landroid/widget/Button;

.field private btnGetCode:Landroid/widget/Button;

.field btn_back:Landroid/widget/ImageButton;

.field private final connectTimeOut:I

.field countThread:Ljava/lang/Thread;

.field private etAccount:Landroid/widget/EditText;

.field private etPassword:Landroid/widget/EditText;

.field private isResponse:Z

.field private isRun:Z

.field private iv_pageInnerLoading:Landroid/widget/ImageView;

.field private ll_pageInnerLoading:Landroid/widget/LinearLayout;

.field private mReceiver:Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;

.field private mainHandler:Landroid/os/Handler;

.field private msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

.field refresh:Landroid/widget/ImageButton;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x3c

    sput v0, Lcom/pubinfo/freewifialliance/view/LoginPage;->GETCODETIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 69
    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 74
    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->startTime:J

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->isResponse:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->isRun:Z

    .line 79
    const v0, 0xea60

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->connectTimeOut:I

    .line 80
    const v0, 0xaadd001

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->OUTOF_TIME:I

    .line 100
    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mReceiver:Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;

    .line 163
    iput-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mainHandler:Landroid/os/Handler;

    .line 387
    new-instance v0, Lcom/pubinfo/freewifialliance/view/LoginPage$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/view/LoginPage$1;-><init>(Lcom/pubinfo/freewifialliance/view/LoginPage;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->countThread:Ljava/lang/Thread;

    .line 36
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/pubinfo/freewifialliance/view/LoginPage;->GETCODETIME:I

    return v0
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pubinfo/freewifialliance/view/LoginPage;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showLoading()V

    return-void
.end method

.method static synthetic access$12(Lcom/pubinfo/freewifialliance/view/LoginPage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->doConnectNet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/pubinfo/freewifialliance/view/LoginPage;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(I)V
    .locals 0

    .prologue
    .line 82
    sput p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->GETCODETIME:I

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/freewifialliance/view/LoginPage;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->isRun:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pubinfo/freewifialliance/view/LoginPage;)J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->startTime:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/pubinfo/freewifialliance/view/LoginPage;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->isResponse:Z

    return v0
.end method

.method static synthetic access$6(Lcom/pubinfo/freewifialliance/view/LoginPage;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->isRun:Z

    return-void
.end method

.method static synthetic access$7(Lcom/pubinfo/freewifialliance/view/LoginPage;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->unRegisterSMSReceiver()V

    return-void
.end method

.method static synthetic access$8(Lcom/pubinfo/freewifialliance/view/LoginPage;Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->isResponse:Z

    return-void
.end method

.method static synthetic access$9(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private getSmsCode()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->registerSMSReceiver()V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->startTime:J

    .line 97
    new-instance v0, Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;-><init>(Lcom/pubinfo/freewifialliance/view/LoginPage;)V

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;->start()V

    .line 98
    return-void
.end method

.method private hideLoading()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btn_back:Landroid/widget/ImageButton;

    .line 213
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->refresh:Landroid/widget/ImageButton;

    .line 217
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->refresh:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 219
    const v1, 0x7f0c0023

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    .line 221
    const v1, 0x7f0c0024

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;

    .line 223
    const v1, 0x7f0c0025

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;

    .line 224
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v1, 0x7f0c0026

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnConnectNet:Landroid/widget/Button;

    .line 227
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnConnectNet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 230
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 231
    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 230
    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 232
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 233
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 234
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 233
    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 236
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->ssid:Ljava/lang/String;

    .line 238
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/freewifialliance/view/LoginPage$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/freewifialliance/view/LoginPage$3;-><init>(Lcom/pubinfo/freewifialliance/view/LoginPage;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mainHandler:Landroid/os/Handler;

    .line 195
    return-void
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v2, "^(1[3-9])\\d{9}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 303
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 305
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private registerSMSReceiver()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    .line 104
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 103
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 106
    new-instance v1, Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;

    new-instance v2, Lcom/pubinfo/freewifialliance/view/LoginPage$2;

    invoke-direct {v2, p0}, Lcom/pubinfo/freewifialliance/view/LoginPage$2;-><init>(Lcom/pubinfo/freewifialliance/view/LoginPage;)V

    invoke-direct {v1, p0, v2}, Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;-><init>(Landroid/content/Context;Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast$AfterReceive;)V

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mReceiver:Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;

    .line 130
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mReceiver:Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;

    invoke-virtual {p0, v1, v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method private showDialog(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isFinish"    # Z

    .prologue
    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 199
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/pubinfo/freewifialliance/view/LoginPage$4;

    invoke-direct {v2, p0, p2}, Lcom/pubinfo/freewifialliance/view/LoginPage$4;-><init>(Lcom/pubinfo/freewifialliance/view/LoginPage;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 209
    return-void
.end method

.method private showLoading()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 342
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private unRegisterSMSReceiver()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mReceiver:Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;

    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    .line 137
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 136
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 139
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mReceiver:Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;

    invoke-virtual {p0, v1, v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->mReceiver:Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast;

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkCodeAuthErr(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->hideLoading()V

    .line 371
    const-string v0, "\u9a8c\u8bc1\u7801\u8ba4\u8bc1\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public doSmsAuthErr(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->hideLoading()V

    .line 377
    const-string v0, "\u53d1\u9001\u9a8c\u8bc1\u7801\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public getCheckCodeSuccess()V
    .locals 4

    .prologue
    .line 316
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    invoke-direct {v0, p0, p0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;)V

    .line 317
    .local v0, "authen_opt":Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->num:Ljava/lang/String;

    const-string v2, "2.0"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_AuthenticationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public getConfirmFail()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->hideLoading()V

    .line 335
    const-string v0, "\u8ba4\u8bc1\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public getConfirmSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "device_id"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->hideLoading()V

    .line 323
    const-string v1, "\u8054\u7f51\u6210\u529f"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->startActivity(Landroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->finish()V

    .line 330
    return-void
.end method

.method public getSmsAuthSuccess()V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->hideLoading()V

    .line 311
    const-string v0, "\u53d1\u9001\u9a8c\u8bc1\u7801\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 243
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getSmsCode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    const-string v2, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u8f93\u5165\uff01"

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_1
    return-void

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    :cond_2
    const-string v2, "\u624b\u673a\u53f7\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->isMobileNO(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 254
    const-string v2, "\u624b\u673a\u53f7\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_4
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 257
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;

    const v3, 0x7f020154

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 259
    const/16 v2, 0x3c

    sput v2, Lcom/pubinfo/freewifialliance/view/LoginPage;->GETCODETIME:I

    .line 260
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->countThread:Ljava/lang/Thread;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 261
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showLoading()V

    .line 262
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/pubinfo/freewifialliance/view/LoginPage;->type:Ljava/lang/String;

    .line 263
    sget-object v2, Lcom/pubinfo/freewifialliance/view/LoginPage;->type:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/pubinfo/freewifialliance/view/LoginPage;->type:Ljava/lang/String;

    const-string v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 264
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getSmsCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    :cond_5
    invoke-static {p0}, Lcom/pubinfo/wifi_core/core/util/FileManager;->getWifiIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 267
    const-string v2, "\u6b63\u5728\u8fde\u63a5\u4e2d"

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 269
    :cond_6
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getSmsCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :cond_7
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btnConnectNet:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 274
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 277
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 278
    const/4 v3, 0x1

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 279
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->showLoading()V

    .line 284
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 285
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    .line 285
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 290
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;

    .line 291
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {p0, v2, v3}, Lcom/pubinfo/freewifialliance/view/LoginPage;->doConnectNet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 294
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->finish()V

    goto/16 :goto_1

    .line 246
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->initView()V

    .line 90
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->initialHandler()V

    .line 91
    return-void
.end method

.method public onLogoffRequestFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 420
    return-void
.end method

.method public onLogoffRequestSucc(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 414
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->unRegisterSMSReceiver()V

    .line 383
    invoke-super {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->onPause()V

    .line 384
    return-void
.end method
