.class Lcom/umeng/socialize/view/ba;
.super Ljava/lang/Object;
.source "OauthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ay;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ay;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ba;->a:Lcom/umeng/socialize/view/ay;

    iput-object p2, p0, Lcom/umeng/socialize/view/ba;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/umeng/socialize/view/ba;->c:Landroid/view/View;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/umeng/socialize/view/ba;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/view/ba;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/umeng/socialize/view/ba;->a:Lcom/umeng/socialize/view/ay;

    invoke-static {v0}, Lcom/umeng/socialize/view/ay;->a(Lcom/umeng/socialize/view/ay;)Lcom/umeng/socialize/view/av;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->g(Lcom/umeng/socialize/view/av;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/ba;->a:Lcom/umeng/socialize/view/ay;

    invoke-static {v0}, Lcom/umeng/socialize/view/ay;->a(Lcom/umeng/socialize/view/ay;)Lcom/umeng/socialize/view/av;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->g(Lcom/umeng/socialize/view/av;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/umeng/socialize/view/ba;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ba;->a:Lcom/umeng/socialize/view/ay;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ay;->requestLayout()V

    .line 236
    return-void
.end method
