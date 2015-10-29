.class Lcom/cat/adapter/MessageListAdapter$3;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$currentMsgData:Lcom/cat/data/PushListData;

.field private final synthetic val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/cat/adapter/MessageListAdapter;Lcom/cat/adapter/MessageListAdapter$ViewHolder;Lcom/cat/data/PushListData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/adapter/MessageListAdapter$3;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iput-object p2, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$currentMsgData:Lcom/cat/data/PushListData;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0800ad

    .line 198
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$3;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 201
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$3;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 204
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$3;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$currentMsgData:Lcom/cat/data/PushListData;

    invoke-virtual {v0}, Lcom/cat/data/PushListData;->getIsread()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$3;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$currentMsgData:Lcom/cat/data/PushListData;

    invoke-virtual {v1}, Lcom/cat/data/PushListData;->getPushid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cat/adapter/MessageListAdapter;->pushid:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$3;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v0, v0, Lcom/cat/adapter/MessageListAdapter;->pushid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$currentMsgData:Lcom/cat/data/PushListData;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/cat/data/PushListData;->setIsread(Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/cat/adapter/MessageListAdapter$MyThread;

    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$3;->this$0:Lcom/cat/adapter/MessageListAdapter;

    invoke-direct {v0, v1}, Lcom/cat/adapter/MessageListAdapter$MyThread;-><init>(Lcom/cat/adapter/MessageListAdapter;)V

    invoke-virtual {v0}, Lcom/cat/adapter/MessageListAdapter$MyThread;->start()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter$3;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->toggle()V

    .line 216
    return-void
.end method
