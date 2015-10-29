.class Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;
.super Ljava/lang/Object;
.source "ExpandableTextView2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ExpandableTextView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;


# direct methods
.method private constructor <init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$5(Lcom/pubinfo/izhejiang/ExpandableTextView2;Z)V

    .line 388
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$0(Lcom/pubinfo/izhejiang/ExpandableTextView2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$6(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMaxLines(I)V

    .line 393
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    # invokes: Lcom/pubinfo/izhejiang/ExpandableTextView2;->toggleOnCollapseListener()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$7(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    # invokes: Lcom/pubinfo/izhejiang/ExpandableTextView2;->toggleOnExpandListener()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$8(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 382
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->access$5(Lcom/pubinfo/izhejiang/ExpandableTextView2;Z)V

    .line 377
    return-void
.end method
