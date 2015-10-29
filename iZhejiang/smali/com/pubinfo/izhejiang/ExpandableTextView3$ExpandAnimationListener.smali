.class Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;
.super Ljava/lang/Object;
.source "ExpandableTextView3.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ExpandableTextView3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;


# direct methods
.method private constructor <init>(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubinfo/izhejiang/ExpandableTextView3;Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$5(Lcom/pubinfo/izhejiang/ExpandableTextView3;Z)V

    .line 245
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$0(Lcom/pubinfo/izhejiang/ExpandableTextView3;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$6(Lcom/pubinfo/izhejiang/ExpandableTextView3;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setMaxLines(I)V

    .line 247
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    # invokes: Lcom/pubinfo/izhejiang/ExpandableTextView3;->toggleOnCollapseListener()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$7(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    # invokes: Lcom/pubinfo/izhejiang/ExpandableTextView3;->toggleOnExpandListener()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$8(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 240
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->access$5(Lcom/pubinfo/izhejiang/ExpandableTextView3;Z)V

    .line 235
    return-void
.end method
