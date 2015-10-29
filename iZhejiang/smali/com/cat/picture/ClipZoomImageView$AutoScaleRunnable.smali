.class Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;
.super Ljava/lang/Object;
.source "ClipZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/picture/ClipZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScaleRunnable"
.end annotation


# static fields
.field static final BIGGER:F = 1.07f

.field static final SMALLER:F = 0.93f


# instance fields
.field private mTargetScale:F

.field final synthetic this$0:Lcom/cat/picture/ClipZoomImageView;

.field private tmpScale:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/cat/picture/ClipZoomImageView;FFF)V
    .locals 2
    .param p2, "targetScale"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    .line 130
    iput p3, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->x:F

    .line 131
    iput p4, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->y:F

    .line 132
    invoke-virtual {p1}, Lcom/cat/picture/ClipZoomImageView;->getScale()F

    move-result v0

    iget v1, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 133
    const v0, 0x3f88f5c3    # 1.07f

    iput v0, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    const v0, 0x3f6e147b    # 0.93f

    iput v0, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 143
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # getter for: Lcom/cat/picture/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/cat/picture/ClipZoomImageView;->access$0(Lcom/cat/picture/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    iget v4, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    iget v5, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->x:F

    iget v6, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 144
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # invokes: Lcom/cat/picture/ClipZoomImageView;->checkBorder()V
    invoke-static {v2}, Lcom/cat/picture/ClipZoomImageView;->access$1(Lcom/cat/picture/ClipZoomImageView;)V

    .line 145
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    iget-object v3, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # getter for: Lcom/cat/picture/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/cat/picture/ClipZoomImageView;->access$0(Lcom/cat/picture/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cat/picture/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 147
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    invoke-virtual {v2}, Lcom/cat/picture/ClipZoomImageView;->getScale()F

    move-result v0

    .line 149
    .local v0, "currentScale":F
    iget v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    iget v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 150
    :cond_0
    iget v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_2

    iget v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_2

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    const-wide/16 v3, 0x10

    invoke-virtual {v2, p0, v3, v4}, Lcom/cat/picture/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_2
    iget v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    div-float v1, v2, v0

    .line 156
    .local v1, "deltaScale":F
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # getter for: Lcom/cat/picture/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/cat/picture/ClipZoomImageView;->access$0(Lcom/cat/picture/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->x:F

    iget v4, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 157
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # invokes: Lcom/cat/picture/ClipZoomImageView;->checkBorder()V
    invoke-static {v2}, Lcom/cat/picture/ClipZoomImageView;->access$1(Lcom/cat/picture/ClipZoomImageView;)V

    .line 158
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    iget-object v3, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    # getter for: Lcom/cat/picture/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/cat/picture/ClipZoomImageView;->access$0(Lcom/cat/picture/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cat/picture/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 159
    iget-object v2, p0, Lcom/cat/picture/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/cat/picture/ClipZoomImageView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cat/picture/ClipZoomImageView;->access$2(Lcom/cat/picture/ClipZoomImageView;Z)V

    goto :goto_0
.end method
