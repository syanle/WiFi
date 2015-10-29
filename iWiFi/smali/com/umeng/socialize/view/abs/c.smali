.class Lcom/umeng/socialize/view/abs/c;
.super Ljava/lang/Object;
.source "BaseComentActivity.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

.field private final synthetic b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/BaseComentActivity;Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/c;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/c;->b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/c;)Lcom/umeng/socialize/view/abs/BaseComentActivity;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/c;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/util/List;Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMComment;",
            ">;",
            "Lcom/umeng/socialize/bean/SocializeEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/c;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    new-instance v1, Lcom/umeng/socialize/view/abs/e;

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/c;->b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/umeng/socialize/view/abs/e;-><init>(Lcom/umeng/socialize/view/abs/c;ILjava/util/List;Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/c;->b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;->a()V

    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/c;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->a(Lcom/umeng/socialize/view/abs/BaseComentActivity;Z)V

    .line 101
    sget-object v0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->e:Ljava/lang/String;

    const-string v1, "interrupt fetch data from net..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/c;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->a(Lcom/umeng/socialize/view/abs/BaseComentActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/view/abs/d;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/d;-><init>(Lcom/umeng/socialize/view/abs/c;)V

    .line 109
    const-wide/16 v2, 0x4e20

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    return-void
.end method
