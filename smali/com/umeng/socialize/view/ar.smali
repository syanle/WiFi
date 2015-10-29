.class Lcom/umeng/socialize/view/ar;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/aq;

.field private final synthetic b:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/aq;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ar;->a:Lcom/umeng/socialize/view/aq;

    iput-object p2, p0, Lcom/umeng/socialize/view/ar;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/view/ar;->a:Lcom/umeng/socialize/view/aq;

    invoke-static {v0}, Lcom/umeng/socialize/view/aq;->a(Lcom/umeng/socialize/view/aq;)Lcom/umeng/socialize/view/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    .line 199
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 188
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/view/ar;->a:Lcom/umeng/socialize/view/aq;

    invoke-static {v0}, Lcom/umeng/socialize/view/aq;->a(Lcom/umeng/socialize/view/aq;)Lcom/umeng/socialize/view/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/ar;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ar;->a:Lcom/umeng/socialize/view/aq;

    invoke-static {v0}, Lcom/umeng/socialize/view/aq;->a(Lcom/umeng/socialize/view/aq;)Lcom/umeng/socialize/view/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/umeng/socialize/view/ar;->a:Lcom/umeng/socialize/view/aq;

    invoke-static {v0}, Lcom/umeng/socialize/view/aq;->a(Lcom/umeng/socialize/view/aq;)Lcom/umeng/socialize/view/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    .line 184
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/umeng/socialize/view/ar;->a:Lcom/umeng/socialize/view/aq;

    invoke-static {v0}, Lcom/umeng/socialize/view/aq;->a(Lcom/umeng/socialize/view/aq;)Lcom/umeng/socialize/view/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->b()V

    .line 204
    return-void
.end method
