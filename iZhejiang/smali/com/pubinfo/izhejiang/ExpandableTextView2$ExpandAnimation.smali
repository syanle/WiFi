.class Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "ExpandableTextView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ExpandableTextView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandAnimation"
.end annotation


# instance fields
.field private final mDistance:I

.field private final mStartHeight:I

.field final synthetic this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V
    .locals 3

    .prologue
    .line 342
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    .line 343
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 345
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$0(Lcom/pubinfo/izhejiang/ExpandableTextView2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$1(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->mStartHeight:I

    .line 347
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$2(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I

    move-result v0

    .line 356
    .local v0, "endHeight":I
    :goto_0
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->mStartHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->mDistance:I

    .line 357
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimationDuration:J
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$4(Lcom/pubinfo/izhejiang/ExpandableTextView2;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->setDuration(J)V

    .line 358
    new-instance v1, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;)V

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 359
    return-void

    .line 350
    .end local v0    # "endHeight":I
    :cond_0
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$2(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I

    move-result v1

    # invokes: Lcom/pubinfo/izhejiang/ExpandableTextView2;->changeExpanderHeight(I)V
    invoke-static {p1, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$3(Lcom/pubinfo/izhejiang/ExpandableTextView2;I)V

    .line 352
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$2(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->mStartHeight:I

    .line 353
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$1(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I

    move-result v0

    .line 354
    .restart local v0    # "endHeight":I
    const v1, 0x7fffffff

    invoke-virtual {p1, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMaxLines(I)V

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->mStartHeight:I

    iget v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;->mDistance:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    # invokes: Lcom/pubinfo/izhejiang/ExpandableTextView2;->changeExpanderHeight(I)V
    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$3(Lcom/pubinfo/izhejiang/ExpandableTextView2;I)V

    .line 364
    return-void
.end method
