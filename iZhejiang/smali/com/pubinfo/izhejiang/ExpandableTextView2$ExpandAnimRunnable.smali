.class Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimRunnable;
.super Ljava/lang/Object;
.source "ExpandableTextView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ExpandableTextView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandAnimRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimRunnable;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimRunnable;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    new-instance v1, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimRunnable;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    invoke-direct {v1, v2}, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    return-void
.end method
