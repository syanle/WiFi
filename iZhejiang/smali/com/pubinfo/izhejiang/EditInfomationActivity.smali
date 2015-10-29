.class public Lcom/pubinfo/izhejiang/EditInfomationActivity;
.super Lcom/pubinfo/izhejiang/controller/PersonInfomationFun;
.source "EditInfomationActivity.java"


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field confirmButton:Landroid/widget/LinearLayout;

.field countrycode:Ljava/lang/String;

.field email:Ljava/lang/String;

.field private etphoneWatcher:Landroid/text/TextWatcher;

.field private mainHandler:Landroid/os/Handler;

.field nick:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field textbtn:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field usernameET:Landroid/widget/EditText;

.field usertag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/PersonInfomationFun;-><init>()V

    .line 101
    new-instance v0, Lcom/pubinfo/izhejiang/EditInfomationActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity$1;-><init>(Lcom/pubinfo/izhejiang/EditInfomationActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->mainHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public static CheckIsEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strEmail"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v2, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 175
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 176
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 178
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method private Commit1()V
    .locals 10

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->hideLoading()V

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    .line 151
    :cond_1
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->hideLoading()V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->phone:Ljava/lang/String;

    const-string v2, ""

    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 155
    const-string v5, ""

    const-string v6, "2"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->countrycode:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object v0, p0

    .line 154
    invoke-virtual/range {v0 .. v9}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getRegistNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private Commit2()V
    .locals 10

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->hideLoading()V

    .line 171
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->CheckIsEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    :cond_1
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->hideLoading()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->phone:Ljava/lang/String;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->countrycode:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object v0, p0

    .line 168
    invoke-virtual/range {v0 .. v9}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getRegistNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/EditInfomationActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/EditInfomationActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->Commit1()V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/EditInfomationActivity;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->Commit2()V

    return-void
.end method

.method private goSucessIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 129
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->hideLoading()V

    .line 130
    iget-object v1, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usertag:Ljava/lang/String;

    const-string v2, "nick"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "tag"

    const-string v2, "nick"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "userinfo"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v3, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->finish()V

    .line 143
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usertag:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .restart local v0    # "data":Landroid/content/Intent;
    const-string v1, "tag"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "userinfo"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v3, v0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->setResult(ILandroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->finish()V

    goto :goto_0
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity$3;-><init>(Lcom/pubinfo/izhejiang/EditInfomationActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->mainHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method


# virtual methods
.method public doRegistNewErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method

.method public doRegistNewSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 236
    if-eqz p1, :cond_1

    .line 239
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/LoginParser;->Loginparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 242
    iget-object v1, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 254
    :goto_0
    return-void

    .line 244
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->goSucessIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/PersonInfomationFun;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->setContentView(I)V

    .line 45
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 46
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 47
    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 46
    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 48
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 49
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 49
    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->initialHandler()V

    .line 54
    const v2, 0x7f0a002b

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    .line 55
    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->backButton:Landroid/widget/ImageButton;

    .line 56
    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 57
    const v2, 0x7f0a002f

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->textbtn:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->title:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "usertag"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usertag:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usertag:Ljava/lang/String;

    const-string v3, "nick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nick"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->nick:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 65
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->title:Landroid/widget/TextView;

    const-string v3, "\u7f16\u8f91\u6635\u79f0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 74
    const-string v2, "LoginSucess"

    invoke-virtual {p0, v2, v4}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "sharedata3":Landroid/content/SharedPreferences;
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->phone:Ljava/lang/String;

    .line 76
    const-string v2, "countrycode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->countrycode:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/pubinfo/izhejiang/EditInfomationActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity$2;-><init>(Lcom/pubinfo/izhejiang/EditInfomationActivity;)V

    .line 94
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->textbtn:Landroid/widget/TextView;

    const-string v3, "\u4fdd\u5b58"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 96
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void

    .line 66
    .end local v0    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v1    # "sharedata3":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usertag:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->email:Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->usernameET:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/pubinfo/izhejiang/EditInfomationActivity;->title:Landroid/widget/TextView;

    const-string v3, "\u7f16\u8f91\u90ae\u7bb1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 264
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 265
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/EditInfomationActivity;->finish()V

    .line 268
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pubinfo/izhejiang/controller/PersonInfomationFun;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
