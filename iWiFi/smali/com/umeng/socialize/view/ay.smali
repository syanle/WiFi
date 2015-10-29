.class Lcom/umeng/socialize/view/ay;
.super Landroid/widget/FrameLayout;
.source "OauthDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/av;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/view/View;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/av;Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ay;->a:Lcom/umeng/socialize/view/av;

    iput-object p3, p0, Lcom/umeng/socialize/view/ay;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/umeng/socialize/view/ay;->c:Landroid/view/View;

    iput p5, p0, Lcom/umeng/socialize/view/ay;->d:I

    .line 196
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ay;)Lcom/umeng/socialize/view/av;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/umeng/socialize/view/ay;->a:Lcom/umeng/socialize/view/av;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-ge p4, p3, :cond_1

    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/view/ay;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->e(Lcom/umeng/socialize/view/av;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/view/az;

    invoke-direct {v1, p0, p2, p1}, Lcom/umeng/socialize/view/az;-><init>(Lcom/umeng/socialize/view/ay;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    if-lt p4, p3, :cond_0

    .line 226
    iget-object v0, p0, Lcom/umeng/socialize/view/ay;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->e(Lcom/umeng/socialize/view/av;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/view/ba;

    invoke-direct {v1, p0, p2, p1}, Lcom/umeng/socialize/view/ba;-><init>(Lcom/umeng/socialize/view/ay;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 200
    iget-object v0, p0, Lcom/umeng/socialize/view/ay;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->c(Lcom/umeng/socialize/view/av;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/view/ay;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/ay;->c:Landroid/view/View;

    iget v2, p0, Lcom/umeng/socialize/view/ay;->d:I

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/umeng/socialize/view/ay;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 203
    :cond_0
    return-void
.end method
