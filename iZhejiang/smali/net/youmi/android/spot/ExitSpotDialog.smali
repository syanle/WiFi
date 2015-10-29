.class public Lnet/youmi/android/spot/ExitSpotDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:F

.field private F:J

.field protected a:I

.field private final b:I

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lnet/youmi/android/spot/ExitSpotListener;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lnet/youmi/android/spot/ExitSpotListener;)V
    .locals 11

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x2

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->c:Z

    const/4 v1, 0x2

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->x:I

    const/4 v1, 0x4

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->y:I

    const/4 v1, 0x5

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->z:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->A:Z

    const-string v1, "#00000000"

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->B:Ljava/lang/String;

    const-string v1, "#7751534e"

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->C:Ljava/lang/String;

    const-string v1, "#99000000"

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->D:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->E:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->F:J

    iput-object p1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->d:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->e:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->s:Lnet/youmi/android/spot/ExitSpotListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->c:Z

    if-nez p4, :cond_0

    const p4, 0x101004a

    :cond_0
    invoke-static/range {p5 .. p5}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p5, "#ff51534e"

    :cond_1
    invoke-direct {p0}, Lnet/youmi/android/spot/ExitSpotDialog;->b()V

    invoke-static {p1}, Lnet/youmi/android/a/b/k/f;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/k/f;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4}, Lnet/youmi/android/a/b/k/f;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Lnet/youmi/android/a/b/k/f;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Lnet/youmi/android/a/b/k/f;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    :goto_0
    if-eqz v3, :cond_3

    int-to-double v5, v3

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v5, v7

    double-to-int v1, v5

    :goto_1
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->t:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->t:Landroid/widget/RelativeLayout;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->t:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->t:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lnet/youmi/android/spot/ExitSpotDialog;->B:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->u:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v5, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, v3}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v6

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setId(I)V

    :try_start_1
    invoke-static {p2}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_7

    const-string v3, "blk"

    const/4 v9, 0x0

    invoke-static {v8, v3, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v3, "rtg"

    const/4 v9, 0x0

    invoke-static {v8, v3, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    :cond_2
    const-string v9, "uri"

    const-string v10, ""

    invoke-static {v3, v9, v10}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v3, "rtg"

    const/4 v9, 0x0

    invoke-static {v8, v3, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "uri"

    const-string v9, ""

    invoke-static {v3, v8, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0}, Lnet/youmi/android/spot/ExitSpotDialog;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v4

    move v4, v1

    goto/16 :goto_0

    :cond_3
    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {p0, v1}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v1

    goto/16 :goto_1

    :cond_4
    :try_start_2
    sget-object v8, Lnet/youmi/android/spot/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lnet/youmi/android/spot/j;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v8, v3

    iput v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->E:F

    iget v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->E:F

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_5

    int-to-float v2, v1

    iget v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->E:F
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :cond_5
    if-nez v2, :cond_6

    move v2, v1

    :cond_6
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v6, v6, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v9, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->v:Landroid/widget/Button;

    iget-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->v:Landroid/widget/Button;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    iget-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->v:Landroid/widget/Button;

    const-string v9, "\u9000\u51fa"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v9, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->w:Landroid/widget/Button;

    iget-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->w:Landroid/widget/Button;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    iget-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->w:Landroid/widget/Button;

    const-string v9, "\u53d6\u6d88"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x140

    if-ge v4, v8, :cond_8

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->v:Landroid/widget/Button;

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-direct {p0, v8}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setWidth(I)V

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->w:Landroid/widget/Button;

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-direct {p0, v8}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setWidth(I)V

    :goto_3
    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->v:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->w:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x42300000    # 44.0f

    invoke-direct {p0, v9}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {p0, v8}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->v:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->v:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x42300000    # 44.0f

    invoke-direct {p0, v9}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->w:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->w:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_9

    const/high16 v4, 0x42000000    # 32.0f

    invoke-direct {p0, v4}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v4

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_4
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    const-string v2, "\u731c\u4f60\u4f1a\u559c\u6b22"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->D:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {p5 .. p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    const/4 v6, 0x2

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->C:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/youmi/android/spot/ExitSpotDialog;->setCancelable(Z)V

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lnet/youmi/android/spot/ExitSpotDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_7
    :try_start_3
    invoke-direct {p0}, Lnet/youmi/android/spot/ExitSpotDialog;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/a/b/e/b;->a(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->c:Z

    goto/16 :goto_2

    :cond_8
    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->v:Landroid/widget/Button;

    const/high16 v8, 0x42dc0000    # 110.0f

    invoke-direct {p0, v8}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setWidth(I)V

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->w:Landroid/widget/Button;

    const/high16 v8, 0x42dc0000    # 110.0f

    invoke-direct {p0, v8}, Lnet/youmi/android/spot/ExitSpotDialog;->a(F)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setWidth(I)V

    goto/16 :goto_3

    :cond_9
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xd

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method private a(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->c:Z

    const-string v0, "\u6570\u636e\u52a0\u8f7d\u5931\u8d25\uff0c\u6b64\u6b21\u9000\u5c4f\u4e0d\u5c55\u793a"

    invoke-static {v0}, Lnet/youmi/android/a/c/b/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "spotid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->a:I

    const-string v1, "rsd"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->m:Ljava/lang/String;

    const-string v1, "md5"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->n:Ljava/lang/String;

    const-string v1, "e"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->l:Ljava/lang/String;

    const-string v1, "name"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->q:Ljava/lang/String;

    const-string v1, "app"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->o:Ljava/lang/String;

    const-string v1, "pn"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->p:Ljava/lang/String;

    const-string v1, "tips"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->f:Ljava/lang/String;

    const-string v1, "itips"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->g:Ljava/lang/String;

    const-string v1, "disclk"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->h:I

    const-string v1, "cpt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->i:I

    const-string v1, "io"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->j:I

    const-string v1, "url"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->k:Ljava/lang/String;

    const-string v1, "blk"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uri"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->r:Ljava/lang/String;

    iget v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->o:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->d:Landroid/content/Context;

    iget v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->j:I

    iget-object v2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/youmi/android/spot/f;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->d:Landroid/content/Context;

    iget v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->a:I

    iget-object v2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->q:Ljava/lang/String;

    iget-object v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->p:Ljava/lang/String;

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->m:Ljava/lang/String;

    iget-object v5, p0, Lnet/youmi/android/spot/ExitSpotDialog;->l:Ljava/lang/String;

    iget-object v6, p0, Lnet/youmi/android/spot/ExitSpotDialog;->o:Ljava/lang/String;

    iget-object v7, p0, Lnet/youmi/android/spot/ExitSpotDialog;->f:Ljava/lang/String;

    iget-object v8, p0, Lnet/youmi/android/spot/ExitSpotDialog;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lnet/youmi/android/spot/f;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->F:J

    sub-long v7, v0, v2

    iget-object v3, p0, Lnet/youmi/android/spot/ExitSpotDialog;->d:Landroid/content/Context;

    iget-object v4, p0, Lnet/youmi/android/spot/ExitSpotDialog;->m:Ljava/lang/String;

    iget-object v5, p0, Lnet/youmi/android/spot/ExitSpotDialog;->l:Ljava/lang/String;

    sget-object v6, Lnet/youmi/android/c/a/b;->b:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lnet/youmi/android/spot/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lnet/youmi/android/spot/ExitSpotDialog;->dismiss()V

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->s:Lnet/youmi/android/spot/ExitSpotListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->s:Lnet/youmi/android/spot/ExitSpotListener;

    invoke-interface {v1}, Lnet/youmi/android/spot/ExitSpotListener;->exit()V

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lnet/youmi/android/spot/ExitSpotDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showDialog(I)Z
    .locals 8

    const/4 v7, 0x1

    iget-boolean v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->F:J

    invoke-virtual {p0}, Lnet/youmi/android/spot/ExitSpotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-boolean v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/spot/ExitSpotDialog;->d:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/spot/ExitSpotDialog;->m:Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/spot/ExitSpotDialog;->l:Ljava/lang/String;

    sget-object v3, Lnet/youmi/android/c/a/b;->a:Ljava/lang/String;

    const-wide/16 v4, -0x1

    const/4 v6, 0x2

    invoke-static/range {v0 .. v6}, Lnet/youmi/android/spot/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    iput-boolean v7, p0, Lnet/youmi/android/spot/ExitSpotDialog;->A:Z

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    move v0, v7

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
