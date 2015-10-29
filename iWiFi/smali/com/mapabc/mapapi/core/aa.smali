.class public Lcom/mapabc/mapapi/core/aa;
.super Ljava/lang/Object;
.source "RouteResource.java"


# static fields
.field public static a:Landroid/graphics/drawable/Drawable;

.field public static b:Landroid/graphics/drawable/Drawable;

.field public static c:Landroid/graphics/drawable/Drawable;

.field public static d:Landroid/graphics/drawable/Drawable;

.field public static e:Landroid/graphics/drawable/Drawable;

.field public static f:Landroid/graphics/drawable/Drawable;

.field public static g:Landroid/graphics/drawable/Drawable;

.field public static h:Landroid/graphics/drawable/Drawable;

.field public static i:Landroid/graphics/drawable/Drawable;

.field public static j:Landroid/graphics/drawable/Drawable;

.field public static k:Landroid/graphics/Paint;

.field public static l:Landroid/graphics/Paint;

.field public static m:Landroid/graphics/Paint;

.field public static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mapabc/mapapi/core/aa;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->a:Landroid/graphics/drawable/Drawable;

    .line 137
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/16 v8, 0x54

    const/16 v5, 0x36

    const/16 v7, 0x8

    const/high16 v4, 0x40b00000    # 5.5f

    const/4 v6, 0x1

    .line 44
    sget-boolean v0, Lcom/mapabc/mapapi/core/aa;->n:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->l:Landroid/graphics/Paint;

    .line 52
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->l:Landroid/graphics/Paint;

    const/16 v1, 0x72

    const/16 v2, 0xe3

    invoke-static {v5, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->l:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 57
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->k:Landroid/graphics/Paint;

    .line 61
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->k:Landroid/graphics/Paint;

    const/16 v1, 0x2c

    const/16 v2, 0xde

    const/16 v3, 0x12

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->k:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 67
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 68
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->m:Landroid/graphics/Paint;

    .line 71
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->m:Landroid/graphics/Paint;

    const/16 v1, 0x72

    const/16 v2, 0xe3

    invoke-static {v5, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->m:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 77
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 82
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 83
    const-wide/32 v2, 0x25800

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 84
    invoke-static {p0, v6}, Lcom/mapabc/mapapi/core/aa;->a(Landroid/content/Context;I)V

    .line 91
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/16 v3, 0xe

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    new-array v1, v8, [B

    fill-array-data v1, :array_0

    .line 99
    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x11

    const/4 v4, 0x5

    const/16 v5, 0xc

    invoke-direct {v2, v3, v4, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    new-array v3, v8, [B

    fill-array-data v3, :array_1

    .line 106
    sget-object v4, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v5, "left_back.png"

    invoke-virtual {v4, p0, v5, v1, v0}, Lcom/mapabc/mapapi/core/u;->a(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->h:Landroid/graphics/drawable/Drawable;

    .line 108
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "right_back.png"

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/mapabc/mapapi/core/u;->a(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->i:Landroid/graphics/drawable/Drawable;

    .line 111
    sput-boolean v6, Lcom/mapabc/mapapi/core/aa;->n:Z

    goto/16 :goto_0

    .line 85
    :cond_1
    const-wide/32 v2, 0x25800

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 86
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/mapabc/mapapi/core/aa;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 88
    :cond_2
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/mapabc/mapapi/core/aa;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 93
    :array_0
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 100
    :array_1
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0xct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x13t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 251
    packed-switch p1, :pswitch_data_0

    .line 318
    :try_start_0
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "start.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->a:Landroid/graphics/drawable/Drawable;

    .line 320
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "end.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->b:Landroid/graphics/drawable/Drawable;

    .line 322
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "foot.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->c:Landroid/graphics/drawable/Drawable;

    .line 324
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "bus_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->e:Landroid/graphics/drawable/Drawable;

    .line 326
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "car.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->d:Landroid/graphics/drawable/Drawable;

    .line 328
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "starticon.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->f:Landroid/graphics/drawable/Drawable;

    .line 330
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "endicon.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->g:Landroid/graphics/drawable/Drawable;

    .line 332
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "route_coner.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->j:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 340
    :goto_0
    return-void

    .line 254
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "start_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->a:Landroid/graphics/drawable/Drawable;

    .line 256
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "end_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->b:Landroid/graphics/drawable/Drawable;

    .line 258
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "foot_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->c:Landroid/graphics/drawable/Drawable;

    .line 260
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "bus_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->e:Landroid/graphics/drawable/Drawable;

    .line 262
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "car_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->d:Landroid/graphics/drawable/Drawable;

    .line 264
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "starticon_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->f:Landroid/graphics/drawable/Drawable;

    .line 266
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "endicon_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->g:Landroid/graphics/drawable/Drawable;

    .line 269
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "route_coner_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->j:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0

    .line 276
    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "start.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->a:Landroid/graphics/drawable/Drawable;

    .line 278
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "end.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->b:Landroid/graphics/drawable/Drawable;

    .line 280
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "foot.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->c:Landroid/graphics/drawable/Drawable;

    .line 282
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "bus.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->e:Landroid/graphics/drawable/Drawable;

    .line 284
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "car.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->d:Landroid/graphics/drawable/Drawable;

    .line 286
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "starticon.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->f:Landroid/graphics/drawable/Drawable;

    .line 288
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "endicon.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->g:Landroid/graphics/drawable/Drawable;

    .line 290
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "route_coner.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->j:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 292
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 297
    :pswitch_2
    :try_start_3
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "start.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->a:Landroid/graphics/drawable/Drawable;

    .line 299
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "end.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->b:Landroid/graphics/drawable/Drawable;

    .line 301
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "foot.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->c:Landroid/graphics/drawable/Drawable;

    .line 303
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "bus.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->e:Landroid/graphics/drawable/Drawable;

    .line 305
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "car.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->d:Landroid/graphics/drawable/Drawable;

    .line 307
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "starticon.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->f:Landroid/graphics/drawable/Drawable;

    .line 309
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "endicon.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->g:Landroid/graphics/drawable/Drawable;

    .line 311
    sget-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v1, "route_coner_q.png"

    invoke-virtual {v0, p0, v1}, Lcom/mapabc/mapapi/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->j:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 313
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 334
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    const/16 v1, 0x54

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 122
    sget-object v2, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    const-string v3, "left_back.png"

    invoke-virtual {v2, p0, v3, v1, v0}, Lcom/mapabc/mapapi/core/u;->a(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    return-object v0

    .line 117
    :array_0
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->b:Landroid/graphics/drawable/Drawable;

    .line 149
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->c:Landroid/graphics/drawable/Drawable;

    .line 161
    :cond_0
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->d:Landroid/graphics/drawable/Drawable;

    .line 173
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->e:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_0
    return-void
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/core/aa;->j:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_0
    return-void
.end method

.method public static g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mapabc/mapapi/core/aa;->n:Z

    .line 223
    invoke-static {}, Lcom/mapabc/mapapi/core/aa;->a()V

    .line 224
    invoke-static {}, Lcom/mapabc/mapapi/core/aa;->b()V

    .line 225
    invoke-static {}, Lcom/mapabc/mapapi/core/aa;->c()V

    .line 226
    invoke-static {}, Lcom/mapabc/mapapi/core/aa;->d()V

    .line 227
    invoke-static {}, Lcom/mapabc/mapapi/core/aa;->e()V

    .line 228
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 229
    sput-object v1, Lcom/mapabc/mapapi/core/aa;->h:Landroid/graphics/drawable/Drawable;

    .line 237
    :cond_0
    sget-object v0, Lcom/mapabc/mapapi/core/aa;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 238
    sput-object v1, Lcom/mapabc/mapapi/core/aa;->i:Landroid/graphics/drawable/Drawable;

    .line 246
    :cond_1
    invoke-static {}, Lcom/mapabc/mapapi/core/aa;->f()V

    .line 247
    return-void
.end method
