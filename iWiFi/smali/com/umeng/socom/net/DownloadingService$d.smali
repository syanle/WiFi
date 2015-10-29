.class Lcom/umeng/socom/net/DownloadingService$d;
.super Ljava/lang/Object;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socom/net/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Lcom/umeng/socom/net/DownloadingService$b;

.field b:Landroid/app/Notification;

.field c:I

.field d:I

.field e:Lcom/umeng/socom/net/a$a;

.field f:[J


# direct methods
.method public constructor <init>(Lcom/umeng/socom/net/a$a;I)V
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    .line 929
    iput p2, p0, Lcom/umeng/socom/net/DownloadingService$d;->c:I

    .line 930
    iput-object p1, p0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    .line 931
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 934
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 938
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    :cond_0
    return-void
.end method
