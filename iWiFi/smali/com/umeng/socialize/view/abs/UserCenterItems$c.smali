.class public abstract Lcom/umeng/socialize/view/abs/UserCenterItems$c;
.super Ljava/lang/Object;
.source "UserCenterItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/abs/UserCenterItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/app/Dialog;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 349
    iput-object p2, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->c:Ljava/util/List;

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->d:Ljava/util/Map;

    .line 351
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b()V

    .line 352
    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 355
    new-instance v2, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;

    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;-><init>(Landroid/content/Context;)V

    .line 357
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 382
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 383
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 384
    const-string v4, "umeng_socialize_base_alert_dialog_button"

    .line 382
    invoke-static {v1, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 381
    invoke-static {v0, v1, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->e:Landroid/view/View;

    .line 386
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 387
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 388
    const-string v4, "umeng_socialize_alert_button"

    .line 386
    invoke-static {v1, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 389
    const-string v1, "\u4f7f\u7528\u533f\u540d\u8d26\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 391
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 392
    const-string v4, "umeng_socialize_button_white_blue"

    .line 390
    invoke-static {v1, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 393
    new-instance v1, Lcom/umeng/socialize/view/abs/av;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/av;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->e:Landroid/view/View;

    invoke-virtual {v2, v0, v8}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;

    .line 401
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 402
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 403
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 404
    const-string v4, "umeng_socialize_base_alert_dialog_button"

    .line 402
    invoke-static {v1, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 401
    invoke-static {v0, v1, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 406
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 407
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 408
    const-string v4, "umeng_socialize_alert_button"

    .line 406
    invoke-static {v0, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 409
    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v3, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 411
    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 412
    const-string v5, "umeng_socialize_button_grey_blue"

    .line 410
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 413
    new-instance v3, Lcom/umeng/socialize/view/abs/aw;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/view/abs/aw;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$c;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual {v2, v1, v8}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;

    .line 423
    invoke-virtual {v2}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->a()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->a:Landroid/app/Dialog;

    .line 424
    return-void

    .line 357
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 358
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 359
    iget-object v4, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 360
    sget-object v5, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 361
    const-string v6, "umeng_socialize_base_alert_dialog_button"

    .line 359
    invoke-static {v4, v5, v6}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v4

    .line 358
    invoke-static {v1, v4, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 363
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 364
    sget-object v5, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 365
    const-string v6, "umeng_socialize_alert_button"

    .line 363
    invoke-static {v1, v5, v6}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4f7f\u7528"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u8d26\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v5, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    .line 368
    sget-object v6, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 369
    const-string v7, "umeng_socialize_button_white_blue"

    .line 367
    invoke-static {v5, v6, v7}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 370
    new-instance v5, Lcom/umeng/socialize/view/abs/au;

    invoke-direct {v5, p0, v0}, Lcom/umeng/socialize/view/abs/au;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$c;Lcom/umeng/socialize/bean/SnsPlatform;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {v2, v4, v8}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;

    .line 378
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->d:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    .line 430
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    if-eqz v2, :cond_5

    .line 449
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->a:Landroid/app/Dialog;

    invoke-static {v0, v3}, Lcom/umeng/socialize/common/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;Z)V

    .line 455
    :cond_1
    :goto_1
    return-void

    .line 433
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 434
    iget-boolean v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mBind:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    if-eqz v1, :cond_4

    .line 435
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :goto_2
    iget-boolean v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mBind:Z

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_3
    iget-boolean v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    if-eqz v0, :cond_0

    move v2, v4

    .line 444
    goto :goto_0

    .line 437
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 452
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->b:Landroid/content/Context;

    const-string v1, "\u8bf7\u5148\u6388\u6743\u5206\u4eab\u5e73\u53f0."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public abstract a(Lcom/umeng/socialize/bean/SnsPlatform;)V
.end method
