.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;
.super Landroid/widget/LinearLayout;
.source "PlatformGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridView"
.end annotation


# instance fields
.field private beans:[Ljava/lang/Object;

.field private callback:Landroid/view/View$OnClickListener;

.field private lines:I

.field private platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)V
    .locals 1
    .param p1, "platformAdapter"    # Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    .prologue
    .line 356
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 357
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    .line 358
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$1(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->callback:Landroid/view/View$OnClickListener;

    .line 359
    return-void
.end method

.method private getIcon(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    const/4 v3, 0x0

    .line 456
    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-object v3

    .line 460
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logo_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "resName":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 467
    .local v1, "resId":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 4
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    const-string v2, ""

    .line 484
    :goto_0
    return-object v2

    .line 475
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 477
    const-string v2, ""

    goto :goto_0

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 481
    .local v1, "resId":I
    if-lez v1, :cond_2

    .line 482
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 484
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getView(ILandroid/view/View$OnClickListener;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 11
    .param p1, "position"    # I
    .param p2, "ocL"    # Landroid/view/View$OnClickListener;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    instance-of v9, v9, Lcn/sharesdk/framework/Platform;

    if-eqz v9, :cond_0

    .line 413
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v9}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getIcon(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 414
    .local v5, "logo":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v9}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "label":Ljava/lang/String;
    move-object v3, p2

    .line 422
    .local v3, "listener":Landroid/view/View$OnClickListener;
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 423
    .local v4, "ll":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 425
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 426
    .local v1, "iv":Landroid/widget/ImageView;
    const/4 v9, 0x5

    invoke-static {p3, v9}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 427
    .local v0, "dp_5":I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 428
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 429
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 430
    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 429
    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 431
    .local v6, "lpIv":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 432
    const/4 v9, 0x1

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 433
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 435
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 438
    .local v8, "tv":Landroid/widget/TextView;
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    const/4 v9, 0x1

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 440
    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 441
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 442
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 443
    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 442
    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    .local v7, "lpTv":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 445
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 446
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 447
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    return-object v4

    .line 417
    .end local v0    # "dp_5":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    .end local v4    # "ll":Landroid/widget/LinearLayout;
    .end local v5    # "logo":Landroid/graphics/Bitmap;
    .end local v6    # "lpIv":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "lpTv":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/onekeyshare/CustomerLogo;

    iget-object v5, v9, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 418
    .restart local v5    # "logo":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/onekeyshare/CustomerLogo;

    iget-object v2, v9, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 419
    .restart local v2    # "label":Ljava/lang/String;
    move-object v3, p2

    .restart local v3    # "listener":Landroid/view/View$OnClickListener;
    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v10, 0x0

    .line 368
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 369
    .local v1, "dp_5":I
    invoke-virtual {p0, v10, v1, v10, v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setPadding(IIII)V

    .line 370
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setOrientation(I)V

    .line 372
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    if-nez v11, :cond_1

    move v9, v10

    .line 373
    .local v9, "size":I
    :goto_0
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    invoke-static {v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    move-result-object v11

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I
    invoke-static {v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$4(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 374
    .local v0, "COLUMN_PER_LINE":I
    div-int v5, v9, v0

    .line 375
    .local v5, "lineSize":I
    rem-int v11, v9, v0

    if-lez v11, :cond_0

    .line 376
    add-int/lit8 v5, v5, 0x1

    .line 378
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 380
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 381
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->lines:I

    if-lt v2, v11, :cond_2

    .line 406
    return-void

    .line 372
    .end local v0    # "COLUMN_PER_LINE":I
    .end local v2    # "i":I
    .end local v5    # "lineSize":I
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "size":I
    :cond_1
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    array-length v9, v11

    goto :goto_0

    .line 382
    .restart local v0    # "COLUMN_PER_LINE":I
    .restart local v2    # "i":I
    .restart local v5    # "lineSize":I
    .restart local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "size":I
    :cond_2
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 383
    .local v7, "llLine":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    invoke-virtual {v7, v1, v10, v1, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 385
    invoke-virtual {p0, v7}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->addView(Landroid/view/View;)V

    .line 387
    if-lt v2, v5, :cond_4

    .line 381
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 392
    mul-int v11, v2, v0

    add-int v3, v11, v4

    .line 393
    .local v3, "index":I
    if-lt v3, v9, :cond_5

    .line 394
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 395
    .local v6, "llItem":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 400
    .end local v6    # "llItem":Landroid/widget/LinearLayout;
    :cond_5
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->callback:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getView(ILandroid/view/View$OnClickListener;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 401
    .restart local v6    # "llItem":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v11, v11, v3

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 402
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3
.end method


# virtual methods
.method public setData(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "lines"    # I
    .param p2, "beans"    # [Ljava/lang/Object;

    .prologue
    .line 362
    iput p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->lines:I

    .line 363
    iput-object p2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    .line 364
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->init()V

    .line 365
    return-void
.end method
