.class public Lcom/umeng/socialize/view/bw;
.super Landroid/app/Dialog;
.source "ShareAtDialogV2.java"


# instance fields
.field private a:Lcom/umeng/socialize/view/ShareActivity;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/view/View;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/umeng/socialize/view/wigets/SearchBox;

.field private i:Lcom/umeng/socialize/view/wigets/SlideBar;

.field private j:Lcom/umeng/socialize/view/controller/ShareAtController;

.field private k:Lcom/umeng/socialize/view/wigets/b;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 62
    iput-object p1, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 64
    new-instance v0, Lcom/umeng/socialize/view/controller/ShareAtController;

    iget-object v1, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {v0, v1, p2, p3}, Lcom/umeng/socialize/view/controller/ShareAtController;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/bw;->j:Lcom/umeng/socialize/view/controller/ShareAtController;

    .line 66
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->j:Lcom/umeng/socialize/view/controller/ShareAtController;

    new-instance v1, Lcom/umeng/socialize/view/bx;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/bx;-><init>(Lcom/umeng/socialize/view/bw;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/wigets/b;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->k:Lcom/umeng/socialize/view/wigets/b;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/socialize/bean/UMFriend;->setLastAtTime(J)V

    .line 260
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLinkName()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->inputAt(Landroid/text/SpannableString;)V

    .line 265
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/socialize/view/cd;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/view/cd;-><init>(Lcom/umeng/socialize/view/bw;Lcom/umeng/socialize/bean/UMFriend;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    invoke-static {p0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 272
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/bw;Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/bw;->a(Lcom/umeng/socialize/bean/UMFriend;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/bw;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/umeng/socialize/view/bw;->f:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/umeng/socialize/view/wigets/SearchBox;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    if-eqz p1, :cond_0

    .line 240
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/umeng/socialize/view/wigets/SearchBox;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p1}, Lcom/umeng/socialize/view/wigets/SearchBox;->clearFocus()V

    .line 242
    invoke-virtual {p1, v2}, Lcom/umeng/socialize/view/wigets/SearchBox;->setInputType(I)V

    .line 243
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 244
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    iget-object v1, p0, Lcom/umeng/socialize/view/bw;->h:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 246
    new-instance v1, Lcom/umeng/socialize/view/cc;

    invoke-direct {v1, p0, p1, v0}, Lcom/umeng/socialize/view/cc;-><init>(Lcom/umeng/socialize/view/bw;Lcom/umeng/socialize/view/wigets/SearchBox;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p1, v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/wigets/SlideBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->i:Lcom/umeng/socialize/view/wigets/SlideBar;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 172
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 173
    const-string v2, "umeng_socialize_at_view"

    .line 172
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->setContentView(I)V

    .line 174
    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 175
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 176
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 177
    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 178
    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 181
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 182
    const-string v2, "umeng_socialize_title_bar_leftBt"

    .line 181
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/bw;->b:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_action_back"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 184
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->b:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/ca;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ca;-><init>(Lcom/umeng/socialize/view/bw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 193
    const-string v2, "umeng_socialize_title_bar_rightBt"

    .line 192
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/bw;->c:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_refersh"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 196
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->c:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/cb;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/cb;-><init>(Lcom/umeng/socialize/view/bw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 208
    const-string v2, "umeng_socialize_title_bar_rightBt_progress"

    .line 207
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/umeng/socialize/view/bw;->d:Landroid/widget/ProgressBar;

    .line 210
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 211
    const-string v2, "umeng_socialize_progress"

    .line 210
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/bw;->e:Landroid/view/View;

    .line 212
    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_title_bar_middleTv"

    .line 212
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    const-string v1, "\u597d\u53cb\u5217\u8868"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 219
    const-string v2, "umeng_socialize_title_bar_middle_tab"

    .line 218
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 217
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "slideBar"

    .line 220
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/SlideBar;

    iput-object v0, p0, Lcom/umeng/socialize/view/bw;->i:Lcom/umeng/socialize/view/wigets/SlideBar;

    .line 222
    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/bw;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/umeng/socialize/view/bw;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/umeng/socialize/view/bw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->f:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->i:Lcom/umeng/socialize/view/wigets/SlideBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/SlideBar;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    return-void
.end method

.method static synthetic d(Lcom/umeng/socialize/view/bw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/bw;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/bw;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/ShareActivity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/bw;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/controller/ShareAtController;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->j:Lcom/umeng/socialize/view/controller/ShareAtController;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/wigets/SearchBox;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->h:Lcom/umeng/socialize/view/wigets/SearchBox;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    const/4 v1, -0x2

    const/4 v5, 0x0

    .line 116
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/umeng/socialize/view/wigets/b;

    iget-object v2, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v3, p0, Lcom/umeng/socialize/view/bw;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/umeng/socialize/view/bw;->g:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Lcom/umeng/socialize/view/wigets/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/bw;->k:Lcom/umeng/socialize/view/wigets/b;

    .line 121
    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "listView"

    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/umeng/socialize/view/wigets/SectionListView;

    .line 122
    invoke-virtual {v6, v5}, Lcom/umeng/socialize/view/wigets/SectionListView;->setVerticalScrollBarEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->k:Lcom/umeng/socialize/view/wigets/b;

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->i:Lcom/umeng/socialize/view/wigets/SlideBar;

    invoke-virtual {v0, v5}, Lcom/umeng/socialize/view/wigets/SlideBar;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_composer_header"

    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 127
    invoke-virtual {v0, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 130
    new-instance v0, Lcom/umeng/socialize/view/by;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/by;-><init>(Lcom/umeng/socialize/view/bw;)V

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_at_overlay"

    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 142
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 143
    const/4 v3, 0x2

    .line 144
    const/16 v4, 0x18

    .line 146
    const/4 v5, -0x3

    move v2, v1

    .line 142
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 140
    invoke-interface {v8, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->i:Lcom/umeng/socialize/view/wigets/SlideBar;

    invoke-virtual {v0, v7}, Lcom/umeng/socialize/view/wigets/SlideBar;->setOverlay(Landroid/widget/TextView;)V

    .line 149
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->i:Lcom/umeng/socialize/view/wigets/SlideBar;

    invoke-virtual {v0, v6}, Lcom/umeng/socialize/view/wigets/SlideBar;->setListView(Landroid/widget/ListView;)V

    .line 151
    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "search_text"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/SearchBox;

    iput-object v0, p0, Lcom/umeng/socialize/view/bw;->h:Lcom/umeng/socialize/view/wigets/SearchBox;

    .line 152
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->h:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-virtual {v0, v6}, Lcom/umeng/socialize/view/wigets/SearchBox;->setListView(Landroid/widget/ListView;)V

    .line 153
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->h:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/bw;->a(Lcom/umeng/socialize/view/wigets/SearchBox;)V

    .line 154
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->h:Lcom/umeng/socialize/view/wigets/SearchBox;

    new-instance v1, Lcom/umeng/socialize/view/bz;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/bz;-><init>(Lcom/umeng/socialize/view/bw;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->setSearchResultListener(Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/socialize/view/bw;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 167
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_dialog_animations"

    .line 166
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 168
    invoke-direct {p0}, Lcom/umeng/socialize/view/bw;->b()V

    .line 169
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 227
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->h:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/bw;->a(Lcom/umeng/socialize/view/wigets/SearchBox;)V

    .line 228
    invoke-direct {p0}, Lcom/umeng/socialize/view/bw;->c()V

    .line 229
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->j:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->a()V

    .line 230
    iget-object v0, p0, Lcom/umeng/socialize/view/bw;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 231
    return-void
.end method
