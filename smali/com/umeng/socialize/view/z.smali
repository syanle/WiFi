.class Lcom/umeng/socialize/view/z;
.super Ljava/lang/Object;
.source "CommentPostDialog.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/q$a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/q$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/z;->a:Lcom/umeng/socialize/view/q$a;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 178
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/umeng/socialize/view/z;->a:Lcom/umeng/socialize/view/q$a;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/q$a;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/umeng/socialize/view/z;->a:Lcom/umeng/socialize/view/q$a;

    iget-object v0, v0, Lcom/umeng/socialize/view/q$a;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/view/z;->a:Lcom/umeng/socialize/view/q$a;

    iget-object v1, v1, Lcom/umeng/socialize/view/q$a;->g:Lcom/umeng/socialize/bean/SnsPlatform;

    iget v1, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/umeng/socialize/view/z;->a:Lcom/umeng/socialize/view/q$a;

    iget-object v0, v0, Lcom/umeng/socialize/view/q$a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
