.class Lcom/umeng/socialize/view/cj;
.super Ljava/lang/Object;
.source "SocializeFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ci;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ci;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/cj;->a:Lcom/umeng/socialize/view/ci;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/umeng/socialize/view/ci$a;->c:Lcom/umeng/socialize/view/ci$a;

    iget-object v1, p0, Lcom/umeng/socialize/view/cj;->a:Lcom/umeng/socialize/view/ci;

    invoke-static {v1}, Lcom/umeng/socialize/view/ci;->a(Lcom/umeng/socialize/view/ci;)Lcom/umeng/socialize/view/ci$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/view/cj;->a:Lcom/umeng/socialize/view/ci;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ci;->a()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    sget-object v0, Lcom/umeng/socialize/view/ci$a;->d:Lcom/umeng/socialize/view/ci$a;

    iget-object v1, p0, Lcom/umeng/socialize/view/cj;->a:Lcom/umeng/socialize/view/ci;

    invoke-static {v1}, Lcom/umeng/socialize/view/ci;->a(Lcom/umeng/socialize/view/ci;)Lcom/umeng/socialize/view/ci$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/view/cj;->a:Lcom/umeng/socialize/view/ci;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ci;->b()V

    goto :goto_0
.end method
