.class public Lcn/sharesdk/onekeyshare/theme/classic/EditPage;
.super Lcn/sharesdk/onekeyshare/EditPageFakeActivity;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DIM_COLOR:I = 0x7f323232

.field private static final MAX_TEXT_COUNT:I = 0x8c


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private etContent:Landroid/widget/EditText;

.field private image:Landroid/graphics/Bitmap;

.field private imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

.field private ivImage:Landroid/widget/ImageView;

.field private ivPin:Landroid/widget/ImageView;

.field private llBody:Landroid/widget/LinearLayout;

.field private llPlat:Landroid/widget/LinearLayout;

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rlPage:Landroid/widget/RelativeLayout;

.field private rlThumb:Landroid/widget/RelativeLayout;

.field private tvCounter:Landroid/widget/TextView;

.field private views:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-void
.end method

.method static synthetic access$1(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$10(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$11(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->genBackground()V

    return-void
.end method

.method static synthetic access$15(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    return-object v0
.end method

.method static synthetic access$7(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    return-void
.end method

.method static synthetic access$8(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    return-void
.end method

.method static synthetic access$9(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method private genBackground()V
    .locals 7

    .prologue
    .line 513
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f323232

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    .line 514
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 516
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 517
    .local v0, "bgBm":Landroid/graphics/Bitmap;
    const/16 v3, 0x14

    const/16 v4, 0x8

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/BitmapHelper;->blur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 518
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 519
    .local v1, "blurBm":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v0    # "bgBm":Landroid/graphics/Bitmap;
    .end local v1    # "blurBm":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 13
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 395
    const/4 v2, 0x0

    .line 440
    :goto_0
    return-object v2

    .line 397
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    .local v2, "llAt":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 399
    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 398
    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 400
    .local v3, "lpAt":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 401
    const/16 v9, 0x53

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 402
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 403
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    new-instance v9, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;

    invoke-direct {v9, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 413
    .local v7, "tvAt":Landroid/widget/TextView;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v10, "btn_back_nor"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 414
    .local v5, "resId":I
    if-lez v5, :cond_1

    .line 415
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 418
    .local v1, "dp_32":I
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    const/4 v9, 0x1

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 420
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtUserButtonText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 422
    .local v0, "dp_2":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 423
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 424
    const/high16 v9, -0x1000000

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 426
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 429
    .local v8, "tvName":Landroid/widget/TextView;
    const/4 v9, 0x1

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 430
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v10, "list_friends"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 432
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 435
    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 434
    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 436
    .local v4, "lpName":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 437
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private getBodyBottom()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 366
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 367
    .local v1, "llBottom":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    const/4 v4, -0x1

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 367
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 371
    .local v0, "line":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    .line 377
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const/16 v4, 0x8c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const v4, -0x303031

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 380
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 381
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v2, "lpCounter":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 384
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    return-object v1
.end method

.method private getImagePin()Landroid/widget/ImageView;
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 494
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    .line 495
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v5, "pin"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 496
    .local v3, "resId":I
    if-lez v3, :cond_0

    .line 497
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 500
    .local v1, "dp_80":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 502
    .local v0, "dp_36":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 503
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 504
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 505
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 506
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v4
.end method

.method private getMainBody()Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/4 v8, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    .line 241
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 242
    .local v2, "llMainBody":Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v5, "lpMain":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 246
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 247
    .local v0, "dp_4":I
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "llContent":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    .local v3, "lpContent":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 254
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    .line 258
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 259
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 262
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    .local v4, "lpEt":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 265
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getThumbView()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getBodyBottom()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    return-object v2
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    const-string v1, ""

    .line 532
    :goto_0
    return-object v1

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 532
    .local v0, "resId":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPageBody()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x2

    .line 214
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    .line 215
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 216
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v4, "edittext_back"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 217
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 218
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 220
    :cond_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v1, "lpBody":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x5

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    const/4 v3, 0x7

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    iget-boolean v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->dialogMode:Z

    if-nez v3, :cond_1

    .line 227
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 230
    .local v0, "dp_3":I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getMainBody()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getSep()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPlatformList()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    return-object v3
.end method

.method private getPageTitle()Lcn/sharesdk/framework/TitleLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 185
    new-instance v2, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 186
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/TitleLayout;->setId(I)V

    .line 191
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "multi_share"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 194
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "share"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 198
    if-lez v1, :cond_1

    .line 199
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 201
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    return-object v2
.end method

.method private getPageView()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    .line 157
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-boolean v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->dialogMode:Z

    if-eqz v4, :cond_0

    .line 160
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 161
    .local v2, "rlDialog":Landroid/widget/RelativeLayout;
    const v4, -0x3fcdcdce

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 162
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 163
    .local v0, "dp_8":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    sub-int v3, v4, v5

    .line 164
    .local v3, "width":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    const/4 v4, -0x2

    .line 164
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v1, "lpDialog":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 167
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 168
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 174
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 180
    .end local v0    # "dp_8":I
    .end local v1    # "lpDialog":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "rlDialog":Landroid/widget/RelativeLayout;
    .end local v3    # "width":I
    :goto_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v4

    .line 176
    :cond_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    const/4 v3, 0x0

    .line 641
    if-nez p1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-object v3

    .line 645
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 650
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "logo_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "resName":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 652
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 653
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getPlatformList()Landroid/widget/LinearLayout;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 455
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 456
    .local v1, "llToolBar":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 458
    .local v4, "lpTb":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 461
    .local v7, "tvShareTo":Landroid/widget/TextView;
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v9, "share_to"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 462
    .local v5, "resId":I
    if-lez v5, :cond_0

    .line 463
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 465
    :cond_0
    const v8, -0x303031

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    const/4 v8, 0x1

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 467
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x9

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 468
    .local v0, "dp_9":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 470
    .local v2, "lpShareTo":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 471
    invoke-virtual {v2, v0, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 472
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    new-instance v6, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 476
    .local v6, "sv":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v6, v11}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 477
    invoke-virtual {v6, v11}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 478
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 480
    .local v3, "lpSv":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 481
    invoke-virtual {v6, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    .line 485
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 486
    invoke-direct {v9, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 485
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 489
    return-object v1
.end method

.method private getSep()Landroid/view/View;
    .locals 5

    .prologue
    .line 444
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 445
    .local v2, "vSep":Landroid/view/View;
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 446
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 447
    .local v0, "dp_1":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 448
    const/4 v3, -0x1

    .line 447
    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 449
    .local v1, "lpSep":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    return-object v2
.end method

.method private getThumbView()Landroid/widget/RelativeLayout;
    .locals 17

    .prologue
    .line 276
    new-instance v15, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x52

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v8

    .line 279
    .local v8, "dp_82":I
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x62

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v9

    .line 281
    .local v9, "dp_98":I
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 282
    .local v12, "lpThumb":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    .line 285
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v16, "btn_back_nor"

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 286
    .local v14, "resId":I
    if-lez v14, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 289
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x4

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 293
    .local v5, "dp_4":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x4a

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v6

    .line 296
    .local v6, "dp_74":I
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 297
    .local v11, "lpImage":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 298
    .local v2, "dp_16":I
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x8

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v7

    .line 299
    .local v7, "dp_8":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    new-instance v16, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;

    invoke-direct/range {v16 .. v17}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x18

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    .line 313
    .local v4, "dp_24":I
    new-instance v15, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v15, v4, v4, v4, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 316
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 317
    .local v13, "pb":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v15, v13}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 321
    new-instance v1, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v1, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 322
    .local v1, "btn":Landroid/widget/Button;
    new-instance v15, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v1, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v16, "img_cancel"

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 331
    if-lez v14, :cond_1

    .line 332
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 334
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x14

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 336
    .local v3, "dp_20":I
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 337
    .local v10, "lpBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xb

    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 338
    const/16 v15, 0xc

    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 339
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->haveImage()Z

    move-result v15

    if-nez v15, :cond_2

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 345
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v15
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 682
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    .line 683
    const-string v3, "input_method"

    .line 682
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 684
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v1

    .line 686
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showThumb()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->initImageList(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)Z

    .line 363
    return-void
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 18

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v14, :cond_0

    const/4 v13, 0x0

    .line 590
    .local v13, "size":I
    :goto_0
    new-array v14, v13, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v14

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 593
    .local v2, "dp_24":I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 594
    .local v7, "lpItem":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v14

    const/16 v15, 0x9

    invoke-static {v14, v15}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 595
    .local v3, "dp_9":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 596
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 597
    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 596
    invoke-direct {v8, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 598
    .local v8, "lpMask":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v14, 0x33

    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 599
    const/4 v12, 0x0

    .line 600
    .local v12, "selection":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v13, :cond_1

    .line 630
    move v11, v12

    .line 631
    .local v11, "postSel":I
    const/4 v14, 0x0

    const-wide/16 v15, 0x14d

    new-instance v17, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v2, v3}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;III)V

    invoke-static/range {v14 .. v17}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    .line 638
    return-void

    .line 589
    .end local v2    # "dp_24":I
    .end local v3    # "dp_9":I
    .end local v5    # "i":I
    .end local v7    # "lpItem":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "lpMask":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "postSel":I
    .end local v12    # "selection":I
    .end local v13    # "size":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v13, v14

    goto :goto_0

    .line 601
    .restart local v2    # "dp_24":I
    .restart local v3    # "dp_9":I
    .restart local v5    # "i":I
    .restart local v7    # "lpItem":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "lpMask":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12    # "selection":I
    .restart local v13    # "size":I
    :cond_1
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v4, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 602
    .local v4, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    add-int/lit8 v14, v13, -0x1

    if-lt v5, v14, :cond_2

    .line 604
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 607
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 610
    .local v6, "iv":Landroid/widget/ImageView;
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v14, v14, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 612
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 613
    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 612
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    new-instance v15, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v15, v14, v5

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v14, v14, v5

    const v15, -0x30000001

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v14, v14, v5

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v10

    .line 620
    .local v10, "platformName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_4

    .line 626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v14, v14, v5

    invoke-virtual {v14, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v14, v14, v5

    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 600
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 620
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/sharesdk/framework/Platform;

    .line 621
    .local v9, "plat":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v9}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v15, v15, v5

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 623
    move v12, v5

    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 671
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 661
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 536
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 537
    const/4 v1, 0x0

    .line 538
    .local v1, "plat":Lcn/sharesdk/framework/Platform;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 546
    :goto_1
    if-eqz v1, :cond_0

    .line 547
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->finish()V

    .line 585
    .end local v0    # "i":I
    .end local v1    # "plat":Lcn/sharesdk/framework/Platform;
    .end local p1    # "v":Landroid/view/View;
    :cond_1
    :goto_2
    return-void

    .line 539
    .restart local v0    # "i":I
    .restart local v1    # "plat":Lcn/sharesdk/framework/Platform;
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 540
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v1, v4, v0

    .line 541
    goto :goto_1

    .line 538
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    .end local v1    # "plat":Lcn/sharesdk/framework/Platform;
    :cond_4
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 554
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v5, "text"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 558
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    array-length v4, v4

    if-lt v0, v4, :cond_5

    .line 564
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 565
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->setResultAndFinish()V

    goto :goto_2

    .line 559
    :cond_5
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    .line 560
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v5, v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 567
    :cond_7
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v5, "select_one_plat_at_least"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 568
    .local v2, "resId":I
    if-lez v2, :cond_1

    .line 569
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 575
    .end local v0    # "i":I
    .end local v2    # "resId":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_8
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_9

    .line 576
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "v":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto/16 :goto_2

    .line 580
    .restart local p1    # "v":Landroid/view/View;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_a

    .line 581
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 583
    :cond_a
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const-wide/16 v4, 0x3e8

    const v3, 0x7f323232

    .line 696
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 697
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 698
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 699
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 700
    .local v1, "win":Landroid/view/Window;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 702
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 703
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 722
    :goto_0
    return-void

    .line 710
    .end local v1    # "win":Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 711
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 712
    .restart local v1    # "win":Landroid/view/Window;
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 714
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 715
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->finish()V

    .line 154
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->genBackground()V

    .line 116
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 118
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->showThumb()V

    .line 121
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    .line 153
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->start()V

    goto :goto_0
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 692
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "atText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 676
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 678
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 664
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    rsub-int v0, v1, 0x8c

    .line 665
    .local v0, "remain":I
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    if-lez v0, :cond_0

    const v1, -0x303031

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    return-void

    .line 666
    :cond_0
    const/high16 v1, -0x10000

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 99
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 100
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 101
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method
