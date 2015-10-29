.class Lcom/cat/adapter/MessageListAdapter$4;
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
    iput-object p1, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iput-object p2, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$currentMsgData:Lcom/cat/data/PushListData;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0800ad

    .line 291
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lcom/cat/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 292
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v2, v2, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 293
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 294
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v2, v2, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 296
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$holder:Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    iget-object v2, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v2, v2, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 297
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 298
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/pubinfo/izhejiang/PushWebview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$currentMsgData:Lcom/cat/data/PushListData;

    invoke-virtual {v2}, Lcom/cat/data/PushListData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 302
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$currentMsgData:Lcom/cat/data/PushListData;

    invoke-virtual {v1}, Lcom/cat/data/PushListData;->getIsread()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v2, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$currentMsgData:Lcom/cat/data/PushListData;

    invoke-virtual {v2}, Lcom/cat/data/PushListData;->getPushid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cat/adapter/MessageListAdapter;->pushid:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v1, v1, Lcom/cat/adapter/MessageListAdapter;->pushid:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter$4;->val$currentMsgData:Lcom/cat/data/PushListData;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/cat/data/PushListData;->setIsread(Ljava/lang/String;)V

    .line 306
    new-instance v1, Lcom/cat/adapter/MessageListAdapter$MyThread;

    iget-object v2, p0, Lcom/cat/adapter/MessageListAdapter$4;->this$0:Lcom/cat/adapter/MessageListAdapter;

    invoke-direct {v1, v2}, Lcom/cat/adapter/MessageListAdapter$MyThread;-><init>(Lcom/cat/adapter/MessageListAdapter;)V

    invoke-virtual {v1}, Lcom/cat/adapter/MessageListAdapter$MyThread;->start()V

    .line 310
    :cond_0
    return-void
.end method
