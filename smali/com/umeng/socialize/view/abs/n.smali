.class Lcom/umeng/socialize/view/abs/n;
.super Ljava/lang/Object;
.source "EntityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/g;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/n;->a:Lcom/umeng/socialize/view/abs/g;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/n;->a:Lcom/umeng/socialize/view/abs/g;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/g;->b:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/n;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->openComment(Landroid/content/Context;Z)V

    .line 171
    return-void
.end method
