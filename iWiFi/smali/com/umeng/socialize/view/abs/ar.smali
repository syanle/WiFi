.class Lcom/umeng/socialize/view/abs/ar;
.super Ljava/lang/Object;
.source "UserCenterItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ar;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ar;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Lcom/umeng/socialize/view/abs/UserCenterItems$b;Z)V

    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ar;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->d(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ar;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->d(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 139
    :cond_0
    return-void
.end method
