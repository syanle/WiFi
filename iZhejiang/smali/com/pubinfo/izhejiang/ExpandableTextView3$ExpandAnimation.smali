.class Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "ExpandableTextView3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ExpandableTextView3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandAnimation"
.end annotation


# instance fields
.field private final mDistance:I

.field private final mStartHeight:I

.field final synthetic this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V
    .locals 3

    .prologue
    .line 203
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    .line 204
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 206
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$0(Lcom/pubinfo/izhejiang/ExpandableTextView3;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$1(Lcom/pubinfo/izhejiang/ExpandableTextView3;)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->mStartHeight:I

    .line 208
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView3;->mCollapseHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$2(Lcom/pubinfo/izhejiang/ExpandableTextView3;)I

    move-result v0

    .line 214
    .local v0, "endHeight":I
    :goto_0
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->mStartHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->mDistance:I

    .line 215
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimationDuration:J
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$3(Lcom/pubinfo/izhejiang/ExpandableTextView3;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->setDuration(J)V

    .line 216
    new-instance v1, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView3;Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;)V

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 217
    return-void

    .line 210
    .end local v0    # "endHeight":I
    :cond_0
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView3;->mCollapseHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$2(Lcom/pubinfo/izhejiang/ExpandableTextView3;)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->mStartHeight:I

    .line 211
    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalHeight:I
    invoke-static {p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$1(Lcom/pubinfo/izhejiang/ExpandableTextView3;)I

    move-result v0

    .line 212
    .restart local v0    # "endHeight":I
    const v1, 0x7fffffff

    invoke-virtual {p1, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setMaxLines(I)V

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->mStartHeight:I

    iget v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;->mDistance:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    # invokes: Lcom/pubinfo/izhejiang/ExpandableTextView3;->changeExpanderHeight(I)V
    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$4(Lcom/pubinfo/izhejiang/ExpandableTextView3;I)V

    .line 222
    return-void
.end method
