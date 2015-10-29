.class Lcn/sharesdk/sina/weibo/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/a;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    return-void
.end method
