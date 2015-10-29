.class public Lcom/pubinfo/freewifialliance/view/SlideSwitch;
.super Landroid/view/View;
.source "SlideSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;,
        Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;
    }
.end annotation


# static fields
.field public static final SWITCH_OFF:I = 0x0

.field public static final SWITCH_ON:I = 0x1

.field public static final SWITCH_SCROLING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SlideSwitch"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mDstX:I

.field private mHasScrolled:Z

.field private mOffText:Ljava/lang/String;

.field private mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

.field private mOnText:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcX:I

.field private mSwitchStatus:I

.field mSwitch_off:Landroid/graphics/Bitmap;

.field mSwitch_on:Landroid/graphics/Bitmap;

.field mSwitch_thumb:Landroid/graphics/Bitmap;

.field private mThumbWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnText:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOffText:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    .line 46
    iput-boolean v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mHasScrolled:Z

    .line 48
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSrcX:I

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    .line 50
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpWidth:I

    .line 51
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    .line 52
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mThumbWidth:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    .line 65
    iput p2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    .line 66
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnText:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOffText:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    .line 46
    iput-boolean v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mHasScrolled:Z

    .line 48
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSrcX:I

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    .line 50
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpWidth:I

    .line 51
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    .line 52
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mThumbWidth:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    .line 72
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnText:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOffText:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    .line 46
    iput-boolean v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mHasScrolled:Z

    .line 48
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSrcX:I

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    .line 50
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpWidth:I

    .line 51
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    .line 52
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mThumbWidth:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    .line 78
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->init()V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/freewifialliance/view/SlideSwitch;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020057

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_off:Landroid/graphics/Bitmap;

    .line 86
    const v1, 0x7f020058

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_on:Landroid/graphics/Bitmap;

    .line 87
    const v1, 0x7f020059

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_thumb:Landroid/graphics/Bitmap;

    .line 88
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_on:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpWidth:I

    .line 89
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_on:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    .line 90
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mThumbWidth:I

    .line 91
    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 272
    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "dst":Landroid/graphics/Rect;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p3, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 273
    .restart local p3    # "dst":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 274
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 275
    return-void
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x41a00000    # 20.0f

    const/16 v8, 0x69

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 217
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 221
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 224
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_off:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v6, v6, v1}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 227
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_thumb:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v6, v6, v1}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 228
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOffText:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    :goto_0
    return-void

    .line 232
    :cond_0
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 234
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_on:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v6, v6, v1}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 236
    .local v0, "count":I
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_on:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_thumb:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v6, v6, v1}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 240
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnText:Ljava/lang/String;

    const/high16 v2, 0x41880000    # 17.0f

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 244
    .end local v0    # "count":I
    :cond_1
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    const/16 v3, 0x23

    if-le v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    .line 245
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    iget v5, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_on:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 246
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnText:Ljava/lang/String;

    const/high16 v3, 0x41880000    # 17.0f

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 250
    .restart local v0    # "count":I
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpWidth:I

    iget v5, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 252
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpWidth:I

    iget v5, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_off:Landroid/graphics/Bitmap;

    .line 251
    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 256
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpWidth:I

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 257
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mThumbWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOffText:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 263
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I

    iget v2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mThumbWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 264
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitch_thumb:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v6, v6, v1}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 265
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .end local v0    # "count":I
    :cond_2
    move v1, v2

    .line 244
    goto/16 :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 212
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 162
    .local v0, "action":I
    const-string v4, "SlideSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onTouchEvent  x="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    packed-switch v0, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return v7

    .line 165
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSrcX:I

    goto :goto_0

    .line 178
    :pswitch_1
    iget-boolean v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mHasScrolled:Z

    if-nez v4, :cond_2

    .line 180
    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    .line 181
    const/16 v2, 0xa

    .local v2, "xFrom":I
    const/16 v3, 0x3e

    .line 182
    .local v3, "xTo":I
    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    if-nez v4, :cond_1

    .line 184
    const/16 v2, 0x3e

    .line 185
    const/16 v3, 0xa

    .line 187
    :cond_1
    new-instance v1, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-direct {v1, p0, v4, v5, v7}, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;-><init>(Lcom/pubinfo/freewifialliance/view/SlideSwitch;FFI)V

    .line 188
    .local v1, "runnable":Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 196
    .end local v1    # "runnable":Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;
    .end local v2    # "xFrom":I
    .end local v3    # "xTo":I
    :goto_1
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    iget v5, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    invoke-interface {v4, p0, v5}, Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;->onSwitchChanged(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->invalidate()V

    .line 193
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mHasScrolled:Z

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 96
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 97
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mBmpHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method

.method public setOnSwitchChangedListener(Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;)V
    .locals 0
    .param p1, "onSwitchChangedListener"    # Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    .line 108
    return-void
.end method

.method public setStatus(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 128
    if-eqz p1, :cond_2

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    .line 130
    iget-boolean v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mHasScrolled:Z

    if-nez v3, :cond_3

    .line 132
    const/16 v1, 0xa

    .local v1, "xFrom":I
    const/16 v2, 0x3e

    .line 133
    .local v2, "xTo":I
    iget v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    if-nez v3, :cond_0

    .line 135
    const/16 v1, 0x3e

    .line 136
    const/16 v2, 0xa

    .line 138
    :cond_0
    new-instance v0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;

    int-to-float v3, v1

    int-to-float v5, v2

    invoke-direct {v0, p0, v3, v5, v4}, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;-><init>(Lcom/pubinfo/freewifialliance/view/SlideSwitch;FFI)V

    .line 139
    .local v0, "runnable":Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 147
    .end local v0    # "runnable":Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;
    .end local v1    # "xFrom":I
    .end local v2    # "xTo":I
    :goto_1
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnSwitchChangedListener:Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mSwitchStatus:I

    invoke-interface {v3, p0, v4}, Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;->onSwitchChanged(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V

    .line 152
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 128
    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->invalidate()V

    .line 144
    iput-boolean v5, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mHasScrolled:Z

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/String;
    .param p2, "offText"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOnText:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mOffText:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->invalidate()V

    .line 120
    return-void
.end method
