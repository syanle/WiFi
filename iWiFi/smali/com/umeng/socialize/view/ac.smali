.class Lcom/umeng/socialize/view/ac;
.super Ljava/lang/Object;
.source "FriendSelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ab;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ac;->a:Lcom/umeng/socialize/view/ab;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/view/ac;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->a(Lcom/umeng/socialize/view/ab;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 97
    iget-object v0, p0, Lcom/umeng/socialize/view/ac;->a:Lcom/umeng/socialize/view/ab;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ab;->a()V

    .line 98
    return-void
.end method
