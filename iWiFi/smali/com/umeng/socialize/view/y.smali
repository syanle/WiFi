.class Lcom/umeng/socialize/view/y;
.super Lcom/umeng/socialize/location/b;
.source "CommentPostDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/q;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/q;Lcom/umeng/socialize/location/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/y;->a:Lcom/umeng/socialize/view/q;

    .line 535
    invoke-direct {p0, p2}, Lcom/umeng/socialize/location/b;-><init>(Lcom/umeng/socialize/location/a;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/location/Location;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-super {p0, p1}, Lcom/umeng/socialize/location/b;->onPostExecute(Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/umeng/socialize/view/y;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v0, p1}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/view/q;Landroid/location/Location;)V

    .line 546
    iget-object v0, p0, Lcom/umeng/socialize/view/y;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/view/q;Z)V

    .line 547
    if-nez p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/umeng/socialize/view/y;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u5730\u7406\u4f4d\u7f6e\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/view/y;->a(Landroid/location/Location;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Lcom/umeng/socialize/location/b;->onPreExecute()V

    .line 539
    iget-object v0, p0, Lcom/umeng/socialize/view/y;->a:Lcom/umeng/socialize/view/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/view/q;Z)V

    .line 540
    return-void
.end method
