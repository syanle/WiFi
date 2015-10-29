.class Lcom/mapabc/mapapi/core/a$1;
.super Ljava/lang/Object;
.source "ClickHandlerWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapabc/mapapi/core/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapabc/mapapi/core/a;


# direct methods
.method constructor <init>(Lcom/mapabc/mapapi/core/a;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mapabc/mapapi/core/a$1;->a:Lcom/mapabc/mapapi/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mapabc/mapapi/core/a$1;->a:Lcom/mapabc/mapapi/core/a;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/a;->e(Lcom/mapabc/mapapi/core/a;)Lcom/mapabc/mapapi/map/RouteMessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mapabc/mapapi/core/a$1;->a:Lcom/mapabc/mapapi/core/a;

    invoke-static {v1}, Lcom/mapabc/mapapi/core/a;->a(Lcom/mapabc/mapapi/core/a;)Lcom/mapabc/mapapi/map/MapView;

    move-result-object v1

    iget-object v2, p0, Lcom/mapabc/mapapi/core/a$1;->a:Lcom/mapabc/mapapi/core/a;

    invoke-static {v2}, Lcom/mapabc/mapapi/core/a;->b(Lcom/mapabc/mapapi/core/a;)Lcom/mapabc/mapapi/map/RouteOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/mapabc/mapapi/core/a$1;->a:Lcom/mapabc/mapapi/core/a;

    invoke-static {v3}, Lcom/mapabc/mapapi/core/a;->c(Lcom/mapabc/mapapi/core/a;)I

    move-result v3

    iget-object v4, p0, Lcom/mapabc/mapapi/core/a$1;->a:Lcom/mapabc/mapapi/core/a;

    invoke-static {v4}, Lcom/mapabc/mapapi/core/a;->d(Lcom/mapabc/mapapi/core/a;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mapabc/mapapi/map/RouteMessageHandler;->onRouteEvent(Lcom/mapabc/mapapi/map/MapView;Lcom/mapabc/mapapi/map/RouteOverlay;II)Z

    .line 31
    return-void
.end method
