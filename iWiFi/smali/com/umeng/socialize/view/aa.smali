.class Lcom/umeng/socialize/view/aa;
.super Ljava/lang/Object;
.source "CommentPostDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/q$a;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/q$a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/aa;->a:Lcom/umeng/socialize/view/q$a;

    iput-object p2, p0, Lcom/umeng/socialize/view/aa;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/view/aa;->a:Lcom/umeng/socialize/view/q$a;

    iget-boolean v0, v0, Lcom/umeng/socialize/view/q$a;->d:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/umeng/socialize/view/aa;->a:Lcom/umeng/socialize/view/q$a;

    invoke-static {v0}, Lcom/umeng/socialize/view/q$a;->a(Lcom/umeng/socialize/view/q$a;)Lcom/umeng/socialize/view/q;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/aa;->a:Lcom/umeng/socialize/view/q$a;

    iget-object v1, v1, Lcom/umeng/socialize/view/q$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v2, p0, Lcom/umeng/socialize/view/aa;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/view/q;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 205
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/aa;->a:Lcom/umeng/socialize/view/q$a;

    iget-object v0, v0, Lcom/umeng/socialize/view/q$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/view/aa;->a:Lcom/umeng/socialize/view/q$a;

    iget-object v0, v0, Lcom/umeng/socialize/view/q$a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/aa;->a:Lcom/umeng/socialize/view/q$a;

    iget-object v0, v0, Lcom/umeng/socialize/view/q$a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
