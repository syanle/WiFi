.class Lcom/umeng/socialize/view/abs/v;
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
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/v;->a:Lcom/umeng/socialize/view/abs/s;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 66
    return-void
.end method
