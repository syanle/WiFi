.class Lcom/umeng/socialize/view/abs/aw;
.super Ljava/lang/Object;
.source "UserCenterItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/UserCenterItems$c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/aw;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aw;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aw;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->a:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 419
    :cond_0
    return-void
.end method
