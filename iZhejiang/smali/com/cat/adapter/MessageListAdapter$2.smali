.class Lcom/cat/adapter/MessageListAdapter$2;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/adapter/MessageListAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cat/adapter/MessageListAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/adapter/MessageListAdapter$2;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iput p2, p0, Lcom/cat/adapter/MessageListAdapter$2;->val$position:I

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapse(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V
    .locals 3
    .param p1, "parent"    # Lcom/pubinfo/izhejiang/ExpandableTextView2;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$2;->this$0:Lcom/cat/adapter/MessageListAdapter;

    # getter for: Lcom/cat/adapter/MessageListAdapter;->mExpandedArray:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/cat/adapter/MessageListAdapter;->access$1(Lcom/cat/adapter/MessageListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/cat/adapter/MessageListAdapter$2;->val$position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 193
    return-void
.end method
