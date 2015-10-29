.class Lcom/umeng/socialize/controller/impl/as;
.super Ljava/lang/Object;
.source "UMAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/ar;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/ar;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/as;->a:Lcom/umeng/socialize/controller/impl/ar;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/as;->b:Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/as;->a:Lcom/umeng/socialize/controller/impl/ar;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/ar;->a(Lcom/umeng/socialize/controller/impl/ar;)Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/as;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
