.class Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/PullToRefreshGridAdapter;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

.field private visibleItemCount:I


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iput p2, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->firstVisibleItem:I

    iput p3, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->visibleItemCount:I

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

    # getter for: Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;
    invoke-static {v1}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->access$300(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)Lcom/mob/tools/gui/ScrollableGridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->onScroll(Lcom/mob/tools/gui/Scrollable;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/mob/tools/gui/PullToRefreshGridAdapter;->fling:Z
    invoke-static {v1, v0}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->access$002(Lcom/mob/tools/gui/PullToRefreshGridAdapter;Z)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

    # getter for: Lcom/mob/tools/gui/PullToRefreshGridAdapter;->osListener:Lcom/mob/tools/gui/OnListStopScrollListener;
    invoke-static {v0}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->access$100(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

    # getter for: Lcom/mob/tools/gui/PullToRefreshGridAdapter;->osListener:Lcom/mob/tools/gui/OnListStopScrollListener;
    invoke-static {v0}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->access$100(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;

    move-result-object v0

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->firstVisibleItem:I

    iget v2, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->visibleItemCount:I

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/gui/OnListStopScrollListener;->onListStopScrolling(II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

    # getter for: Lcom/mob/tools/gui/PullToRefreshGridAdapter;->adapter:Lcom/mob/tools/gui/ListInnerAdapter;
    invoke-static {v0}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->access$200(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)Lcom/mob/tools/gui/ListInnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRefreshGridAdapter;

    # getter for: Lcom/mob/tools/gui/PullToRefreshGridAdapter;->adapter:Lcom/mob/tools/gui/ListInnerAdapter;
    invoke-static {v0}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->access$200(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)Lcom/mob/tools/gui/ListInnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/gui/ListInnerAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
