.class public Lcom/umeng/socom/net/m;
.super Lcom/umeng/socom/net/r;
.source "ReportClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socom/net/m$a;,
        Lcom/umeng/socom/net/m$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/umeng/socom/net/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/socom/net/n;)Lcom/umeng/socom/net/o$a;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/umeng/socom/net/o;

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socom/net/m;->a(Lcom/umeng/socom/net/s;Ljava/lang/Class;)Lcom/umeng/socom/net/t;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/o;

    .line 40
    if-nez v0, :cond_0

    sget-object v0, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/umeng/socom/net/o;->a:Lcom/umeng/socom/net/o$a;

    goto :goto_0
.end method

.method public a(Lcom/umeng/socom/net/n;Lcom/umeng/socom/net/m$a;)V
    .locals 2

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Lcom/umeng/socom/net/m$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/socom/net/m$b;-><init>(Lcom/umeng/socom/net/m;Lcom/umeng/socom/net/n;Lcom/umeng/socom/net/m$a;)V

    .line 61
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/umeng/socom/net/m$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    if-eqz p2, :cond_0

    .line 64
    sget-object v0, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    invoke-interface {p2, v0}, Lcom/umeng/socom/net/m$a;->a(Lcom/umeng/socom/net/o$a;)V

    goto :goto_0
.end method
