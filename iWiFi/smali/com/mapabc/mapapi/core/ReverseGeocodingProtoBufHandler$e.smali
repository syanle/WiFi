.class Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;
.super Ljava/lang/Object;
.source "ReverseGeocodingProtoBufHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;->a:Ljava/util/List;

    return-void
.end method
