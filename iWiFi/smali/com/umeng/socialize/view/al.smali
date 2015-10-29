.class Lcom/umeng/socialize/view/al;
.super Landroid/os/Handler;
.source "LoginAgent.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ak;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/al;->a:Lcom/umeng/socialize/view/ak;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/view/al;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    .line 59
    :cond_0
    return-void
.end method
