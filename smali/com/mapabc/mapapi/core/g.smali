.class public Lcom/mapabc/mapapi/core/g;
.super Ljava/lang/Object;
.source "DouglasPoint.java"


# instance fields
.field public a:I

.field public b:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/g;->a:I

    .line 10
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/g;->a:I

    .line 13
    iput p1, p0, Lcom/mapabc/mapapi/core/g;->a:I

    .line 14
    iput-object p2, p0, Lcom/mapabc/mapapi/core/g;->b:Landroid/graphics/Point;

    .line 15
    return-void
.end method
