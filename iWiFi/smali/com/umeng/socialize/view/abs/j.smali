.class Lcom/umeng/socialize/view/abs/j;
.super Ljava/lang/Object;
.source "EntityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/i;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/i;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/j;->a:Lcom/umeng/socialize/view/abs/i;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/j;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/j;->a:Lcom/umeng/socialize/view/abs/i;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/i;->a(Lcom/umeng/socialize/view/abs/i;)Lcom/umeng/socialize/view/abs/g;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/g;->b:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/j;->a:Lcom/umeng/socialize/view/abs/i;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/i;->a(Lcom/umeng/socialize/view/abs/i;)Lcom/umeng/socialize/view/abs/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/j;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->likeChange(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    .line 131
    return-void
.end method
