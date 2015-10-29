.class Lcom/umeng/socialize/controller/impl/r;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/r;->b:Lcom/umeng/socialize/controller/impl/b;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/r;->c:Landroid/content/Context;

    .line 1660
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->b:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/r;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/b;->h(Landroid/content/Context;)I

    move-result v0

    .line 1665
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/r;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/r;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->cleanStatisticsData(Landroid/content/Context;Z)V

    .line 1668
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/r;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
