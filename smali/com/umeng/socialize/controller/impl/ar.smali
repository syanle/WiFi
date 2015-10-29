.class Lcom/umeng/socialize/controller/impl/ar;
.super Ljava/lang/Object;
.source "UMAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/UMAsyncTask;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/UMAsyncTask;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/ar;->a:Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/ar;->b:Landroid/os/Handler;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/ar;)Lcom/umeng/socialize/controller/impl/UMAsyncTask;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ar;->a:Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ar;->a:Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ar;->b:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/socialize/controller/impl/as;

    invoke-direct {v2, p0, v0}, Lcom/umeng/socialize/controller/impl/as;-><init>(Lcom/umeng/socialize/controller/impl/ar;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
