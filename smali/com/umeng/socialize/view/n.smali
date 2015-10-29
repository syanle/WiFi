.class Lcom/umeng/socialize/view/n;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/CommentActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/CommentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/n;->a:Lcom/umeng/socialize/view/CommentActivity;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/umeng/socialize/view/n;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/CommentActivity;->k(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 331
    iget-object v1, p0, Lcom/umeng/socialize/view/n;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v1, v1, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/view/n;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v1, v1, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/view/n;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v1, v1, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMComment;

    .line 336
    invoke-static {}, Lcom/umeng/socialize/common/SocializeUtils;->isGoogleMapExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/umeng/socialize/view/n;->a:Lcom/umeng/socialize/view/CommentActivity;

    const-class v3, Lcom/umeng/socialize/view/CommentDetail;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    :goto_1
    const-string v2, "Comment"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lcom/umeng/socialize/view/n;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/CommentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 340
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/umeng/socialize/view/n;->a:Lcom/umeng/socialize/view/CommentActivity;

    const-class v3, Lcom/umeng/socialize/view/CommentDetailNoMap;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1
.end method
