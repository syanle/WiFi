.class public Lcom/baidu/mapapi/search/busline/BusLineSearch;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/busline/BusLineSearch$1;,
        Lcom/baidu/mapapi/search/busline/BusLineSearch$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/platform/comapi/b/d;

.field private b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/b/d;

    iput-object v2, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->c:Z

    new-instance v0, Lcom/baidu/platform/comapi/b/d;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/b/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/b/d;

    iget-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/b/d;

    new-instance v1, Lcom/baidu/mapapi/search/busline/BusLineSearch$a;

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapapi/search/busline/BusLineSearch$a;-><init>(Lcom/baidu/mapapi/search/busline/BusLineSearch;Lcom/baidu/mapapi/search/busline/BusLineSearch$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/d;->a(Lcom/baidu/platform/comapi/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/busline/BusLineSearch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/busline/BusLineSearch;)Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    return-object v0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/busline/BusLineSearch;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/a;->a()Lcom/baidu/mapapi/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/a;->b()V

    new-instance v0, Lcom/baidu/mapapi/search/busline/BusLineSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/busline/BusLineSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->c:Z

    iput-object v1, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    iget-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/b/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/b/d;->a()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/b/d;

    invoke-static {}, Lcom/baidu/mapapi/a;->a()Lcom/baidu/mapapi/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/a;->c()V

    goto :goto_0
.end method

.method public searchBusLine(Lcom/baidu/mapapi/search/busline/BusLineSearchOption;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/b/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "searcher has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "option or city or uid can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/b/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOnGetBusLineSearchResultListener(Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    return-void
.end method
