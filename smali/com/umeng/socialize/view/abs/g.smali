.class public abstract Lcom/umeng/socialize/view/abs/g;
.super Lcom/umeng/socialize/view/abs/a;
.source "EntityView.java"


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/abs/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->s:Landroid/app/Activity;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/abs/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->s:Landroid/app/Activity;

    .line 58
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/umeng/socialize/view/abs/g;->s:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/abs/g;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->s:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/abs/g;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/socialize/view/abs/g;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->i:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 226
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 227
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 228
    const-string v3, "umeng_socialize_actionbar"

    .line 226
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 229
    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 230
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 232
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 233
    const-string v4, "umeng_socialize_like_bt"

    .line 231
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->f:Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 235
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 236
    const-string v3, "umeng_socialize_like_bt_show"

    .line 234
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->e:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 238
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 239
    const-string v3, "umeng_socialize_like_bt_progress"

    .line 237
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->d:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 241
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 242
    const-string v3, "umeng_socialize_like_icon"

    .line 240
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->k:Landroid/widget/ImageView;

    .line 244
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 245
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 246
    const-string v3, "umeng_socialize_action_share_im"

    .line 244
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->l:Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 248
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 249
    const-string v3, "umeng_socialize_action_comment_im"

    .line 247
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->m:Landroid/widget/ImageView;

    .line 251
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 252
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 253
    const-string v3, "umeng_socialize_action_like_tv"

    .line 251
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->o:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 255
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 256
    const-string v3, "umeng_socialize_action_share_tv"

    .line 254
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->p:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 258
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 259
    const-string v3, "umeng_socialize_action_comment_tv"

    .line 257
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->q:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 261
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 262
    const-string v3, "umeng_socialize_action_pv_tv"

    .line 260
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->r:Landroid/widget/TextView;

    .line 264
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 265
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 266
    const-string v3, "umeng_socialize_comment_bt"

    .line 264
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->g:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 268
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 269
    const-string v3, "umeng_socialize_share_bt"

    .line 267
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->h:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 272
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 273
    const-string v3, "umeng_socialize_user_center_bt"

    .line 271
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->i:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 275
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 276
    const-string v3, "umeng_socialize_action_user_center_im"

    .line 274
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/g;->n:Landroid/widget/ImageView;

    .line 278
    return-void
.end method

.method static synthetic i(Lcom/umeng/socialize/view/abs/g;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->n:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getErrorView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 322
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 324
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 329
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 330
    const-string v3, "umeng_socialize_actionbar_bg"

    .line 328
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 332
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 333
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 337
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 338
    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 339
    const-string v3, "\u7f51\u7edc\u5f02\u5e38\uff0c\u6570\u636e\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    return-object v0
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Lcom/umeng/socialize/view/a;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/socialize/view/a;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/a;->a(Landroid/app/Activity;)V

    .line 317
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->onViewUpdate()V

    .line 69
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    .line 220
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/g;->h()V

    .line 73
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->onViewUpdate()V

    .line 75
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 77
    const-class v2, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    .line 78
    new-instance v2, Lcom/umeng/socialize/view/abs/h;

    invoke-direct {v2, p0, v0}, Lcom/umeng/socialize/view/abs/h;-><init>(Lcom/umeng/socialize/view/abs/g;[Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    .line 112
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->f:Landroid/view/View;

    new-instance v3, Lcom/umeng/socialize/view/abs/i;

    invoke-direct {v3, p0, v1, v2}, Lcom/umeng/socialize/view/abs/i;-><init>(Lcom/umeng/socialize/view/abs/g;Landroid/os/Handler;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->h:Landroid/view/View;

    new-instance v2, Lcom/umeng/socialize/view/abs/k;

    invoke-direct {v2, p0, v1}, Lcom/umeng/socialize/view/abs/k;-><init>(Lcom/umeng/socialize/view/abs/g;Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->h:Landroid/view/View;

    new-instance v2, Lcom/umeng/socialize/view/abs/m;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/m;-><init>(Lcom/umeng/socialize/view/abs/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->g:Landroid/view/View;

    new-instance v2, Lcom/umeng/socialize/view/abs/n;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/n;-><init>(Lcom/umeng/socialize/view/abs/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->g:Landroid/view/View;

    new-instance v2, Lcom/umeng/socialize/view/abs/o;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/o;-><init>(Lcom/umeng/socialize/view/abs/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->i:Landroid/view/View;

    new-instance v2, Lcom/umeng/socialize/view/abs/p;

    invoke-direct {v2, p0, v1}, Lcom/umeng/socialize/view/abs/p;-><init>(Lcom/umeng/socialize/view/abs/g;Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->i:Landroid/view/View;

    new-instance v1, Lcom/umeng/socialize/view/abs/r;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/r;-><init>(Lcom/umeng/socialize/view/abs/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    goto :goto_0
.end method

.method public onViewUpdate()V
    .locals 5

    .prologue
    .line 282
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/a;->onViewUpdate()V

    .line 283
    const-string v0, "com.umeng.view.SocialView"

    const-string v1, "actionbar onViewUpdate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/g;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/g;->j:Landroid/view/View;

    if-nez v1, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/g;->h()V

    .line 292
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getLikeStatus()Lcom/umeng/socialize/bean/LIKESTATUS;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    if-ne v1, v2, :cond_2

    .line 293
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/g;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 294
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 295
    const-string v4, "umeng_socialize_action_like"

    .line 293
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    :goto_1
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/g;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getLikeCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/g;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/g;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getCommentCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/g;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getPv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/g;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 298
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 299
    const-string v4, "umeng_socialize_action_unlike"

    .line 297
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
