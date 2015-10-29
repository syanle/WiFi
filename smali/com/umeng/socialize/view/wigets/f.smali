.class Lcom/umeng/socialize/view/wigets/f;
.super Ljava/lang/Object;
.source "SwitchImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/wigets/SwitchImageView;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/wigets/SwitchImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/f;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/f;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a()Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/f;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    iget-boolean v0, v0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;->a(Z)V

    .line 152
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
