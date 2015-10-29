.class Lcom/cat/picture/ClipZoomImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClipZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/picture/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/picture/ClipZoomImageView;


# direct methods
.method constructor <init>(Lcom/cat/picture/ClipZoomImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    .line 80
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v7, 0x10

    const/4 v6, 0x1

    .line 83
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # getter for: Lcom/cat/picture/ClipZoomImageView;->isAutoScale:Z
    invoke-static {v2}, Lcom/cat/picture/ClipZoomImageView;->access$3(Lcom/cat/picture/ClipZoomImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    :goto_0
    return v6

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 87
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 88
    .local v1, "y":F
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    invoke-virtual {v2}, Lcom/cat/picture/ClipZoomImageView;->getScale()F

    move-result v2

    # getter for: Lcom/cat/picture/ClipZoomImageView;->SCALE_MID:F
    invoke-static {}, Lcom/cat/picture/ClipZoomImageView;->access$4()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    .line 90
    new-instance v3, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;

    iget-object v4, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # getter for: Lcom/cat/picture/ClipZoomImageView;->SCALE_MID:F
    invoke-static {}, Lcom/cat/picture/ClipZoomImageView;->access$4()F

    move-result v5

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;-><init>(Lcom/cat/picture/ClipZoomImageView;FFF)V

    .line 89
    invoke-virtual {v2, v3, v7, v8}, Lcom/cat/picture/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    invoke-static {v2, v6}, Lcom/cat/picture/ClipZoomImageView;->access$2(Lcom/cat/picture/ClipZoomImageView;Z)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    .line 94
    new-instance v3, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;

    iget-object v4, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    iget-object v5, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # getter for: Lcom/cat/picture/ClipZoomImageView;->initScale:F
    invoke-static {v5}, Lcom/cat/picture/ClipZoomImageView;->access$5(Lcom/cat/picture/ClipZoomImageView;)F

    move-result v5

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;-><init>(Lcom/cat/picture/ClipZoomImageView;FFF)V

    .line 93
    invoke-virtual {v2, v3, v7, v8}, Lcom/cat/picture/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$1;->this$0:Lcom/cat/picture/ClipZoomImageView;

    invoke-static {v2, v6}, Lcom/cat/picture/ClipZoomImageView;->access$2(Lcom/cat/picture/ClipZoomImageView;Z)V

    goto :goto_0
.end method
