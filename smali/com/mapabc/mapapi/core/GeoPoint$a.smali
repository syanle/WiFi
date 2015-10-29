.class public Lcom/mapabc/mapapi/core/GeoPoint$a;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/GeoPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput p1, p0, Lcom/mapabc/mapapi/core/GeoPoint$a;->a:I

    .line 373
    iput p2, p0, Lcom/mapabc/mapapi/core/GeoPoint$a;->b:I

    .line 374
    return-void
.end method
