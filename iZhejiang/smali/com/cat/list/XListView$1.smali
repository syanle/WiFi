.class Lcom/cat/list/XListView$1;
.super Ljava/lang/Object;
.source "XListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/list/XListView;->initWithContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/list/XListView;


# direct methods
.method constructor <init>(Lcom/cat/list/XListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/list/XListView$1;->this$0:Lcom/cat/list/XListView;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cat/list/XListView$1;->this$0:Lcom/cat/list/XListView;

    iget-object v1, p0, Lcom/cat/list/XListView$1;->this$0:Lcom/cat/list/XListView;

    # getter for: Lcom/cat/list/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cat/list/XListView;->access$0(Lcom/cat/list/XListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cat/list/XListView;->access$1(Lcom/cat/list/XListView;I)V

    .line 104
    iget-object v0, p0, Lcom/cat/list/XListView$1;->this$0:Lcom/cat/list/XListView;

    invoke-virtual {v0}, Lcom/cat/list/XListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 106
    return-void
.end method
