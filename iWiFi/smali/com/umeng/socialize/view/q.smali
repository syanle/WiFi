.class public Lcom/umeng/socialize/view/q;
.super Landroid/app/Dialog;
.source "CommentPostDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/q$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Z


# instance fields
.field protected a:Landroid/widget/ImageView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

.field private h:Lcom/umeng/socialize/bean/SocializeEntity;

.field private i:Landroid/app/ProgressDialog;

.field private j:Lcom/umeng/socialize/view/CommentActivity;

.field private k:I

.field private l:Lcom/umeng/socialize/location/a;

.field private m:Landroid/location/Location;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/LinearLayout;

.field private q:Lcom/umeng/socialize/controller/UMSocialService;

.field private r:Lcom/umeng/socialize/bean/SocializeConfig;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Lcom/umeng/socialize/view/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/umeng/socialize/view/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/q;->b:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/view/q;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2

    .prologue
    .line 97
    .line 98
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 99
    const-string v1, "umeng_socialize_popup_dialog"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/q;->k:I

    .line 100
    iput-object p2, p0, Lcom/umeng/socialize/view/q;->h:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 101
    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->q:Lcom/umeng/socialize/controller/UMSocialService;

    .line 102
    check-cast p1, Lcom/umeng/socialize/view/CommentActivity;

    iput-object p1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 103
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->q:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->r:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 104
    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->t:Landroid/view/LayoutInflater;

    .line 105
    invoke-direct {p0}, Lcom/umeng/socialize/view/q;->d()V

    .line 106
    invoke-direct {p0}, Lcom/umeng/socialize/view/q;->c()V

    .line 107
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->r:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/bean/SocializeConfig;)V

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/q;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->t:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/q$a;

    iget-object v0, v0, Lcom/umeng/socialize/view/q$a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    :cond_0
    return-void
.end method

