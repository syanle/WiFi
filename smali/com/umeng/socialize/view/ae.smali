.class Lcom/umeng/socialize/view/ae;
.super Ljava/lang/Object;
.source "FriendSelView.java"

# interfaces
.implements Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ab;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->g(Lcom/umeng/socialize/view/ab;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->h(Lcom/umeng/socialize/view/ab;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 158
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->b(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/b;->getCount()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/umeng/socialize/view/ab;->a(Lcom/umeng/socialize/view/ab;Ljava/util/List;)V

    .line 160
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v1}, Lcom/umeng/socialize/view/ab;->d(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/SlideBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v1}, Lcom/umeng/socialize/view/ab;->b(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/b;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v2}, Lcom/umeng/socialize/view/ab;->e(Lcom/umeng/socialize/view/ab;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v3}, Lcom/umeng/socialize/view/ab;->f(Lcom/umeng/socialize/view/ab;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/umeng/socialize/view/wigets/b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v1}, Lcom/umeng/socialize/view/ab;->b(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/view/wigets/b;->notifyDataSetChanged()V

    .line 164
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v1}, Lcom/umeng/socialize/view/ab;->d(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/SlideBar;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v2}, Lcom/umeng/socialize/view/ab;->b(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/view/wigets/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/wigets/SlideBar;->updateAlphabet(Ljava/util/List;)V

    .line 165
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v1}, Lcom/umeng/socialize/view/ab;->b(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/view/wigets/b;->getCount()I

    move-result v1

    sub-int v0, v1, v0

    .line 166
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v1}, Lcom/umeng/socialize/view/ab;->g(Lcom/umeng/socialize/view/ab;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v1}, Lcom/umeng/socialize/view/ab;->h(Lcom/umeng/socialize/view/ab;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u6210\u529f\u66f4\u65b0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u4e2a\u597d\u53cb. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->g(Lcom/umeng/socialize/view/ab;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->h(Lcom/umeng/socialize/view/ab;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u66f4\u65b0\u5931\u8d25\u4e86\uff0c\u8bf7\u91cd\u8bd5."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ab;->b(Lcom/umeng/socialize/view/ab;Ljava/util/List;)V

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->f(Lcom/umeng/socialize/view/ab;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->f(Lcom/umeng/socialize/view/ab;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    return-void

    .line 191
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 192
    const-string v2, "\u5e38"

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/umeng/socialize/bean/UMFriend;->mGroup:C

    goto :goto_0
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ab;->a(Lcom/umeng/socialize/view/ab;Ljava/util/List;)V

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ae;->a:Lcom/umeng/socialize/view/ab;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ab;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-static {}, Lcom/umeng/socialize/view/ab;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
