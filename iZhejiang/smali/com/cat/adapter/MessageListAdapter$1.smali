.class Lcom/cat/adapter/MessageListAdapter$1;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;


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
    iput-object p1, p0, Lcom/cat/adapter/MessageListAdapter$1;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iput p2, p0, Lcom/cat/adapter/MessageListAdapter$1;->val$position:I

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V
    .locals 4
    .param p1, "parent"    # Lcom/pubinfo/izhejiang/ExpandableTextView2;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$1;->this$0:Lcom/cat/adapter/MessageListAdapter;

    # getter for: Lcom/cat/adapter/MessageListAdapter;->mExpandedArray:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/cat/adapter/MessageListAdapter;->access$1(Lcom/cat/adapter/MessageListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$1;->this$0:Lcom/cat/adapter/MessageListAdapter;

    # getter for: Lcom/cat/adapter/MessageListAdapter;->mExpandedArray:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/cat/adapter/MessageListAdapter;->access$1(Lcom/cat/adapter/MessageListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 174
    if-lt v0, v1, :cond_1

    .line 179
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$1;->this$0:Lcom/cat/adapter/MessageListAdapter;

    .line 180
    invoke-virtual {v1}, Lcom/cat/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 181
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$1;->this$0:Lcom/cat/adapter/MessageListAdapter;

    # getter for: Lcom/cat/adapter/MessageListAdapter;->mExpandedArray:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/cat/adapter/MessageListAdapter;->access$1(Lcom/cat/adapter/MessageListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v2, p0, Lcom/cat/adapter/MessageListAdapter$1;->val$position:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 182
    return-void

    .line 176
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$1;->this$0:Lcom/cat/adapter/MessageListAdapter;

    # getter for: Lcom/cat/adapter/MessageListAdapter;->mExpandedArray:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/cat/adapter/MessageListAdapter;->access$1(Lcom/cat/adapter/MessageListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
