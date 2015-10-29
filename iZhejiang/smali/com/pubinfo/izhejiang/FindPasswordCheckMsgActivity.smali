.class public Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;
.super Lcom/pubinfo/izhejiang/controller/CheckMsgFun;
.source "FindPasswordCheckMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;,
        Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;
    }
.end annotation


# static fields
.field private static GETCODETIME:I


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field confirmButton:Landroid/widget/LinearLayout;

.field private final connectTimeOut:I

.field countThread:Ljava/lang/Thread;

.field countrycode:Ljava/lang/String;

.field et_code:Landroid/widget/EditText;

.field private etphoneWatcher:Landroid/text/TextWatcher;

.field private isResponse:Z

.field private isRun:Z

.field private mainHandler:Landroid/os/Handler;

.field nextbtn:Landroid/widget/TextView;

.field password:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field sendcodeButton:Landroid/widget/Button;

.field private startTime:J

.field tag:Ljava/lang/String;

.field title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x78

    sput v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->GETCODETIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/CheckMsgFun;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->startTime:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->isResponse:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->isRun:Z

    .line 45
    const v0, 0x1d4c0

    iput v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->connectTimeOut:I

    .line 149
    new-instance v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$1;-><init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->countThread:Ljava/lang/Thread;

    .line 167
    new-instance v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;-><init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->GETCODETIME:I

    return v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getCheckCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(I)V
    .locals 0

    .prologue
    .line 46
    sput p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->GETCODETIME:I

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->isRun:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->isResponse:Z

    return v0
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->isRun:Z

    return-void
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getSmsCode()V

    return-void
.end method

.method static synthetic access$8(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getCode()V

    return-void
.end method

.method static synthetic access$9(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private getCode()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->sendcodeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->sendcodeButton:Landroid/widget/Button;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 122
    const/16 v0, 0x78

    sput v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->GETCODETIME:I

    .line 123
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->countThread:Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method

.method private getSmsCode()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->startTime:J

    .line 128
    new-instance v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;-><init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;->start()V

    .line 129
    return-void
.end method

.method private goIntent()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->hideLoading()V

    .line 217
    new-instance v0, Landroid/content/Intent;

    .line 218
    const-class v1, Lcom/pubinfo/izhejiang/RePasswordActivity;

    .line 217
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "code"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->finish()V

    .line 223
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->backButton:Landroid/widget/ImageButton;

    .line 105
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->nextbtn:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->sendcodeButton:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->title:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->et_code:Landroid/widget/EditText;

    .line 111
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->phone:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 115
    new-instance v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;-><init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->start()V

    .line 116
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$4;-><init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    .line 274
    return-void
.end method


# virtual methods
.method public doCheckcodeErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    return-void
.end method

.method public doCheckcodeSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 309
    if-eqz p1, :cond_1

    .line 311
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/LoginParser;->Loginparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 314
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    :goto_0
    return-void

    .line 316
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->hideLoading()V

    .line 317
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->goIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public doSmsAuthErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    return-void
.end method

.method public doSmsAuthSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 280
    if-eqz p1, :cond_1

    .line 282
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/PublicParser;->Publicparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 285
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    :goto_0
    return-void

    .line 287
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->hideLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/CheckMsgFun;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->setContentView(I)V

    .line 53
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 54
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 55
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    iput-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 57
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 57
    iput-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 59
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->initialHandler()V

    .line 60
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->init()V

    .line 61
    new-instance v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$3;-><init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V

    .line 89
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->et_code:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->sendcodeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method
