.class Lcom/umeng/socialize/view/abs/m;
.super Ljava/lang/Object;
.source "EntityView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/g;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/m;->a:Lcom/umeng/socialize/view/abs/g;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return v2

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/m;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/g;->f(Lcom/umeng/socialize/view/abs/g;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/m;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/g;->f(Lcom/umeng/socialize/view/abs/g;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
