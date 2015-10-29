.class Lcom/umeng/socialize/view/g;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/f;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/g;->a:Lcom/umeng/socialize/view/f;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/umeng/socialize/view/g;->a:Lcom/umeng/socialize/view/f;

    invoke-static {v0}, Lcom/umeng/socialize/view/f;->a(Lcom/umeng/socialize/view/f;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/CommentActivity;->commentsChanged()V

    .line 164
    iget-object v0, p0, Lcom/umeng/socialize/view/g;->a:Lcom/umeng/socialize/view/f;

    invoke-static {v0}, Lcom/umeng/socialize/view/f;->a(Lcom/umeng/socialize/view/f;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/CommentActivity;->a(Lcom/umeng/socialize/view/CommentActivity;)V

    .line 165
    iget-object v0, p0, Lcom/umeng/socialize/view/g;->a:Lcom/umeng/socialize/view/f;

    invoke-static {v0}, Lcom/umeng/socialize/view/f;->a(Lcom/umeng/socialize/view/f;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/CommentActivity;->b(Lcom/umeng/socialize/view/CommentActivity;)V

    .line 166
    return-void
.end method
