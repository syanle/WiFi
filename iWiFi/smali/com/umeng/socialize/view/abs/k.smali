.class Lcom/umeng/socialize/view/abs/k;
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
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/k;->a:Lcom/umeng/socialize/view/abs/g;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/k;->b:Landroid/os/Handler;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/k;)Lcom/umeng/socialize/view/abs/g;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/k;->a:Lcom/umeng/socialize/view/abs/g;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/k;->b:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/socialize/view/abs/l;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/l;-><init>(Lcom/umeng/socialize/view/abs/k;)V

    .line 145
    const-wide/16 v2, 0x3e8

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/k;->a:Lcom/umeng/socialize/view/abs/g;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/g;->b:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/k;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/g;->e(Lcom/umeng/socialize/view/abs/g;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->openShare(Landroid/app/Activity;Z)V

    .line 147
    return-void
.end method
