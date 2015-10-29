.class Lcom/umeng/socialize/view/m;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/CommentActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/CommentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/m;->a:Lcom/umeng/socialize/view/CommentActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/umeng/socialize/view/m;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/CommentActivity;->reflushData()V

    .line 324
    return-void
.end method
