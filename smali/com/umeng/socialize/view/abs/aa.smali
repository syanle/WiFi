.class public Lcom/umeng/socialize/view/abs/aa;
.super Landroid/widget/RelativeLayout;
.source "UCenterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/abs/aa$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Landroid/view/View;

.field private c:Lcom/umeng/socialize/view/controller/UserCenterController;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ViewFlipper;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            "Lcom/umeng/socialize/view/abs/aa$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/abs/aa;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/view/controller/UserCenterController;I)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/umeng/socialize/view/abs/aa;->c:Lcom/umeng/socialize/view/controller/UserCenterController;

    .line 80
    iput p3, p0, Lcom/umeng/socialize/view/abs/aa;->q:I

    .line 81
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/aa;->e()V

    .line 82
    new-instance v0, Lcom/umeng/socialize/view/abs/ab;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/abs/ab;-><init>(Lcom/umeng/socialize/view/abs/aa;)V

    .line 105
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aa;->c:Lcom/umeng/socialize/view/controller/UserCenterController;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/aa;)Lcom/umeng/socialize/view/controller/UserCenterController;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->c:Lcom/umeng/socialize/view/controller/UserCenterController;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/SnsPlatform;Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 230
    iget-boolean v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mAccount:Lcom/umeng/socialize/bean/SnsAccount;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mAccount:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mAccount:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 236
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_text_authorize"

    .line 235
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 240
    const-string v2, "umeng_socialize_text_unauthorize"

    .line 239
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/wigets/SwitchImageView;Z)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/wigets/SwitchImageView;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/umeng/socialize/view/wigets/SwitchImageView;Z)V
    .locals 2

    .prologue
    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    invoke-virtual {p1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a()Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;)V

    .line 250
    invoke-virtual {p1, p2}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Z)V

    .line 251
    invoke-virtual {p1, v0}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/abs/aa;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->n:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/abs/aa;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/abs/aa;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/abs/aa;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->o:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, -0x1

    .line 262
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 263
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_ucenter"

    .line 262
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 266
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_title_bar_leftBt"

    .line 265
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->k:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 270
    const-string v3, "umeng_socialize_title_bar_rightBt"

    .line 269
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 268
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 274
    const-string v3, "umeng_socialize_title_bar_middleTv"

    .line 273
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 272
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 276
    const-string v4, "umeng_socialize_text_ucenter"

    .line 275
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 280
    const-string v3, "umeng_socialize_share_config_area"

    .line 279
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 278
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->e:Landroid/widget/LinearLayout;

    .line 281
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/aa;->c()V

    .line 282
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 284
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 282
    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/view/abs/aa;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 287
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_ucenter_info"

    .line 286
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->m:Landroid/view/View;

    .line 288
    const/16 v0, 0x10

    iget v2, p0, Lcom/umeng/socialize/view/abs/aa;->q:I

    and-int/lit16 v2, v2, 0xf0

    if-ne v0, v2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->m:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_share_area"

    .line 292
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 294
    const/16 v2, 0x20

    iget v3, p0, Lcom/umeng/socialize/view/abs/aa;->q:I

    and-int/lit16 v3, v3, 0xf0

    if-ne v2, v3, :cond_1

    .line 295
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_ic"

    .line 298
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->f:Landroid/widget/ImageView;

    .line 301
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_loginNm"

    .line 300
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->g:Landroid/widget/TextView;

    .line 303
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 304
    const-string v3, "umeng_socialize_loginAddr"

    .line 303
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 302
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->h:Landroid/widget/TextView;

    .line 307
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 308
    const-string v3, "umeng_socialize_login_switch"

    .line 307
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 306
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->n:Landroid/widget/ViewFlipper;

    .line 311
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 312
    const-string v3, "umeng_socialize_title_tv"

    .line 311
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->i:Landroid/widget/TextView;

    .line 314
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 315
    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 316
    const-string v4, "umeng_socialize_ucenter_login_title_guide"

    .line 314
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->o:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 318
    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 319
    const-string v4, "umeng_socialize_ucenter_login_title_platform"

    .line 317
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->p:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_loginButton"

    .line 322
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    new-instance v2, Lcom/umeng/socialize/view/abs/ag;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/ag;-><init>(Lcom/umeng/socialize/view/abs/aa;)V

    .line 344
    new-instance v3, Lcom/umeng/socialize/view/abs/ah;

    invoke-direct {v3, p0, v2}, Lcom/umeng/socialize/view/abs/ah;-><init>(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 352
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_full_curtain"

    .line 351
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    .line 353
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 356
    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/umeng/socialize/view/abs/aa;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 358
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    new-instance v2, Lcom/umeng/socialize/view/abs/ai;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/ai;-><init>(Lcom/umeng/socialize/view/abs/aa;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    new-instance v0, Lcom/umeng/socialize/view/abs/aj;

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/umeng/socialize/view/abs/aj;-><init>(Lcom/umeng/socialize/view/abs/aa;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->j:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    .line 413
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 414
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_load_error"

    .line 413
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->l:Landroid/view/View;

    .line 415
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->l:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->l:Landroid/view/View;

    new-instance v1, Lcom/umeng/socialize/view/abs/al;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/al;-><init>(Lcom/umeng/socialize/view/abs/aa;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    return-void
.end method

.method static synthetic f(Lcom/umeng/socialize/view/abs/aa;)Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/socialize/view/abs/aa;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/abs/aa;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/umeng/socialize/view/abs/aa;->r:I

    return v0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/abs/aa;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/abs/aa;)Lcom/umeng/socialize/view/abs/UserCenterItems$b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->j:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    return-object v0
.end method

.method static synthetic k(Lcom/umeng/socialize/view/abs/aa;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/abs/aa;->r:I

    .line 111
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->c:Lcom/umeng/socialize/view/controller/UserCenterController;

    new-instance v1, Lcom/umeng/socialize/view/abs/ac;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/ac;-><init>(Lcom/umeng/socialize/view/abs/aa;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    .line 128
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-void
.end method

.method protected a(Lcom/umeng/socialize/bean/SnsAccount;)V
    .locals 5

    .prologue
    .line 134
    if-eqz p1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SnsAccount;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SnsAccount;->getAccountIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 140
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_default_avatar"

    .line 139
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 141
    new-instance v2, Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v3, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 142
    iget-object v4, p0, Lcom/umeng/socialize/view/abs/aa;->f:Landroid/widget/ImageView;

    .line 141
    invoke-direct {v2, v3, v4, v0}, Lcom/umeng/socialize/common/SocialResHelper$a;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2, v1}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(I)Lcom/umeng/socialize/common/SocialResHelper$a;

    move-result-object v0

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Z)Lcom/umeng/socialize/common/SocialResHelper$a;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SnsAccount;->getPlatform()Ljava/lang/String;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    const-string v2, "qzone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_NETWORK_ELSE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Lcom/umeng/socialize/common/SocialResHelper$LoadMode;)Lcom/umeng/socialize/common/SocialResHelper$a;

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/socialize/common/SocialResHelper$a;->a()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SnsAccount;->getProfileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aa;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_2
    return-void
.end method

.method protected b()V
    .locals 8

    .prologue
    .line 156
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/aa;->invalidate()V

    .line 227
    return-void

    .line 157
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 158
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aa;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/view/abs/aa$a;

    .line 159
    iget-object v3, v1, Lcom/umeng/socialize/view/abs/aa$a;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    .line 160
    iget-object v4, v1, Lcom/umeng/socialize/view/abs/aa$a;->b:Landroid/widget/TextView;

    .line 161
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 162
    iget-boolean v5, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    invoke-virtual {v3, v5}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Z)V

    .line 163
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 164
    sget-object v5, Lcom/umeng/socialize/view/abs/aa;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "set oauth status "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, v0, v4}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/bean/SnsPlatform;Landroid/widget/TextView;)V

    .line 168
    iget-object v1, v1, Lcom/umeng/socialize/view/abs/aa$a;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a()Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/umeng/socialize/view/abs/ad;

    invoke-direct {v1, p0, v3, v0}, Lcom/umeng/socialize/view/abs/ad;-><init>(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/wigets/SwitchImageView;Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 212
    invoke-virtual {v3, v1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;)V

    .line 214
    new-instance v0, Lcom/umeng/socialize/view/abs/af;

    invoke-direct {v0, p0, v3}, Lcom/umeng/socialize/view/abs/af;-><init>(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/wigets/SwitchImageView;)V

    invoke-virtual {v3, v0}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public c()V
    .locals 12

    .prologue
    .line 425
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->c:Lcom/umeng/socialize/view/controller/UserCenterController;

    .line 426
    invoke-virtual {v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->a()Ljava/util/List;

    move-result-object v7

    .line 427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->s:Ljava/util/Map;

    .line 428
    new-instance v0, Lcom/umeng/socom/util/i;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/socom/util/i;-><init>(Landroid/content/Context;)V

    .line 429
    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lcom/umeng/socom/util/i;->a(F)I

    move-result v8

    .line 431
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 469
    return-void

    .line 432
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 433
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 434
    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 435
    const-string v4, "umeng_socialize_ucenter_platform_item"

    .line 433
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 435
    const/4 v3, 0x0

    .line 433
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 437
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 438
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_msg"

    .line 437
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 436
    check-cast v1, Landroid/widget/TextView;

    .line 440
    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 441
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_icon"

    .line 440
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 439
    check-cast v2, Landroid/widget/ImageView;

    .line 442
    iget-boolean v3, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    if-eqz v3, :cond_2

    .line 443
    iget v3, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    :goto_1
    iget-object v3, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    .line 450
    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v9, "umeng_socialize_toggle"

    .line 449
    invoke-static {v3, v4, v9}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 448
    check-cast v3, Lcom/umeng/socialize/view/wigets/SwitchImageView;

    .line 451
    invoke-virtual {v3}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b()V

    .line 452
    iget-object v4, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v6, v4, :cond_1

    move-object v4, v5

    .line 455
    check-cast v4, Landroid/view/ViewGroup;

    .line 457
    iget-object v9, p0, Lcom/umeng/socialize/view/abs/aa;->d:Landroid/content/Context;

    sget-object v10, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v11, "umeng_socialize_divider"

    .line 456
    invoke-static {v9, v10, v11}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 458
    if-eqz v9, :cond_1

    .line 459
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 463
    :cond_1
    iget-object v4, p0, Lcom/umeng/socialize/view/abs/aa;->s:Ljava/util/Map;

    new-instance v9, Lcom/umeng/socialize/view/abs/aa$a;

    invoke-direct {v9, v3, v1, v2}, Lcom/umeng/socialize/view/abs/aa$a;-><init>(Lcom/umeng/socialize/view/wigets/SwitchImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 466
    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 465
    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    .line 445
    :cond_2
    iget v3, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mGrayIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public d()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->s:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aa;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    :cond_1
    return-void

    .line 501
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/abs/aa$a;

    .line 502
    iget-object v2, v0, Lcom/umeng/socialize/view/abs/aa$a;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    iget-boolean v2, v2, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    if-eqz v2, :cond_0

    .line 503
    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa$a;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    goto :goto_0
.end method
