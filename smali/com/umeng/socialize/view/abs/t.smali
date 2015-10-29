.class Lcom/umeng/socialize/view/abs/t;
.super Ljava/lang/Object;
.source "ReceiveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/s;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/s;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/t;->a:Lcom/umeng/socialize/view/abs/s;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/t;->a:Lcom/umeng/socialize/view/abs/s;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/s;->getImageBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/abs/t;->a:Lcom/umeng/socialize/view/abs/s;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/s;->getImageBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/t;->a:Lcom/umeng/socialize/view/abs/s;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/s;->a(Lcom/umeng/socialize/view/abs/s;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/t;->a:Lcom/umeng/socialize/view/abs/s;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/s;->b(Lcom/umeng/socialize/view/abs/s;)V

    goto :goto_0
.end method
