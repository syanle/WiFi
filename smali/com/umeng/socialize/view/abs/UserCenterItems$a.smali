.class public abstract Lcom/umeng/socialize/view/abs/UserCenterItems$a;
.super Ljava/lang/Object;
.source "UserCenterItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/abs/UserCenterItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b:Landroid/content/Context;

    .line 267
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b()V

    .line 268
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 269
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b:Landroid/content/Context;

    .line 304
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b:Landroid/content/Context;

    .line 305
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 306
    const-string v3, "umeng_socialize_full_alert_dialog_item"

    .line 304
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 307
    const/4 v2, 0x0

    .line 303
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->a:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b:Landroid/content/Context;

    .line 310
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 311
    const-string v3, "umeng_socialize_full_alert_dialog_item_icon"

    .line 309
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->c:Landroid/widget/ImageView;

    .line 313
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b:Landroid/content/Context;

    .line 314
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 315
    const-string v3, "umeng_socialize_full_alert_dialog_item_text"

    .line 313
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->d:Landroid/widget/TextView;

    .line 317
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b:Landroid/content/Context;

    .line 318
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 319
    const-string v3, "umeng_socialize_full_alert_dialog_item_status"

    .line 317
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->e:Landroid/widget/TextView;

    .line 320
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->a:Landroid/view/View;

    new-instance v1, Lcom/umeng/socialize/view/abs/an;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/an;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b:Landroid/content/Context;

    .line 273
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 274
    const-string v2, "umeng_socialize_default_avatar"

    .line 272
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 275
    if-eqz p1, :cond_2

    iget-boolean v1, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mBind:Z

    if-eqz v1, :cond_2

    .line 276
    iget-object v7, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mAccount:Lcom/umeng/socialize/bean/SnsAccount;

    .line 277
    if-eqz v7, :cond_1

    .line 278
    invoke-virtual {v7}, Lcom/umeng/socialize/bean/SnsAccount;->getAccountIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->b:Landroid/content/Context;

    .line 280
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->c:Landroid/widget/ImageView;

    .line 281
    invoke-virtual {v7}, Lcom/umeng/socialize/bean/SnsAccount;->getAccountIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 282
    const/4 v3, 0x0

    .line 285
    sget-boolean v6, Lcom/umeng/socialize/common/SocializeConstants;->ROUNDER_ICON:Z

    move-object v5, v4

    .line 279
    invoke-static/range {v0 .. v6}, Lcom/umeng/socom/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/socom/net/p$a;Landroid/view/animation/Animation;Z)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->d:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/SnsAccount;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_2
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->d:Landroid/widget/TextView;

    const-string v1, "\u533f\u540d\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$a;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
