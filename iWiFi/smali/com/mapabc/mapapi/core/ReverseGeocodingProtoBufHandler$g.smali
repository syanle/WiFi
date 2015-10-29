.class Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;
.super Ljava/lang/Object;
.source "ReverseGeocodingProtoBufHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field public a:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;

.field public b:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;

.field public c:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/s$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->a:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;

    .line 379
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->b:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;

    .line 380
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->c:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->d:Ljava/util/List;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->e:Ljava/util/List;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->f:Ljava/util/List;

    return-void
.end method