.method private a(Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->q:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-interface {v0, v1, p1, p2}, Lcom/umeng/socialize/controller/UMSocialService;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 503
    return-void
.end method

.method private a(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isDefaultShareLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/umeng/socialize/view/q;->h()V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/socialize/common/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeConfig;)Ljava/util/List;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/umeng/socialize/view/q;->s:Ljava/util/Map;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, v6}, Lcom/umeng/socialize/view/q;->a(Z)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 121
    iget-object v2, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 122
    new-instance v3, Lcom/umeng/socialize/view/q$a;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/umeng/socialize/view/q$a;-><init>(Lcom/umeng/socialize/view/q;Landroid/content/Context;Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 123
    iget-boolean v4, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    if-eqz v4, :cond_3

    .line 124
    iget-object v4, v3, Lcom/umeng/socialize/view/q$a;->b:Landroid/widget/ImageButton;

    iget v5, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 125
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/umeng/socialize/view/q$a;->d:Z

    .line 126
    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mUsid:Ljava/lang/String;

    iput-object v0, v3, Lcom/umeng/socialize/view/q$a;->e:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isDefaultShareComment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, v3, Lcom/umeng/socialize/view/q$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->p:Landroid/widget/LinearLayout;

    iget-object v4, v3, Lcom/umeng/socialize/view/q$a;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->s:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_3
    iget-object v4, v3, Lcom/umeng/socialize/view/q$a;->b:Landroid/widget/ImageButton;

    iget v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mGrayIcon:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/umeng/socialize/view/q;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/umeng/socialize/view/q;->k:I

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/q;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/umeng/socialize/view/q;->m:Landroid/location/Location;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/q;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/q;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/q;Z)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/q;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->m:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 560
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 561
    const-string v3, "umeng_socialize_location_off"

    .line 559
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 562
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->o:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 566
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 567
    const-string v3, "umeng_socialize_location_on"

    .line 565
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 568
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->o:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/q;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/q;->a(Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->s:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->s:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/q$a;

    .line 591
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/view/q$a;->a(Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x1

    .line 594
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/q;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/umeng/socialize/view/q;->c:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/umeng/socialize/view/q;->b:Ljava/lang/String;

    const-string v1, "initLocationProvider....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Lcom/umeng/socialize/location/a;

    invoke-direct {v0}, Lcom/umeng/socialize/location/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->l:Lcom/umeng/socialize/location/a;

    .line 229
    new-instance v0, Lcom/umeng/socialize/location/d;

    invoke-direct {v0}, Lcom/umeng/socialize/location/d;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/location/d;->a(Landroid/content/Context;)V

    .line 231
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->l:Lcom/umeng/socialize/location/a;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/location/a;->a(Lcom/umeng/socialize/location/d;)V

    .line 232
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->l:Lcom/umeng/socialize/location/a;

    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/location/a;->a(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method static synthetic c(Lcom/umeng/socialize/view/q;)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/umeng/socialize/view/q;->g()V

    return-void
.end method

.method static synthetic d(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->r:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 237
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 238
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 239
    const-string v2, "umeng_socialize_post_comment"

    .line 237
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->setContentView(I)V

    .line 240
    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 242
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 244
    aget v2, v0, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 245
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 246
    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 248
    const-string v3, "umeng_socialize_dialog_anim_fade"

    .line 246
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 256
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 257
    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 258
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 259
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 260
    const-string v2, "umeng_socialize_post_comment_edittext"

    .line 258
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->f:Landroid/widget/EditText;

    .line 262
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 263
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 264
    const-string v2, "umeng_socialize_location_ic"

    .line 262
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 266
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->n:Landroid/widget/ImageButton;

    .line 267
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 268
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 269
    const-string v2, "umeng_socialize_location_progressbar"

    .line 267
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->o:Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/umeng/socialize/view/r;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/r;-><init>(Lcom/umeng/socialize/view/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 279
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 280
    const-string v2, "umeng_socialize_post_ws_area"

    .line 278
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->p:Landroid/widget/LinearLayout;

    .line 282
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 283
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 284
    const-string v2, "umeng_socialize_title_bar_leftBt"

    .line 282
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->d:Landroid/widget/Button;

    .line 285
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->d:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/s;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/s;-><init>(Lcom/umeng/socialize/view/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 292
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 293
    const-string v2, "umeng_socialize_title_bar_rightBt"

    .line 291
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->e:Landroid/widget/Button;

    .line 295
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 296
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 297
    const-string v2, "umeng_socialize_title_bar_middleTv"

    .line 295
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 298
    const-string v1, "\u65b0\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 301
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 302
    const-string v2, "umeng_socialize_post_comment_previewImg"

    .line 300
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->a:Landroid/widget/ImageView;

    .line 304
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->i:Landroid/app/ProgressDialog;

    .line 305
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 306
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->i:Landroid/app/ProgressDialog;

    const-string v1, "\u53d1\u9001\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 309
    new-instance v0, Lcom/umeng/socialize/view/t;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/t;-><init>(Lcom/umeng/socialize/view/q;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/q;->g:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    .line 361
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->e:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/u;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/u;-><init>(Lcom/umeng/socialize/view/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    .line 419
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 420
    const-string v2, "umeng_socialize_post_comment_fetch_img"

    .line 418
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/CommentActivity;->getReceiveImageClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    return-void

    .line 250
    :cond_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 251
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 252
    invoke-virtual {p0}, Lcom/umeng/socialize/view/q;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 254
    const-string v3, "umeng_socialize_dialog_animations"

    .line 252
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/q;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/umeng/socialize/view/q;->f()Lcom/umeng/socialize/bean/UMComment;

    move-result-object v2

    .line 426
    if-nez v2, :cond_0

    .line 471
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 431
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 432
    if-eqz v0, :cond_2

    .line 433
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 440
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/q;->k:I

    .line 442
    iget v0, p0, Lcom/umeng/socialize/view/q;->k:I

    if-lez v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->h:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 445
    iput-object v0, v2, Lcom/umeng/socialize/bean/UMComment;->mSignature:Ljava/lang/String;

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/CommentActivity;->getImageBytes()[B

    move-result-object v1

    .line 449
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->h:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 450
    if-eqz v1, :cond_6

    .line 451
    new-instance v0, Lcom/umeng/socialize/media/UMRichMedia;

    sget-object v4, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/media/UMRichMedia;-><init>([BLcom/umeng/socialize/media/UMediaObject$MediaType;)V

    .line 452
    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMComment;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 467
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 470
    :goto_3
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->q:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v3, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v4, p0, Lcom/umeng/socialize/view/q;->g:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/umeng/socialize/controller/UMSocialService;->postComment(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 433
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 434
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/view/q$a;

    .line 435
    invoke-virtual {v1}, Lcom/umeng/socialize/view/q$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    :cond_6
    :try_start_0
    check-cast v0, Lcom/umeng/socialize/media/BaseMediaObject;

    .line 456
    invoke-static {v0}, Lcom/umeng/socialize/media/UMRichMedia;->toUMRichMedia(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMRichMedia;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_4

    .line 458
    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMComment;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 461
    :catch_0
    move-exception v0

    .line 462
    sget-object v1, Lcom/umeng/socialize/view/q;->b:Ljava/lang/String;

    const-string v4, "can`t set media."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 468
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private f()Lcom/umeng/socialize/bean/UMComment;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 474
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    const-string v2, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a..."

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 487
    :cond_0
    :goto_0
    return-object v0

    .line 478
    :cond_1
    invoke-static {v1}, Lcom/umeng/socialize/common/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_2

    .line 479
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    const-string v2, "\u8f93\u5165\u5185\u5bb9\u8d85\u8fc7140\u4e2a\u5b57\uff0c\u65e0\u6cd5\u53d1\u9001\u3002"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 482
    :cond_2
    new-instance v0, Lcom/umeng/socialize/bean/UMComment;

    invoke-direct {v0}, Lcom/umeng/socialize/bean/UMComment;-><init>()V

    .line 483
    iput-object v1, v0, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->m:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/umeng/socialize/view/q;->m:Landroid/location/Location;

    invoke-static {v1}, Lcom/umeng/socialize/bean/UMLocation;->build(Landroid/location/Location;)Lcom/umeng/socialize/bean/UMLocation;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    goto :goto_0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->q:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->m:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/umeng/socialize/view/q;->j:Lcom/umeng/socialize/view/CommentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u5220\u9664\u4f4d\u7f6e\u4fe1\u606f\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 508
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 509
    const-string v1, "\u662f"

    .line 510
    new-instance v2, Lcom/umeng/socialize/view/w;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/w;-><init>(Lcom/umeng/socialize/view/q;)V

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 520
    const-string v1, "\u5426"

    .line 521
    new-instance v2, Lcom/umeng/socialize/view/x;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/x;-><init>(Lcom/umeng/socialize/view/q;)V

    .line 520
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/view/q;->h()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/q;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/umeng/socialize/view/q;->k:I

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 535
    new-instance v0, Lcom/umeng/socialize/view/y;

    iget-object v1, p0, Lcom/umeng/socialize/view/q;->l:Lcom/umeng/socialize/location/a;

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/view/y;-><init>(Lcom/umeng/socialize/view/q;Lcom/umeng/socialize/location/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 551
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 552
    return-void
.end method

.method static synthetic i(Lcom/umeng/socialize/view/q;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/q;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/umeng/socialize/view/q;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->l:Lcom/umeng/socialize/location/a;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/umeng/socialize/view/q;->l:Lcom/umeng/socialize/location/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/location/a;->a()V

    .line 578
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 579
    return-void
.end method
