.class Lcom/umeng/socialize/view/d;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/CommentActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/CommentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/d;->a:Lcom/umeng/socialize/view/CommentActivity;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->a:Lcom/umeng/socialize/view/CommentActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/socialize/view/CommentActivity;->d:Z

    .line 355
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->a:Lcom/umeng/socialize/view/CommentActivity;

    const/4 v1, -0x1

    iput v1, v0, Lcom/umeng/socialize/view/CommentActivity;->c:I

    .line 356
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->a:Lcom/umeng/socialize/view/CommentActivity;

    iput-object p1, v0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    .line 357
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/CommentActivity;->commentsChanged()V

    .line 358
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/CommentActivity;->b(Lcom/umeng/socialize/view/CommentActivity;)V

    .line 359
    return-void
.end method
