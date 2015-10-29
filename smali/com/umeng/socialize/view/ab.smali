.class public Lcom/umeng/socialize/view/ab;
.super Landroid/widget/FrameLayout;
.source "FriendSelView.java"


# static fields
.field public static b:Z

.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Z

.field private d:Lcom/umeng/socialize/view/ShareActivity;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/view/View;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/umeng/socialize/view/wigets/SearchBox;

.field private l:Lcom/umeng/socialize/view/wigets/SlideBar;

.field private m:Lcom/umeng/socialize/view/controller/ShareAtController;

.field private n:Lcom/umeng/socialize/view/wigets/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/umeng/socialize/view/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/ab;->c:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/view/ab;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ab;->a:Z

    .line 74
    invoke-direct {p0}, Lcom/umeng/socialize/view/ab;->e()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ab;->a:Z

    .line 69
    invoke-direct {p0}, Lcom/umeng/socialize/view/ab;->e()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ab;->a:Z

    .line 64
    invoke-direct {p0}, Lcom/umeng/socialize/view/ab;->e()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ab;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 4

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/socialize/bean/UMFriend;->setLastAtTime(J)V

    .line 296
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLinkName()Ljava/lang/String;

    move-result-object v0

    .line 298
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

    .line 300
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->d:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->inputAt(Landroid/text/SpannableString;)V

    .line 301
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/socialize/view/ai;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/view/ai;-><init>(Lcom/umeng/socialize/view/ab;Lcom/umeng/socialize/bean/UMFriend;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 306
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 307
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->a()V

    .line 308
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ab;Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/ab;->a(Lcom/umeng/socialize/bean/UMFriend;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ab;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/umeng/socialize/view/ab;->i:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/umeng/socialize/view/wigets/SearchBox;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    if-eqz p1, :cond_0

    .line 277
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/umeng/socialize/view/wigets/SearchBox;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p1}, Lcom/umeng/socialize/view/wigets/SearchBox;->clearFocus()V

    .line 279
    invoke-virtual {p1, v2}, Lcom/umeng/socialize/view/wigets/SearchBox;->setInputType(I)V

    .line 280
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    iget-object v1, p0, Lcom/umeng/socialize/view/ab;->k:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 282
    new-instance v1, Lcom/umeng/socialize/view/ah;

    invoke-direct {v1, p0, p1, v0}, Lcom/umeng/socialize/view/ah;-><init>(Lcom/umeng/socialize/view/ab;Lcom/umeng/socialize/view/wigets/SearchBox;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p1, v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->n:Lcom/umeng/socialize/view/wigets/b;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/ab;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/umeng/socialize/view/ab;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/controller/ShareAtController;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->m:Lcom/umeng/socialize/view/controller/ShareAtController;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/SlideBar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->l:Lcom/umeng/socialize/view/wigets/SlideBar;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/umeng/socialize/view/ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/ab;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->i:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 81
    const-string v3, "umeng_socialize_at_view"

    .line 79
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 91
    const-string v2, "umeng_socialize_title_bar_leftBt"

    .line 89
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/ab;->e:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_action_back"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->e:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/ac;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ac;-><init>(Lcom/umeng/socialize/view/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 103
    const-string v2, "umeng_socialize_title_bar_rightBt"

    .line 101
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/ab;->f:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_refersh"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->f:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/ad;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ad;-><init>(Lcom/umeng/socialize/view/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 118
    const-string v2, "umeng_socialize_title_bar_rightBt_progress"

    .line 116
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/umeng/socialize/view/ab;->g:Landroid/widget/ProgressBar;

    .line 120
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 122
    const-string v2, "umeng_socialize_progress"

    .line 120
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ab;->h:Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 125
    const-string v2, "umeng_socialize_title_bar_middleTv"

    .line 123
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_text_friend_list"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 130
    const-string v2, "umeng_socialize_title_bar_middle_tab"

    .line 128
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 133
    const-string v2, "slideBar"

    .line 131
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/SlideBar;

    iput-object v0, p0, Lcom/umeng/socialize/view/ab;->l:Lcom/umeng/socialize/view/wigets/SlideBar;

    .line 134
    return-void
.end method

.method static synthetic f(Lcom/umeng/socialize/view/ab;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->j:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->l:Lcom/umeng/socialize/view/wigets/SlideBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/SlideBar;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    return-void
.end method

.method static synthetic g(Lcom/umeng/socialize/view/ab;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/ab;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/SearchBox;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->k:Lcom/umeng/socialize/view/wigets/SearchBox;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public a(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/umeng/socialize/view/ab;->d:Lcom/umeng/socialize/view/ShareActivity;

    .line 153
    new-instance v0, Lcom/umeng/socialize/view/controller/ShareAtController;

    iget-object v1, p0, Lcom/umeng/socialize/view/ab;->d:Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {v0, v1, p2, p3}, Lcom/umeng/socialize/view/controller/ShareAtController;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ab;->m:Lcom/umeng/socialize/view/controller/ShareAtController;

    .line 155
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->m:Lcom/umeng/socialize/view/controller/ShareAtController;

    new-instance v1, Lcom/umeng/socialize/view/ae;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ae;-><init>(Lcom/umeng/socialize/view/ab;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ab;->a:Z

    .line 209
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->k:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/ab;->a(Lcom/umeng/socialize/view/wigets/SearchBox;)V

    .line 140
    invoke-direct {p0}, Lcom/umeng/socialize/view/ab;->f()V

    .line 141
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->m:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->a()V

    .line 142
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 143
    return-void
.end method

.method protected c()V
    .locals 9

    .prologue
    const/4 v1, -0x2

    const/4 v5, 0x0

    .line 212
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->d:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v0, Lcom/umeng/socialize/view/wigets/b;

    iget-object v2, p0, Lcom/umeng/socialize/view/ab;->d:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v3, p0, Lcom/umeng/socialize/view/ab;->i:Ljava/util/List;

    iget-object v4, p0, Lcom/umeng/socialize/view/ab;->j:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Lcom/umeng/socialize/view/wigets/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ab;->n:Lcom/umeng/socialize/view/wigets/b;

    .line 217
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 219
    const-string v3, "listView"

    .line 217
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/umeng/socialize/view/wigets/SectionListView;

    .line 220
    invoke-virtual {v6, v5}, Lcom/umeng/socialize/view/wigets/SectionListView;->setVerticalScrollBarEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->n:Lcom/umeng/socialize/view/wigets/b;

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    sget-boolean v0, Lcom/umeng/socialize/view/ab;->b:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->l:Lcom/umeng/socialize/view/wigets/SlideBar;

    invoke-virtual {v0, v5}, Lcom/umeng/socialize/view/wigets/SlideBar;->setVisibility(I)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->d:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 229
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 230
    const-string v4, "umeng_socialize_composer_header"

    .line 228
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 227
    invoke-virtual {v6, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 234
    new-instance v0, Lcom/umeng/socialize/view/af;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/af;-><init>(Lcom/umeng/socialize/view/ab;)V

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->d:Lcom/umeng/socialize/view/ShareActivity;

    .line 243
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 244
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 245
    const-string v4, "umeng_socialize_at_overlay"

    .line 243
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 246
    const/4 v3, 0x0

    .line 242
    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->d:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 250
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 252
    const/4 v3, 0x2

    .line 253
    const/16 v4, 0x18

    .line 255
    const/4 v5, -0x3

    move v2, v1

    .line 250
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 249
    invoke-interface {v8, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->l:Lcom/umeng/socialize/view/wigets/SlideBar;

    invoke-virtual {v0, v7}, Lcom/umeng/socialize/view/wigets/SlideBar;->setOverlay(Landroid/widget/TextView;)V

    .line 258
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->l:Lcom/umeng/socialize/view/wigets/SlideBar;

    invoke-virtual {v0, v6}, Lcom/umeng/socialize/view/wigets/SlideBar;->setListView(Landroid/widget/ListView;)V

    .line 260
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 261
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 262
    const-string v2, "search_text"

    .line 260
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/SearchBox;

    iput-object v0, p0, Lcom/umeng/socialize/view/ab;->k:Lcom/umeng/socialize/view/wigets/SearchBox;

    .line 263
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->k:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-virtual {v0, v6}, Lcom/umeng/socialize/view/wigets/SearchBox;->setListView(Landroid/widget/ListView;)V

    .line 264
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->k:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/ab;->a(Lcom/umeng/socialize/view/wigets/SearchBox;)V

    .line 265
    iget-object v0, p0, Lcom/umeng/socialize/view/ab;->k:Lcom/umeng/socialize/view/wigets/SearchBox;

    new-instance v1, Lcom/umeng/socialize/view/ag;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ag;-><init>(Lcom/umeng/socialize/view/ab;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->setSearchResultListener(Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;)V

    goto/16 :goto_0
.end method
