.class public Lcom/mapabc/mapapi/location/a$b;
.super Ljava/lang/Object;
.source "IAPSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:F

.field public c:Landroid/location/LocationListener;

.field public d:J

.field public e:Z

.field public f:Landroid/location/Location;


# direct methods
.method public constructor <init>(JFLandroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapabc/mapapi/location/a$b;->e:Z

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/location/a$b;->f:Landroid/location/Location;

    .line 281
    iput-wide p1, p0, Lcom/mapabc/mapapi/location/a$b;->a:J

    .line 282
    iput p3, p0, Lcom/mapabc/mapapi/location/a$b;->b:F

    .line 283
    iput-object p4, p0, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    .line 284
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    if-ne p0, p1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 300
    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 302
    goto :goto_0

    .line 303
    :cond_3
    check-cast p1, Lcom/mapabc/mapapi/location/a$b;

    .line 304
    iget-object v2, p0, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    if-nez v2, :cond_4

    .line 305
    iget-object v2, p1, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    if-eqz v2, :cond_0

    move v0, v1

    .line 306
    goto :goto_0

    .line 307
    :cond_4
    iget-object v2, p0, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    iget-object v3, p1, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 308
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 288
    .line 290
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 292
    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
