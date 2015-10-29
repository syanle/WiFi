.class Lcom/umeng/socialize/view/cg;
.super Ljava/lang/Object;
.source "ShareBoard.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/cf;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/cf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/cg;->a:Lcom/umeng/socialize/view/cf;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/umeng/socialize/view/cg;->a:Lcom/umeng/socialize/view/cf;

    invoke-static {v0}, Lcom/umeng/socialize/view/cf;->a(Lcom/umeng/socialize/view/cf;)Lcom/umeng/socialize/view/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ce;->dismiss()V

    .line 140
    invoke-static {}, Lcom/umeng/socialize/view/ce;->a()Lcom/umeng/socialize/view/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/socialize/view/ce;->a()Lcom/umeng/socialize/view/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/aj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    invoke-static {}, Lcom/umeng/socialize/view/ce;->a()Lcom/umeng/socialize/view/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/aj;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOauthComplete(Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/umeng/socialize/view/cg;->a:Lcom/umeng/socialize/view/cf;

    invoke-static {v0}, Lcom/umeng/socialize/view/cf;->a(Lcom/umeng/socialize/view/cf;)Lcom/umeng/socialize/view/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ce;->dismiss()V

    .line 128
    invoke-static {}, Lcom/umeng/socialize/view/ce;->a()Lcom/umeng/socialize/view/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/socialize/view/ce;->a()Lcom/umeng/socialize/view/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/aj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    invoke-static {}, Lcom/umeng/socialize/view/ce;->a()Lcom/umeng/socialize/view/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/aj;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
