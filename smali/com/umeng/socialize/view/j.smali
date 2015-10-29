.class Lcom/umeng/socialize/view/j;
.super Lcom/umeng/socialize/view/ci;
.source "CommentActivity.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/CommentActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/CommentActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/j;->a:Lcom/umeng/socialize/view/CommentActivity;

    .line 277
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/ci;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 281
    invoke-super {p0}, Lcom/umeng/socialize/view/ci;->a()V

    .line 282
    iget-object v2, p0, Lcom/umeng/socialize/view/j;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, p0, Lcom/umeng/socialize/view/j;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/CommentActivity;->j(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    move-result-object v3

    .line 283
    iget-object v0, p0, Lcom/umeng/socialize/view/j;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 282
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/umeng/socialize/view/CommentActivity;->fetchFormNet(Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;J)V

    .line 284
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/j;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/view/j;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v1, v1, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMComment;

    iget-wide v0, v0, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/umeng/socialize/view/ci;->b()V

    .line 289
    iget-object v0, p0, Lcom/umeng/socialize/view/j;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/CommentActivity;->k(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/umeng/socialize/view/j;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/CommentActivity;->k(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setSelection(I)V

    .line 291
    return-void
.end method
