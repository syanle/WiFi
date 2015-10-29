.class Lcom/umeng/socialize/view/az;
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
    iput-object p1, p0, Lcom/umeng/socialize/view/az;->a:Lcom/umeng/socialize/view/ay;

    iput-object p2, p0, Lcom/umeng/socialize/view/az;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/umeng/socialize/view/az;->c:Landroid/view/View;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 215
    iget-object v0, p0, Lcom/umeng/socialize/view/az;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/view/az;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/view/az;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/az;->a:Lcom/umeng/socialize/view/ay;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ay;->requestLayout()V

    .line 220
    return-void
.end method
