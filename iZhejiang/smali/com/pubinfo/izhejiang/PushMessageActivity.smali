.class public Lcom/pubinfo/izhejiang/PushMessageActivity;
.super Lcom/pubinfo/izhejiang/controller/PushMessageFun;
.source "PushMessageActivity.java"


# static fields
.field private static push_isClicked:Z


# instance fields
.field authid:Ljava/lang/String;

.field backButton:Landroid/widget/ImageButton;

.field confirmButton:Landroid/widget/LinearLayout;

.field countrycode:Ljava/lang/String;

.field layout1:Landroid/widget/LinearLayout;

.field private mainHandler:Landroid/os/Handler;

.field msgAdapter:Lcom/cat/adapter/MessageListAdapter;

.field title:Landroid/widget/TextView;

.field wifiLView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pubinfo/izhejiang/PushMessageActivity;->push_isClicked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/PushMessageFun;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->mainHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/pubinfo/izhejiang/PushMessageActivity;->push_isClicked:Z

    return v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/PushMessageActivity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/PushMessageActivity;->goLoading()V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/PushMessageActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/pubinfo/izhejiang/PushMessageActivity;->getPushlist(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/PushMessageActivity;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/PushMessageActivity;->goNoMsg()V

    return-void
.end method

.method static synthetic access$4(Z)V
    .locals 0

    .prologue
    .line 37
    sput-boolean p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->push_isClicked:Z

    return-void
.end method

.method private goLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 107
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->wifiLView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    return-void
.end method

.method private goNoMsg()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->wifiLView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->layout1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/PushMessageActivity$2;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/PushMessageActivity$2;-><init>(Lcom/pubinfo/izhejiang/PushMessageActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->mainHandler:Landroid/os/Handler;

    .line 172
    return-void
.end method


# virtual methods
.method public doPushListErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public doPushListSucc(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 179
    if-eqz p1, :cond_1

    .line 182
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/PushListParser;->Pushlistparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, "result":Ljava/lang/Object;
    const-string v2, "OK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 185
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    :goto_0
    return-void

    .line 187
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    .line 188
    check-cast v1, Ljava/util/List;

    .line 187
    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setPushListData(Ljava/util/List;)V

    .line 189
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/PushMessageActivity;->hideLoading()V

    .line 193
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/PushMessageActivity;->goNoMsg()V

    .line 194
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pubinfo/izhejiang/PushMessageActivity;->push_isClicked:Z

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/PushMessageFun;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f030027

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PushMessageActivity;->setContentView(I)V

    .line 44
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PushMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 45
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 46
    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 45
    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 47
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 48
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 48
    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 51
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/PushMessageActivity;->initialHandler()V

    .line 53
    const-string v2, "LoginSucess"

    invoke-virtual {p0, v2, v4}, Lcom/pubinfo/izhejiang/PushMessageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "sharedata":Landroid/content/SharedPreferences;
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->authid:Ljava/lang/String;

    .line 55
    const-string v2, "countrycode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->countrycode:Ljava/lang/String;

    .line 57
    const v2, 0x7f0a00a6

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PushMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->wifiLView:Landroid/widget/ListView;

    .line 58
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->wifiLView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PushMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->backButton:Landroid/widget/ImageButton;

    .line 61
    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PushMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 62
    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PushMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->layout1:Landroid/widget/LinearLayout;

    .line 63
    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PushMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->title:Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->title:Landroid/widget/TextView;

    const-string v3, "\u6d88\u606f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->confirmButton:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    new-instance v0, Lcom/pubinfo/izhejiang/PushMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/PushMessageActivity$1;-><init>(Lcom/pubinfo/izhejiang/PushMessageActivity;)V

    .line 83
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PushMessageActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 244
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 245
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/PushMessageActivity;->finish()V

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pubinfo/izhejiang/controller/PushMessageFun;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
