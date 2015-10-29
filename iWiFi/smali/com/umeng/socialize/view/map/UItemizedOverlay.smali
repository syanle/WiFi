.class public Lcom/umeng/socialize/view/map/UItemizedOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "UItemizedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lcom/umeng/socialize/view/map/UItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/map/UItemizedOverlay;->mOverlays:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/umeng/socialize/view/map/UItemizedOverlay;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/umeng/socialize/view/map/UItemizedOverlay;->mOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0}, Lcom/umeng/socialize/view/map/UItemizedOverlay;->populate()V

    .line 31
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/view/map/UItemizedOverlay;->mOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method protected onTap(I)Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/socialize/view/map/UItemizedOverlay;->mOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/view/map/UItemizedOverlay;->mOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
