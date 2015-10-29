.class Lcom/umeng/socialize/view/ag;
.super Ljava/lang/Object;
.source "FriendSelView.java"

# interfaces
.implements Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ab;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ag;->a:Lcom/umeng/socialize/view/ab;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 268
    sget-boolean v0, Lcom/umeng/socialize/view/ab;->b:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/umeng/socialize/view/ag;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->d(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/SlideBar;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/wigets/SlideBar;->setVisibility(I)V

    .line 271
    :cond_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
