.class Lcom/umeng/socialize/view/wigets/g;
.super Ljava/lang/Object;
.source "SwitchImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/wigets/SwitchImageView;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/wigets/SwitchImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/g;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/g;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/g;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    invoke-static {v1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Lcom/umeng/socialize/view/wigets/SwitchImageView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    return-void
.end method
