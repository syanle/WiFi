.class public Lcom/pubinfo/izhejiang/RePasswordActivity;
.super Lcom/pubinfo/izhejiang/controller/RePasswordFun;
.source "RePasswordActivity.java"


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field code:Ljava/lang/String;

.field confirmButton:Landroid/widget/LinearLayout;

.field drawable_dfu:Landroid/graphics/drawable/Drawable;

.field et_password1:Landroid/widget/EditText;

.field et_password2:Landroid/widget/EditText;

.field private etphoneWatcher:Landroid/text/TextWatcher;

.field ib_radioButton:Landroid/widget/ImageButton;

.field private mainHandler:Landroid/os/Handler;

.field nextbtn:Landroid/widget/TextView;

.field phone:Ljava/lang/String;

.field radioButton:Landroid/widget/LinearLayout;

.field title:Landroid/widget/TextView;

.field private view:Lcom/cat/tools/ValidateImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/RePasswordFun;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->view:Lcom/cat/tools/ValidateImageView;

    .line 178
    new-instance v0, Lcom/pubinfo/izhejiang/RePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RePasswordActivity$1;-><init>(Lcom/pubinfo/izhejiang/RePasswordActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    .line 229
    iput-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->mainHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method private Commit()V
    .locals 7

    .prologue
    .line 208
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->phone:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "86"

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->code:Ljava/lang/String;

    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p0

    .line 208
    invoke-virtual/range {v0 .. v6}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getRePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/RePasswordActivity;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->checkChineseRegist()V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/RePasswordActivity;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->Commit()V

    return-void
.end method

.method private checkChineseRegist()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x6

    .line 140
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 141
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 142
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->showLoading()V

    .line 147
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 152
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_3

    .line 153
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 154
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 155
    :cond_3
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :cond_5
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private goIntent()V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->hideLoading()V

    .line 220
    sget-object v0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->findpassword_instance:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->finish()V

    .line 221
    sget-object v0, Lcom/pubinfo/izhejiang/LoginActivity;->login_instance:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/LoginActivity;->finish()V

    .line 226
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->finish()V

    .line 227
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->backButton:Landroid/widget/ImageButton;

    .line 123
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->nextbtn:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->title:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    .line 127
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    .line 128
    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->radioButton:Landroid/widget/LinearLayout;

    .line 129
    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->ib_radioButton:Landroid/widget/ImageButton;

    .line 131
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->code:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->phone:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->nextbtn:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/RePasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/RePasswordActivity$3;-><init>(Lcom/pubinfo/izhejiang/RePasswordActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->mainHandler:Landroid/os/Handler;

    .line 267
    return-void
.end method

.method private isChinese(Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doRePasswordErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method

.method public doRePasswordSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 274
    if-eqz p1, :cond_1

    .line 276
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/LoginParser;->Loginparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 279
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    :goto_0
    return-void

    .line 281
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->hideLoading()V

    .line 282
    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RePasswordActivity;->showMsgToast(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->goIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/RePasswordFun;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f030029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RePasswordActivity;->setContentView(I)V

    .line 55
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 56
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 57
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    iput-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 59
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 59
    iput-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 61
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->init()V

    .line 62
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->initialHandler()V

    .line 64
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->ib_radioButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    new-instance v0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RePasswordActivity$2;-><init>(Lcom/pubinfo/izhejiang/RePasswordActivity;)V

    .line 106
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity;->radioButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method
