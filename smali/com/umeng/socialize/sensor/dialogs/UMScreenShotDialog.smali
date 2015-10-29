.class public Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;
.super Landroid/app/Dialog;
.source "UMScreenShotDialog.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private volatile isShowing:Z

.field private mContext:Landroid/content/Context;

.field private mDelayMillis:I

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "scrshot_dlg_style"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;-><init>(Landroid/content/Context;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mImageView:Landroid/widget/ImageView;

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mDelayMillis:I

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->isShowing:Z

    .line 285
    new-instance v0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog$1;-><init>(Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;)V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mDismissRunnable:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->initDialog()V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->isShowing:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private canShow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->clearDialog()V

    .line 269
    :goto_0
    return v1

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 263
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 264
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->clearDialog()V

    goto :goto_0

    .line 269
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clearDialog()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->isShowing:Z

    .line 280
    return-void
.end method

.method private initDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 82
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    .line 83
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "shake_umeng_socialize_scrshot_snapshot"

    .line 82
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->setContentView(I)V

    .line 84
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    .line 85
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "screen_snapshot_imageview"

    .line 84
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mImageView:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    .line 88
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "snapshotDialogWindowAnim"

    .line 87
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 89
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->setCancelable(Z)V

    .line 90
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->isShowing:Z

    .line 215
    return-void
.end method

.method public getDialogShowMillis()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mDelayMillis:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    sget-object v0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->TAG:Ljava/lang/String;

    const-string v1, "### onAttachedToWindow ==> \u4e0d\u80fd\u663e\u793aScreenShotDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    sget-object v0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->TAG:Ljava/lang/String;

    const-string v1, "####onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->isShowing:Z

    .line 245
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 246
    iput-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    .line 247
    iput-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mHandler:Landroid/os/Handler;

    .line 248
    iput-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mImageView:Landroid/widget/ImageView;

    .line 249
    return-void
.end method

.method public setDialogAnimation(I)V
    .locals 1
    .param p1, "anim"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 113
    return-void
.end method

.method public setDialogAttributes()V
    .locals 10

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 162
    .local v0, "dialogWindow":Landroid/view/Window;
    const/16 v6, 0x33

    invoke-virtual {v0, v6}, Landroid/view/Window;->setGravity(I)V

    .line 164
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 165
    sget-object v6, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->TAG:Ljava/lang/String;

    const-string v7, "mContext \u4e3a\u7a7a, \u4e0d\u80fd\u8bbe\u7f6e\u7a97\u53e3\u53c2\u6570."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 170
    .local v3, "m":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 172
    .local v1, "disp":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 174
    .local v5, "scrWidth":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 177
    .local v4, "scrHeight":I
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 179
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 180
    const/4 v7, 0x2

    .line 179
    if-ne v6, v7, :cond_3

    .line 182
    div-int/lit8 v6, v5, 0x5

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 183
    div-int/lit8 v6, v4, 0xa

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 185
    int-to-double v6, v5

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 187
    int-to-double v6, v4

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 199
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 190
    const/4 v7, 0x1

    .line 189
    if-ne v6, v7, :cond_2

    .line 192
    div-int/lit8 v6, v5, 0x14

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 193
    div-int/lit8 v6, v4, 0x5

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 195
    int-to-double v6, v5

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 197
    int-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method public setDialogShowMillis(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mDelayMillis:I

    .line 123
    return-void
.end method

.method public setScreenBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->TAG:Ljava/lang/String;

    const-string v1, "### \u4e0d\u80fd\u663e\u793aScreenShotDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->setDialogAttributes()V

    .line 149
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->isShowing:Z

    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mDismissRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->mDelayMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
