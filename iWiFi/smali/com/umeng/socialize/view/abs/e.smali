.class Lcom/umeng/socialize/view/abs/e;
.super Ljava/lang/Object;
.source "BaseComentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/c;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/c;ILjava/util/List;Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/e;->a:Lcom/umeng/socialize/view/abs/c;

    iput p2, p0, Lcom/umeng/socialize/view/abs/e;->b:I

    iput-object p3, p0, Lcom/umeng/socialize/view/abs/e;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/umeng/socialize/view/abs/e;->d:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget v0, p0, Lcom/umeng/socialize/view/abs/e;->b:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/abs/e;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/e;->d:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/e;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;->a(Ljava/util/List;)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/e;->a:Lcom/umeng/socialize/view/abs/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/c;->a(Lcom/umeng/socialize/view/abs/c;)Lcom/umeng/socialize/view/abs/BaseComentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->a(Lcom/umeng/socialize/view/abs/BaseComentActivity;Z)V

    .line 125
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/e;->a:Lcom/umeng/socialize/view/abs/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/c;->a(Lcom/umeng/socialize/view/abs/c;)Lcom/umeng/socialize/view/abs/BaseComentActivity;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socialize/view/abs/e;->b:I

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/e;->d:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    invoke-interface {v0, v2}, Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;->a(Ljava/util/List;)V

    goto :goto_0
.end method
