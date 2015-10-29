.class Lcom/umeng/socialize/view/abs/p;
.super Ljava/lang/Object;
.source "EntityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/g;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/g;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/p;->a:Lcom/umeng/socialize/view/abs/g;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/p;->b:Landroid/os/Handler;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/p;)Lcom/umeng/socialize/view/abs/g;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/p;->a:Lcom/umeng/socialize/view/abs/g;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/p;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/g;->h(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 196
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/p;->b:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/socialize/view/abs/q;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/q;-><init>(Lcom/umeng/socialize/view/abs/p;)V

    .line 201
    const-wide/16 v2, 0x3e8

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/p;->a:Lcom/umeng/socialize/view/abs/g;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/g;->b:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/p;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v4, [I

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->openUserCenter(Landroid/content/Context;[I)V

    .line 203
    return-void
.end method
