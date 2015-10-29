.class public Lcom/mapabc/mapapi/core/o;
.super Ljava/lang/Object;
.source "MapServerUrl.java"


# static fields
.field private static h:Lcom/mapabc/mapapi/core/o;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mapabc/mapapi/core/o;-><init>(Lcom/mapabc/mapapi/core/m;)V

    .line 7
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/m;)V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "http://emap.mapabc.com"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->a:Ljava/lang/String;

    .line 48
    const-string v0, "http://tm.mapabc.com"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->b:Ljava/lang/String;

    .line 49
    const-string v0, "http://search1.mapabc.com:80"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->c:Ljava/lang/String;

    .line 51
    const-string v0, "http://ds.mapabc.com:8888"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->d:Ljava/lang/String;

    .line 52
    const-string v0, "http://si.mapabc.com"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->e:Ljava/lang/String;

    .line 54
    const-string v0, "http://tmds.mapabc.com"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->f:Ljava/lang/String;

    .line 55
    const-string v0, "http://apis.mapabc.com/sisserver"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->g:Ljava/lang/String;

    .line 10
    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$h;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$h;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->d:Ljava/lang/String;

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$i;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$i;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->f:Ljava/lang/String;

    .line 22
    :cond_1
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$f;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$f;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->c:Ljava/lang/String;

    .line 27
    :cond_2
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$f;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$f;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29
    iget-object v0, p1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/m$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/o;->g:Ljava/lang/String;

    .line 33
    :cond_3
    return-void
.end method

.method public static declared-synchronized a()Lcom/mapabc/mapapi/core/o;
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/mapabc/mapapi/core/o;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/mapabc/mapapi/core/o;->a(Lcom/mapabc/mapapi/core/m;)Lcom/mapabc/mapapi/core/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/mapabc/mapapi/core/m;)Lcom/mapabc/mapapi/core/o;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/mapabc/mapapi/core/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mapabc/mapapi/core/o;->h:Lcom/mapabc/mapapi/core/o;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/mapabc/mapapi/core/o;

    invoke-direct {v0, p0}, Lcom/mapabc/mapapi/core/o;-><init>(Lcom/mapabc/mapapi/core/m;)V

    sput-object v0, Lcom/mapabc/mapapi/core/o;->h:Lcom/mapabc/mapapi/core/o;

    .line 43
    :cond_0
    sget-object v0, Lcom/mapabc/mapapi/core/o;->h:Lcom/mapabc/mapapi/core/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mapabc/mapapi/core/o;->e:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mapabc/mapapi/core/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mapabc/mapapi/core/o;->f:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mapabc/mapapi/core/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mapabc/mapapi/core/o;->a:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mapabc/mapapi/core/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mapabc/mapapi/core/o;->b:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mapabc/mapapi/core/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mapabc/mapapi/core/o;->c:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mapabc/mapapi/core/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mapabc/mapapi/core/o;->d:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mapabc/mapapi/core/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mapabc/mapapi/core/o;->d:Ljava/lang/String;

    return-object v0
.end method
