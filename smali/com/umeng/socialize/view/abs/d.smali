.class Lcom/umeng/socialize/view/abs/d;
.super Ljava/lang/Object;
.source "BaseComentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/d;->a:Lcom/umeng/socialize/view/abs/c;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/d;->a:Lcom/umeng/socialize/view/abs/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/c;->a(Lcom/umeng/socialize/view/abs/c;)Lcom/umeng/socialize/view/abs/BaseComentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->b(Lcom/umeng/socialize/view/abs/BaseComentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/d;->a:Lcom/umeng/socialize/view/abs/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/c;->a(Lcom/umeng/socialize/view/abs/c;)Lcom/umeng/socialize/view/abs/BaseComentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->a(Lcom/umeng/socialize/view/abs/BaseComentActivity;Z)V

    .line 108
    :cond_0
    return-void
.end method
