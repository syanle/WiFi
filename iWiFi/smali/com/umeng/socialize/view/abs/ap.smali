.class Lcom/umeng/socialize/view/abs/ap;
.super Ljava/lang/Object;
.source "UserCenterItems.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ap;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ap;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Lcom/umeng/socialize/view/abs/UserCenterItems$b;Z)V

    .line 98
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 99
    return-void
.end method
