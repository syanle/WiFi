.class Lcom/umeng/socialize/view/ap;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Lcom/umeng/socialize/view/abs/SocialPopupDialog$SwitchListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ak;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ap;->a:Lcom/umeng/socialize/view/ak;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/view/ap;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/view/ap;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->dissmiss()V

    .line 138
    :cond_0
    return-void
.end method
