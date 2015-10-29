.class public Lcom/mapabc/mapapi/core/f;
.super Ljava/lang/Object;
.source "Douglas.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapabc/mapapi/core/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/f;->a:Ljava/util/ArrayList;

    .line 21
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/f;->c:D

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapabc/mapapi/core/g;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/f;->a:Ljava/util/ArrayList;

    .line 21
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/f;->c:D

    .line 27
    iput-wide p2, p0, Lcom/mapabc/mapapi/core/f;->c:D

    .line 28
    iput-object p1, p0, Lcom/mapabc/mapapi/core/f;->a:Ljava/util/ArrayList;

    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/mapabc/mapapi/core/f;->b:I

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapabc/mapapi/core/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapabc/mapapi/core/f;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mapabc/mapapi/core/f;->b:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapabc/mapapi/core/f;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapabc/mapapi/core/f;->a:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mapabc/mapapi/core/f;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_3

    .line 51
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    iget v4, v2, Lcom/mapabc/mapapi/core/g;->a:I

    .line 52
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    iget v2, v2, Lcom/mapabc/mapapi/core/g;->a:I

    .line 53
    add-int/lit8 v4, v4, 0x1

    if-ne v2, v4, :cond_0

    .line 54
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    iget-object v2, v2, Lcom/mapabc/mapapi/core/g;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    .line 59
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    iget-object v2, v2, Lcom/mapabc/mapapi/core/g;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v2

    .line 60
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    iget-object v2, v2, Lcom/mapabc/mapapi/core/g;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    .line 61
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    iget-object v2, v2, Lcom/mapabc/mapapi/core/g;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 64
    sub-float v7, v5, v2

    float-to-double v11, v7

    .line 65
    sub-float v7, v4, v6

    neg-float v7, v7

    float-to-double v13, v7

    .line 66
    sub-float v6, v4, v6

    mul-float/2addr v6, v5

    sub-float v2, v5, v2

    mul-float/2addr v2, v4

    sub-float v2, v6, v2

    float-to-double v15, v2

    .line 69
    const-wide/16 v8, 0x0

    .line 71
    const/4 v5, -0x1

    .line 73
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    iget v2, v2, Lcom/mapabc/mapapi/core/g;->a:I

    add-int/lit8 v4, v2, 0x1

    :goto_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    iget v2, v2, Lcom/mapabc/mapapi/core/g;->a:I

    if-ge v4, v2, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapabc/mapapi/core/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapabc/mapapi/core/g;

    .line 76
    iget-object v6, v2, Lcom/mapabc/mapapi/core/g;->b:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    mul-double/2addr v6, v11

    iget-object v2, v2, Lcom/mapabc/mapapi/core/g;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v0, v2

    move-wide/from16 v17, v0

    mul-double v17, v17, v13

    add-double v6, v6, v17

    add-double/2addr v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double v17, v11, v11

    mul-double v19, v13, v13

    add-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    div-double v6, v6, v17

    .line 79
    cmpl-double v2, v6, v8

    if-lez v2, :cond_4

    move v2, v4

    move-wide/from16 v21, v6

    move-wide/from16 v5, v21

    .line 74
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-wide v8, v5

    move v5, v2

    goto :goto_1

    .line 85
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mapabc/mapapi/core/f;->c:D

    cmpl-double v2, v8, v6

    if-ltz v2, :cond_2

    .line 86
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mapabc/mapapi/core/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v3

    :goto_3
    move v3, v2

    .line 90
    goto/16 :goto_0

    .line 88
    :cond_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_3

    .line 92
    :cond_3
    return-object v10

    :cond_4
    move v2, v5

    move-wide v5, v8

    goto :goto_2
.end method
