.class Lcom/umeng/socialize/view/k;
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
    iput-object p1, p0, Lcom/umeng/socialize/view/k;->a:Lcom/umeng/socialize/view/CommentActivity;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/umeng/socialize/view/k;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/CommentActivity;->finish()V

    .line 303
    return-void
.end method
