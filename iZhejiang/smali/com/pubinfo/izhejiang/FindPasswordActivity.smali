.class public Lcom/pubinfo/izhejiang/FindPasswordActivity;
.super Lcom/pubinfo/izhejiang/controller/FindPasswordFun;
.source "FindPasswordActivity.java"


# static fields
.field public static findpassword_instance:Lcom/pubinfo/izhejiang/FindPasswordActivity;


# instance fields
.field ETphone:Landroid/widget/EditText;

.field ETyanzhengma:Landroid/widget/EditText;

.field backButton:Landroid/widget/ImageButton;

.field confirmButton:Landroid/widget/LinearLayout;

.field private etphoneWatcher:Landroid/text/TextWatcher;

.field private mainHandler:Landroid/os/Handler;

.field textbtn:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field yanzhengmaButton:Landroid/widget/Button;

.field yanzhengmaIMG:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findpassword_instance:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/FindPasswordFun;-><init>()V

    .line 135
    new-instance v0, Lcom/pubinfo/izhejiang/FindPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity$1;-><init>(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->mainHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method private Commit()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETphone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    const-string v2, "4"

    .line 169
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 168
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->getMobileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->checkChineseRegist()V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->Commit()V

    return-void
.end method

.method private checkChinaPhone()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETphone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETphone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETphone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkChineseRegist()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 110
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->checkChinaPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETyanzhengma:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETyanzhengma:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/cat/tools/Code;->getInstance()Lcom/cat/tools/Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cat/tools/Code;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->showLoading()V

    .line 115
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->checkChinaPhone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETyanzhengma:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 119
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETyanzhengma:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/cat/tools/Code;->getInstance()Lcom/cat/tools/Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cat/tools/Code;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :cond_3
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private goIntent()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->hideLoading()V

    .line 181
    new-instance v0, Landroid/content/Intent;

    .line 182
    const-class v1, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    .line 181
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETphone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->title:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->backButton:Landroid/widget/ImageButton;

    .line 91
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 92
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->textbtn:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->yanzhengmaIMG:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->yanzhengmaButton:Landroid/widget/Button;

    .line 95
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETphone:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETyanzhengma:Landroid/widget/EditText;

    .line 98
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->yanzhengmaIMG:Landroid/widget/ImageView;

    invoke-static {}, Lcom/cat/tools/Code;->getInstance()Lcom/cat/tools/Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cat/tools/Code;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9a8c\u8bc1\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cat/tools/Code;->getInstance()Lcom/cat/tools/Code;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cat/tools/Code;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u627e\u56de\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 107
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity$3;-><init>(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->mainHandler:Landroid/os/Handler;

    .line 233
    return-void
.end method


# virtual methods
.method public doMobileExistErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    return-void
.end method

.method public doMobileExistSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 240
    if-eqz p1, :cond_1

    .line 242
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/PublicParser;->Publicparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 245
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    :goto_0
    return-void

    .line 247
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->goIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/FindPasswordFun;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->setContentView(I)V

    .line 43
    sput-object p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findpassword_instance:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    .line 44
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 45
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 46
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 45
    iput-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 47
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 48
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 48
    iput-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->init()V

    .line 51
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->initialHandler()V

    .line 53
    new-instance v0, Lcom/pubinfo/izhejiang/FindPasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/FindPasswordActivity$2;-><init>(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V

    .line 73
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETphone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETyanzhengma:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->yanzhengmaButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/FindPasswordFun;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->ETyanzhengma:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->yanzhengmaIMG:Landroid/widget/ImageView;

    invoke-static {}, Lcom/cat/tools/Code;->getInstance()Lcom/cat/tools/Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cat/tools/Code;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    return-void
.end method
