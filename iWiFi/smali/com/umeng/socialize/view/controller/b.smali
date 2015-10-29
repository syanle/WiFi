.class Lcom/umeng/socialize/view/controller/b;
.super Ljava/lang/Object;
.source "ShareAtController.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/ShareAtController;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/ShareAtController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 173
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->e(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/db/b;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->c(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/db/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 181
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 182
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->e(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/db/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/db/b;->a(Ljava/util/List;)V

    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->d(Lcom/umeng/socialize/view/controller/ShareAtController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    :goto_2
    return-void

    .line 182
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 183
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->d(Lcom/umeng/socialize/view/controller/ShareAtController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    invoke-static {}, Lcom/umeng/socialize/view/controller/ShareAtController;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update friends failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 186
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 187
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 189
    :goto_3
    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/UMFriend;->setAlive(Z)V

    .line 191
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {}, Lcom/umeng/socialize/view/controller/ShareAtController;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unlive "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 188
    goto :goto_3

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->d(Lcom/umeng/socialize/view/controller/ShareAtController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->f(Lcom/umeng/socialize/view/controller/ShareAtController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/b;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->d(Lcom/umeng/socialize/view/controller/ShareAtController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    return-void
.end method
