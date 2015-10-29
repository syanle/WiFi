.class public Lcom/pubinfo/izhejiang/RegistSecondActivity;
.super Lcom/pubinfo/izhejiang/controller/RegistSecondFun;
.source "RegistSecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;,
        Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;
    }
.end annotation


# static fields
.field private static GETCODETIME:I


# instance fields
.field private final OUTOF_TIME:I

.field backButton:Landroid/widget/ImageButton;

.field clicknum:I

.field confirmButton:Landroid/widget/LinearLayout;

.field private final connectTimeOut:I

.field countThread:Ljava/lang/Thread;

.field countrycode:Ljava/lang/String;

.field et_code:Landroid/widget/EditText;

.field private etphoneWatcher:Landroid/text/TextWatcher;

.field private isResponse:Z

.field private isRun:Z

.field layout1:Landroid/widget/LinearLayout;

.field layout2:Landroid/widget/LinearLayout;

.field private mainHandler:Landroid/os/Handler;

.field memberid:Ljava/lang/String;

.field nextbtn:Landroid/widget/TextView;

.field password:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field phoneButton:Landroid/widget/Button;

.field sendcodeButton:Landroid/widget/Button;

.field private startTime:J

.field tag:Ljava/lang/String;

.field title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x3c

    sput v0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->GETCODETIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/RegistSecondFun;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->startTime:J

    .line 50
    iput-boolean v2, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->isResponse:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->isRun:Z

    .line 52
    const v0, 0xea60

    iput v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->connectTimeOut:I

    .line 54
    const v0, 0xaadd001

    iput v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->OUTOF_TIME:I

    .line 55
    iput v2, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->clicknum:I

    .line 243
    new-instance v0, Lcom/pubinfo/izhejiang/RegistSecondActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity$1;-><init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countThread:Ljava/lang/Thread;

    .line 260
    new-instance v0, Lcom/pubinfo/izhejiang/RegistSecondActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity$2;-><init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->GETCODETIME:I

    return v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/RegistSecondActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pubinfo/izhejiang/RegistSecondActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual/range {p0 .. p9}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getRegistNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getSmsCode()V

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getCode()V

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/RegistSecondActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/RegistSecondActivity;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->isRun:Z

    return v0
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/RegistSecondActivity;)J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/RegistSecondActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->isResponse:Z

    return v0
.end method

.method static synthetic access$8(Lcom/pubinfo/izhejiang/RegistSecondActivity;Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->isRun:Z

    return-void
.end method

.method static synthetic access$9(I)V
    .locals 0

    .prologue
    .line 53
    sput p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->GETCODETIME:I

    return-void
.end method

.method private getCode()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 191
    const/16 v0, 0x3c

    sput v0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->GETCODETIME:I

    .line 192
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countThread:Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    return-void
.end method

.method private getSmsCode()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->startTime:J

    .line 197
    new-instance v0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;-><init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;->start()V

    .line 198
    return-void
.end method

.method private goIntent()V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->hideLoading()V

    .line 287
    sget-object v0, Lcom/pubinfo/izhejiang/LoginActivity;->login_instance:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/LoginActivity;->finish()V

    .line 288
    sget-object v0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->registfirst_instance:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->finish()V

    .line 300
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->finish()V

    .line 301
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 147
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->backButton:Landroid/widget/ImageButton;

    .line 148
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 149
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->nextbtn:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    .line 151
    const v0, 0x7f0a00c6

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->phoneButton:Landroid/widget/Button;

    .line 152
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->title:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->et_code:Landroid/widget/EditText;

    .line 154
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->layout1:Landroid/widget/LinearLayout;

    .line 155
    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->layout2:Landroid/widget/LinearLayout;

    .line 157
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "countrycode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->phone:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->password:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    new-instance v0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;-><init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->start()V

    .line 170
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->nextbtn:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 173
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u8bed\u97f3\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity$4;-><init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    .line 365
    return-void
.end method


# virtual methods
.method public doRegistNewErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    return-void
.end method

.method public doRegistNewSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 400
    if-eqz p1, :cond_1

    .line 402
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/RegistParser;->Registparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 405
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 417
    :goto_0
    return-void

    .line 407
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->hideLoading()V

    .line 408
    const v1, 0x7f06004a

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->showMsgToast(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->goIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public doSmsAuthErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    return-void
.end method

.method public doSmsAuthSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 371
    if-eqz p1, :cond_1

    .line 373
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/LoginParser;->Loginparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 376
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    :goto_0
    return-void

    .line 378
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->hideLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/RegistSecondFun;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->setContentView(I)V

    .line 62
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 63
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 64
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    iput-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 66
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 66
    iput-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 68
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->initialHandler()V

    .line 69
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->init()V

    .line 70
    new-instance v0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;-><init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V

    .line 131
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->et_code:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->sendcodeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->phoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method
