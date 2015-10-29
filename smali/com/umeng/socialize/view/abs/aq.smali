.class Lcom/umeng/socialize/view/abs/aq;
.super Ljava/lang/Object;
.source "UserCenterItems.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/aq;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aq;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aq;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->b(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Lcom/umeng/socialize/bean/SnsPlatform;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/aq;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    invoke-static {v2}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->c(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Lcom/umeng/socialize/bean/SnsPlatform;Z)V

    .line 105
    return-void
.end method
