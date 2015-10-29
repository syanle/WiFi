.class Lcom/umeng/socialize/view/l;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/CommentActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/CommentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/l;->a:Lcom/umeng/socialize/view/CommentActivity;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/umeng/socialize/view/l;->a:Lcom/umeng/socialize/view/CommentActivity;

    new-instance v1, Lcom/umeng/socialize/view/q;

    iget-object v2, p0, Lcom/umeng/socialize/view/l;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v3, p0, Lcom/umeng/socialize/view/l;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v3}, Lcom/umeng/socialize/view/CommentActivity;->l(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/view/q;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/CommentActivity;->a(Lcom/umeng/socialize/view/CommentActivity;Lcom/umeng/socialize/view/q;)V

    .line 315
    iget-object v0, p0, Lcom/umeng/socialize/view/l;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/CommentActivity;->m(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/q;->show()V

    .line 316
    return-void
.end method
