.class public Lcom/mapabc/mapapi/core/a;
.super Ljava/lang/Object;
.source "ClickHandlerWrapper.java"


# instance fields
.field private a:Lcom/mapabc/mapapi/map/RouteMessageHandler;

.field private b:I

.field private c:I

.field private d:Lcom/mapabc/mapapi/map/MapView;

.field private e:Lcom/mapabc/mapapi/map/RouteOverlay;


# direct methods
.method public constructor <init>(Lcom/mapabc/mapapi/map/MapView;Lcom/mapabc/mapapi/map/RouteMessageHandler;Lcom/mapabc/mapapi/map/RouteOverlay;II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mapabc/mapapi/core/a;->d:Lcom/mapabc/mapapi/map/MapView;

    .line 20
    iput-object p2, p0, Lcom/mapabc/mapapi/core/a;->a:Lcom/mapabc/mapapi/map/RouteMessageHandler;

    .line 21
    iput p5, p0, Lcom/mapabc/mapapi/core/a;->b:I

    .line 22
    iput p4, p0, Lcom/mapabc/mapapi/core/a;->c:I

    .line 23
    iput-object p3, p0, Lcom/mapabc/mapapi/core/a;->e:Lcom/mapabc/mapapi/map/RouteOverlay;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/mapabc/mapapi/core/a;)Lcom/mapabc/mapapi/map/MapView;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mapabc/mapapi/core/a;->d:Lcom/mapabc/mapapi/map/MapView;

    return-object v0
.end method

.method static synthetic b(Lcom/mapabc/mapapi/core/a;)Lcom/mapabc/mapapi/map/RouteOverlay;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mapabc/mapapi/core/a;->e:Lcom/mapabc/mapapi/map/RouteOverlay;

    return-object v0
.end method

.method static synthetic c(Lcom/mapabc/mapapi/core/a;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/mapabc/mapapi/core/a;->c:I

    return v0
.end method

.method static synthetic d(Lcom/mapabc/mapapi/core/a;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/mapabc/mapapi/core/a;->b:I

    return v0
.end method

.method static synthetic e(Lcom/mapabc/mapapi/core/a;)Lcom/mapabc/mapapi/map/RouteMessageHandler;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mapabc/mapapi/core/a;->a:Lcom/mapabc/mapapi/map/RouteMessageHandler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/mapabc/mapapi/core/a$1;

    invoke-direct {v0, p0}, Lcom/mapabc/mapapi/core/a$1;-><init>(Lcom/mapabc/mapapi/core/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
