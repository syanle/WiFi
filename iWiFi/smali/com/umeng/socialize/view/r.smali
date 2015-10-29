.class Lcom/umeng/socialize/view/r;
.super Ljava/lang/Object;
.source "CommentPostDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/q;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/q;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/r;->a:Lcom/umeng/socialize/view/q;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/umeng/socialize/view/r;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->c(Lcom/umeng/socialize/view/q;)V

    .line 274
    return-void
.end method
