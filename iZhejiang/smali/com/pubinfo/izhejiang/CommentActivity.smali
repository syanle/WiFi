.class public Lcom/pubinfo/izhejiang/CommentActivity;
.super Lcom/pubinfo/izhejiang/controller/CommentFun;
.source "CommentActivity.java"


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field confirmButton:Landroid/widget/LinearLayout;

.field private etphoneWatcher:Landroid/text/TextWatcher;

.field mac:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field textbtn:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field username:Ljava/lang/String;

.field usernameET:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/CommentFun;-><init>()V

    .line 84
    new-instance v0, Lcom/pubinfo/izhejiang/CommentActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/CommentActivity$1;-><init>(Lcom/pubinfo/izhejiang/CommentActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mainHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method private Commit1()V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity;->usernameET:Landroid/widget/EditText;

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

    .line 113
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/CommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/CommentActivity;->showMsgToast(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/CommentActivity;->hideLoading()V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/CommentActivity;->username:Ljava/lang/String;

    iget-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 117
    const-string v4, "2"

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/CommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/pubinfo/izhejiang/CommentActivity;->getComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/CommentActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/CommentActivity;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/CommentActivity;->Commit1()V

    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/CommentActivity$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/CommentActivity$3;-><init>(Lcom/pubinfo/izhejiang/CommentActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mainHandler:Landroid/os/Handler;

    .line 165
    return-void
.end method


# virtual methods
.method public doCommentErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method public doCommentSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 172
    if-eqz p1, :cond_1

    .line 175
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/LoginParser;->Loginparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 178
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    :goto_0
    return-void

    .line 180
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/CommentFun;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/CommentActivity;->setContentView(I)V

    .line 40
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 41
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 42
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 41
    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 43
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 44
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 44
    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/CommentActivity;->initialHandler()V

    .line 49
    const v1, 0x7f0a002b

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->usernameET:Landroid/widget/EditText;

    .line 50
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->backButton:Landroid/widget/ImageButton;

    .line 51
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 52
    const v1, 0x7f0a002f

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->textbtn:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->title:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/CommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->mac:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/CommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->username:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u8bc4\u8bba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->usernameET:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/CommentActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 61
    new-instance v0, Lcom/pubinfo/izhejiang/CommentActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/CommentActivity$2;-><init>(Lcom/pubinfo/izhejiang/CommentActivity;)V

    .line 77
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->textbtn:Landroid/widget/TextView;

    const-string v2, "\u63d0\u4ea4"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->usernameET:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/CommentActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CommentActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 198
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 199
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/CommentActivity;->finish()V

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pubinfo/izhejiang/controller/CommentFun;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
