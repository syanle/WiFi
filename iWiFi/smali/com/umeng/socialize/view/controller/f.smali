.class Lcom/umeng/socialize/view/controller/f;
.super Ljava/lang/Object;
.source "UserCenterController.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/UserCenterController;

.field private final synthetic b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/f;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    iput-object p2, p0, Lcom/umeng/socialize/view/controller/f;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeUser;)V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    .line 161
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->b(Lcom/umeng/socialize/view/controller/UserCenterController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/db/OauthHelper;->getAuthenticatedPlatform(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 163
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 164
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->c(Lcom/umeng/socialize/view/controller/UserCenterController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    :cond_1
    if-ne p1, v6, :cond_5

    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeUser;->mAccounts:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeUser;->mLoginAccount:Lcom/umeng/socialize/bean/SnsAccount;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    iget-object v1, p2, Lcom/umeng/socialize/bean/SocializeUser;->mLoginAccount:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/bean/SnsAccount;)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    invoke-static {v0, p2}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/bean/SocializeUser;)V

    .line 181
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_3

    .line 182
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/f;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-ne p1, v6, :cond_6

    sget-object v0, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    :goto_2
    invoke-interface {v1, v0}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    sget-object v1, Lcom/umeng/socialize/view/controller/UserCenterController$a;->b:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V

    .line 186
    return-void

    .line 164
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 165
    iget-object v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    .line 166
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    .line 168
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mUsid:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->b(Lcom/umeng/socialize/view/controller/UserCenterController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_1

    .line 183
    :cond_6
    sget-object v0, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    goto :goto_2
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    sget-object v1, Lcom/umeng/socialize/view/controller/UserCenterController$a;->a:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V

    .line 153
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/f;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a()V

    .line 156
    :cond_0
    return-void
.end method
