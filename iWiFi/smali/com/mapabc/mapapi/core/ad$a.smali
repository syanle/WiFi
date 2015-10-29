.class Lcom/mapabc/mapapi/core/ad$a;
.super Ljava/lang/Object;
.source "XmlObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ad$a;->a:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/mapabc/mapapi/core/ad$a;->b:Ljava/lang/Object;

    .line 227
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ad$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ad$a;->b:Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ad$a;->b:Ljava/lang/Object;

    return-object v0
.end method
