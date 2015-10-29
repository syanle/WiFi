.class Lcom/umeng/socialize/view/abs/af;
.super Ljava/lang/Object;
.source "UCenterView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/aa;

.field private final synthetic b:Lcom/umeng/socialize/view/wigets/SwitchImageView;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/wigets/SwitchImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/af;->a:Lcom/umeng/socialize/view/abs/aa;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/af;->b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/af;->b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    iget-boolean v0, v0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
