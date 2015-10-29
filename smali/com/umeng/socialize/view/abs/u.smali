.class Lcom/umeng/socialize/view/abs/u;
.super Ljava/lang/Object;
.source "ReceiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/s;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/s;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/u;->a:Lcom/umeng/socialize/view/abs/s;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/u;->a:Lcom/umeng/socialize/view/abs/s;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/s;->e()V

    .line 59
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 60
    return-void
.end method
