.class Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;
.super Ljava/lang/Object;
.source "SlideSwitch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/view/SlideSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTransRunnable"
.end annotation


# instance fields
.field private dstX:I

.field private duration:I

.field private srcX:I

.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/view/SlideSwitch;FFI)V
    .locals 1
    .param p2, "srcX"    # F
    .param p3, "dstX"    # F
    .param p4, "duration"    # I

    .prologue
    .line 292
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    float-to-int v0, p2

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->srcX:I

    .line 294
    float-to-int v0, p3

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->dstX:I

    .line 295
    iput p4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->duration:I

    .line 296
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x2

    .line 301
    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->dstX:I

    iget v5, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->srcX:I

    if-le v4, v5, :cond_0

    move v1, v3

    .line 302
    .local v1, "patch":I
    :goto_0
    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->duration:I

    if-nez v4, :cond_1

    .line 304
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    invoke-static {v3, v7}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->access$0(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V

    .line 305
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    invoke-virtual {v3}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->postInvalidate()V

    .line 330
    :goto_1
    return-void

    .line 301
    .end local v1    # "patch":I
    :cond_0
    const/4 v1, -0x5

    goto :goto_0

    .line 309
    .restart local v1    # "patch":I
    :cond_1
    const-string v4, "SlideSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "start Animation: [ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->srcX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->dstX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->srcX:I

    add-int v2, v4, v1

    .line 311
    .local v2, "x":I
    :goto_2
    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->dstX:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v3, :cond_2

    .line 326
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->dstX:I

    invoke-static {v3, v4}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->access$1(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V

    .line 327
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    # getter for: Lcom/pubinfo/freewifialliance/view/SlideSwitch;->mDstX:I
    invoke-static {v3}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->access$2(Lcom/pubinfo/freewifialliance/view/SlideSwitch;)I

    move-result v3

    const/16 v5, 0x23

    if-le v3, v5, :cond_3

    const/4 v3, 0x1

    :goto_3
    invoke-static {v4, v3}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->access$0(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V

    .line 328
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    invoke-virtual {v3}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->postInvalidate()V

    goto :goto_1

    .line 313
    :cond_2
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    invoke-static {v4, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->access$1(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V

    .line 314
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    invoke-static {v4, v7}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->access$0(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V

    .line 315
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SlideSwitch$AnimationTransRunnable;->this$0:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    invoke-virtual {v4}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->postInvalidate()V

    .line 316
    add-int/2addr v2, v1

    .line 319
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 321
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 327
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method
