.class Lcom/umeng/socialize/view/abs/ae;
.super Ljava/lang/Object;
.source "UCenterView.java"

# interfaces
.implements Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/ad;

.field private final synthetic b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

.field private final synthetic c:Lcom/umeng/socialize/bean/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/ad;Lcom/umeng/socialize/view/wigets/SwitchImageView;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ae;->a:Lcom/umeng/socialize/view/abs/ad;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/ae;->b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    iput-object p3, p0, Lcom/umeng/socialize/view/abs/ae;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ae;->a:Lcom/umeng/socialize/view/abs/ad;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/ad;->a(Lcom/umeng/socialize/view/abs/ad;)Lcom/umeng/socialize/view/abs/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public a(Lcom/umeng/socom/net/o$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ae;->a:Lcom/umeng/socialize/view/abs/ad;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/ad;->a(Lcom/umeng/socialize/view/abs/ad;)Lcom/umeng/socialize/view/abs/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ae;->b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    iput-boolean v2, v0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 192
    sget-object v0, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    if-ne p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ae;->a:Lcom/umeng/socialize/view/abs/ad;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/ad;->a(Lcom/umeng/socialize/view/abs/ad;)Lcom/umeng/socialize/view/abs/aa;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->i(Lcom/umeng/socialize/view/abs/aa;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ae;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/abs/aa$a;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa$a;->c:Landroid/widget/ImageView;

    .line 195
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ae;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    iget v1, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ae;->a:Lcom/umeng/socialize/view/abs/ad;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/ad;->a(Lcom/umeng/socialize/view/abs/ad;)Lcom/umeng/socialize/view/abs/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/aa;->a()V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ae;->a:Lcom/umeng/socialize/view/abs/ad;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/ad;->a(Lcom/umeng/socialize/view/abs/ad;)Lcom/umeng/socialize/view/abs/aa;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ae;->b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    .line 198
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/wigets/SwitchImageView;Z)V

    goto :goto_0
.end method
