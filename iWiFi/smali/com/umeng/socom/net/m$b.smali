.class Lcom/umeng/socom/net/m$b;
.super Landroid/os/AsyncTask;
.source "ReportClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socom/net/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/umeng/socom/net/o$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socom/net/m;

.field private b:Lcom/umeng/socom/net/n;

.field private c:Lcom/umeng/socom/net/m$a;


# direct methods
.method public constructor <init>(Lcom/umeng/socom/net/m;Lcom/umeng/socom/net/n;Lcom/umeng/socom/net/m$a;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/umeng/socom/net/m$b;->a:Lcom/umeng/socom/net/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/umeng/socom/net/m$b;->b:Lcom/umeng/socom/net/n;

    .line 82
    iput-object p3, p0, Lcom/umeng/socom/net/m$b;->c:Lcom/umeng/socom/net/m$a;

    .line 83
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/umeng/socom/net/o$a;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/umeng/socom/net/m$b;->a:Lcom/umeng/socom/net/m;

    iget-object v1, p0, Lcom/umeng/socom/net/m$b;->b:Lcom/umeng/socom/net/n;

    invoke-virtual {v0, v1}, Lcom/umeng/socom/net/m;->a(Lcom/umeng/socom/net/n;)Lcom/umeng/socom/net/o$a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/umeng/socom/net/o$a;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/umeng/socom/net/m$b;->c:Lcom/umeng/socom/net/m$a;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/umeng/socom/net/m$b;->c:Lcom/umeng/socom/net/m$a;

    invoke-interface {v0, p1}, Lcom/umeng/socom/net/m$a;->a(Lcom/umeng/socom/net/o$a;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socom/net/m$b;->a([Ljava/lang/Integer;)Lcom/umeng/socom/net/o$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socom/net/o$a;

    invoke-virtual {p0, p1}, Lcom/umeng/socom/net/m$b;->a(Lcom/umeng/socom/net/o$a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/umeng/socom/net/m$b;->c:Lcom/umeng/socom/net/m$a;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/umeng/socom/net/m$b;->c:Lcom/umeng/socom/net/m$a;

    invoke-interface {v0}, Lcom/umeng/socom/net/m$a;->a()V

    .line 90
    :cond_0
    return-void
.end method
