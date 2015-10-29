.class Lcom/umeng/socialize/view/bp;
.super Lcom/umeng/socialize/view/ab;
.source "ShareActivity.java"


# instance fields
.field final synthetic c:Lcom/umeng/socialize/view/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bp;->c:Lcom/umeng/socialize/view/ShareActivity;

    .line 278
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/ab;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/umeng/socialize/view/ab;->a()V

    .line 282
    iget-object v0, p0, Lcom/umeng/socialize/view/bp;->c:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->b(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/view/ab;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/ab;->setVisibility(I)V

    .line 283
    return-void
.end method
