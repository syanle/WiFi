.class Lcom/umeng/socialize/view/abs/b;
.super Ljava/lang/Object;
.source "BaseComentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

.field private final synthetic b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/BaseComentActivity;Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/b;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/b;->b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/b;->b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;->a()V

    .line 77
    new-instance v0, Lcom/umeng/socialize/db/a;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/b;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    invoke-direct {v0, v1}, Lcom/umeng/socialize/db/a;-><init>(Landroid/content/Context;)V

    .line 78
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/b;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    iget-object v1, v1, Lcom/umeng/socialize/view/abs/BaseComentActivity;->f:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/db/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/b;->a:Lcom/umeng/socialize/view/abs/BaseComentActivity;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/b;->b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->fetchFormNet(Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;J)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/b;->b:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    invoke-interface {v1, v0}, Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;->a(Ljava/util/List;)V

    goto :goto_0
.end method
