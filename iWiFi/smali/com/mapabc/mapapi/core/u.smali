.class public Lcom/mapabc/mapapi/core/u;
.super Ljava/lang/Object;
.source "PublicResManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/u;->a:Landroid/content/Context;

    .line 25
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nomap.png"

    aput-object v1, v0, v3

    const-string v1, "beta.png"

    aput-object v1, v0, v4

    const-string v1, "poi_1.png"

    aput-object v1, v0, v5

    const-string v1, "compass_bg.png"

    aput-object v1, v0, v6

    const-string v1, "compass_pointer.png"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "loc1.png"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "loc2.png"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zoom_in_true_HVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zoom_out_true_HVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "zoom_in_disabled_HVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "zoom_out_disabled_HVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "zoom_in_selected_HVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "zoom_out_selected_HVGA.9.png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mapabc/mapapi/core/u;->b:[Ljava/lang/String;

    .line 32
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nomap.png"

    aput-object v1, v0, v3

    const-string v1, "beta.png"

    aput-object v1, v0, v4

    const-string v1, "poi_1_WVGA.png"

    aput-object v1, v0, v5

    const-string v1, "compass_bg.png"

    aput-object v1, v0, v6

    const-string v1, "compass_pointer.png"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "loc1.png"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "loc2.png"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zoom_in_true_WVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zoom_out_true_WVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "zoom_in_disabled_WVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "zoom_out_disabled_WVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "zoom_in_selected_WVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "zoom_out_selected_WVGA.9.png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mapabc/mapapi/core/u;->c:[Ljava/lang/String;

    .line 39
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nomap.png"

    aput-object v1, v0, v3

    const-string v1, "beta.png"

    aput-object v1, v0, v4

    const-string v1, "poi_1_QVGA.png"

    aput-object v1, v0, v5

    const-string v1, "compass_bg__QVGA.png"

    aput-object v1, v0, v6

    const-string v1, "compass_pointer_QVGA.png"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "loc1_QVGA.png"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "loc2_QVGA.png"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zoom_in_true_QVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zoom_out_true_QVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "zoom_in_disabled_QVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "zoom_out_disabled_QVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "zoom_in_selected_QVGA.9.png"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "zoom_out_selected_QVGA.9.png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mapabc/mapapi/core/u;->d:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    .line 22
    iput-object p1, p0, Lcom/mapabc/mapapi/core/u;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->b:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    .line 94
    :goto_0
    return-object v0

    .line 81
    :cond_1
    const-string v0, ""

    .line 82
    sget v1, Lcom/mapabc/mapapi/core/c;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 83
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 89
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/u;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/mapabc/mapapi/core/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    iget-object v1, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    aput-object v0, v1, p1

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    goto :goto_0

    .line 84
    :cond_4
    sget v1, Lcom/mapabc/mapapi/core/c;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 85
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_1

    .line 86
    :cond_5
    sget v1, Lcom/mapabc/mapapi/core/c;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    .line 103
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 107
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, p4, v2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    array-length v1, v0

    .line 56
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 57
    iget-object v2, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 56
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    goto :goto_2

    .line 63
    :cond_2
    iput-object v3, p0, Lcom/mapabc/mapapi/core/u;->e:[Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 116
    return-object v0
.end method

.method public b()V
    .locals 10

    .prologue
    const/16 v1, 0xa0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-wide/32 v5, 0x25800

    .line 147
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/mapabc/mapapi/core/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 150
    const/4 v0, 0x0

    .line 152
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "densityDpi"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 160
    :goto_0
    if-eqz v0, :cond_5

    .line 163
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    .line 165
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 171
    :goto_1
    const/16 v2, 0x78

    if-gt v0, v2, :cond_0

    .line 172
    sput v7, Lcom/mapabc/mapapi/core/c;->f:I

    .line 196
    :goto_2
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    .line 170
    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    .line 173
    :cond_0
    if-gt v0, v1, :cond_1

    .line 174
    sput v9, Lcom/mapabc/mapapi/core/c;->f:I

    goto :goto_2

    .line 175
    :cond_1
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_2

    .line 176
    sput v8, Lcom/mapabc/mapapi/core/c;->f:I

    goto :goto_2

    .line 178
    :cond_2
    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 179
    sput v8, Lcom/mapabc/mapapi/core/c;->f:I

    goto :goto_2

    .line 180
    :cond_3
    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 181
    sput v7, Lcom/mapabc/mapapi/core/c;->f:I

    goto :goto_2

    .line 183
    :cond_4
    sput v9, Lcom/mapabc/mapapi/core/c;->f:I

    goto :goto_2

    .line 187
    :cond_5
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 188
    cmp-long v2, v0, v5

    if-lez v2, :cond_6

    .line 189
    sput v8, Lcom/mapabc/mapapi/core/c;->f:I

    goto :goto_2

    .line 190
    :cond_6
    cmp-long v0, v0, v5

    if-gez v0, :cond_7

    .line 191
    sput v7, Lcom/mapabc/mapapi/core/c;->f:I

    goto :goto_2

    .line 193
    :cond_7
    sput v9, Lcom/mapabc/mapapi/core/c;->f:I

    goto :goto_2

    .line 155
    :catch_2
    move-exception v3

    goto :goto_0

    .line 153
    :catch_3
    move-exception v3

    goto :goto_0
.end method
