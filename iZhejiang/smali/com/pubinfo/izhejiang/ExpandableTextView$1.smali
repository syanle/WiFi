.class Lcom/pubinfo/izhejiang/ExpandableTextView$1;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ExpandableTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ExpandableTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$0(Lcom/pubinfo/izhejiang/ExpandableTextView;)I

    move-result v0

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView;->MIN_LINE_NUM:I
    invoke-static {}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$1()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView;->MAX_LINE_NUM:I
    invoke-static {}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$3(Lcom/pubinfo/izhejiang/ExpandableTextView;I)V

    .line 46
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$0(Lcom/pubinfo/izhejiang/ExpandableTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView;->setMaxLines(I)V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$4(Lcom/pubinfo/izhejiang/ExpandableTextView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$4(Lcom/pubinfo/izhejiang/ExpandableTextView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 54
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView;->MIN_LINE_NUM:I
    invoke-static {}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$3(Lcom/pubinfo/izhejiang/ExpandableTextView;I)V

    .line 49
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;->this$0:Lcom/pubinfo/izhejiang/ExpandableTextView;

    # getter for: Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ExpandableTextView;->access$0(Lcom/pubinfo/izhejiang/ExpandableTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView;->setMaxLines(I)V

    goto :goto_0
.end method
