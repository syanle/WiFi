.class public Lcom/cat/adapter/MessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/cat/protocol/DoReadPushInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/adapter/MessageListAdapter$MyThread;,
        Lcom/cat/adapter/MessageListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mExpandedArray:Landroid/util/SparseBooleanArray;

.field private msgDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/PushListData;",
            ">;"
        }
    .end annotation
.end field

.field pushid:Ljava/lang/String;

.field protected wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/PushListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PushListData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/cat/adapter/MessageListAdapter;->mExpandedArray:Landroid/util/SparseBooleanArray;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cat/adapter/MessageListAdapter;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 36
    iput-object p2, p0, Lcom/cat/adapter/MessageListAdapter;->msgDataList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$1(Lcom/cat/adapter/MessageListAdapter;)Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter;->mExpandedArray:Landroid/util/SparseBooleanArray;

    return-object v0
.end method


# virtual methods
.method public doReadPushErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 445
    return-void
.end method

.method public doReadPushSucc(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 439
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter;->msgDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/cat/data/PushListData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cat/adapter/MessageListAdapter;->msgDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/PushListData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cat/adapter/MessageListAdapter;->getItem(I)Lcom/cat/data/PushListData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 429
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 428
    iput-object v1, p0, Lcom/cat/adapter/MessageListAdapter;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/cat/adapter/MessageListAdapter;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 432
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f0a0011

    const v7, 0x7f0800ad

    const v6, 0x7f080005

    .line 71
    if-nez p2, :cond_2

    .line 72
    new-instance v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cat/adapter/MessageListAdapter$ViewHolder;-><init>(Lcom/cat/adapter/MessageListAdapter;)V

    .line 73
    .local v1, "holder":Lcom/cat/adapter/MessageListAdapter$ViewHolder;
    iget-object v3, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 74
    const v4, 0x7f030015

    const/4 v5, 0x0

    .line 73
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    const v3, 0x7f0a0067

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 77
    iput-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    .line 81
    const v3, 0x7f0a006a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    iput-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTime:Landroid/widget/TextView;

    .line 84
    const v3, 0x7f0a0068

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    iput-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f0a0069

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pubinfo/izhejiang/ExpandableTextView2;

    .line 86
    iput-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    .line 97
    invoke-virtual {p2, v8, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 111
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cat/adapter/MessageListAdapter;->getItem(I)Lcom/cat/data/PushListData;

    move-result-object v0

    .line 112
    .local v0, "currentMsgData":Lcom/cat/data/PushListData;
    const v2, 0x7f0200ad

    .line 114
    .local v2, "typeIconID":I
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    invoke-virtual {v0}, Lcom/cat/data/PushListData;->getIsread()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 117
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 116
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 118
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 119
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    iget-object v4, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 121
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 131
    :cond_0
    :goto_1
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cat/data/PushListData;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cat/data/PushListData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    invoke-virtual {v0}, Lcom/cat/data/PushListData;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v0}, Lcom/cat/data/PushListData;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "push_text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    .line 170
    new-instance v4, Lcom/cat/adapter/MessageListAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/cat/adapter/MessageListAdapter$1;-><init>(Lcom/cat/adapter/MessageListAdapter;I)V

    .line 169
    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setOnExpandListener(Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;)Lcom/pubinfo/izhejiang/ExpandableTextView2;

    move-result-object v3

    .line 185
    new-instance v4, Lcom/cat/adapter/MessageListAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/cat/adapter/MessageListAdapter$2;-><init>(Lcom/cat/adapter/MessageListAdapter;I)V

    .line 184
    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setOnCollapseListener(Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;)Lcom/pubinfo/izhejiang/ExpandableTextView2;

    move-result-object v3

    .line 194
    new-instance v4, Lcom/cat/adapter/MessageListAdapter$3;

    invoke-direct {v4, p0, v1, v0}, Lcom/cat/adapter/MessageListAdapter$3;-><init>(Lcom/cat/adapter/MessageListAdapter;Lcom/cat/adapter/MessageListAdapter$ViewHolder;Lcom/cat/data/PushListData;)V

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    :cond_1
    :goto_2
    return-object p2

    .line 99
    .end local v0    # "currentMsgData":Lcom/cat/data/PushListData;
    .end local v1    # "holder":Lcom/cat/adapter/MessageListAdapter$ViewHolder;
    .end local v2    # "typeIconID":I
    :cond_2
    invoke-virtual {p2, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;

    .line 100
    .restart local v1    # "holder":Lcom/cat/adapter/MessageListAdapter$ViewHolder;
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    const v4, 0x7f0a0012

    .line 101
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {v3, v4, v5}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setTag(ILjava/lang/Object;)V

    .line 102
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    iget-object v4, p0, Lcom/cat/adapter/MessageListAdapter;->mExpandedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setExpanded(Z)V

    goto/16 :goto_0

    .line 122
    .restart local v0    # "currentMsgData":Lcom/cat/data/PushListData;
    .restart local v2    # "typeIconID":I
    :cond_3
    invoke-virtual {v0}, Lcom/cat/data/PushListData;->getIsread()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 124
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 125
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 126
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    iget-object v4, p0, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 127
    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 276
    :cond_4
    invoke-virtual {v0}, Lcom/cat/data/PushListData;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "push_url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    const-string v4, "END"

    invoke-static {v4}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 278
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setSingleLine(Z)V

    .line 283
    iget-object v3, v1, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

    new-instance v4, Lcom/cat/adapter/MessageListAdapter$4;

    invoke-direct {v4, p0, v1, v0}, Lcom/cat/adapter/MessageListAdapter$4;-><init>(Lcom/cat/adapter/MessageListAdapter;Lcom/cat/adapter/MessageListAdapter$ViewHolder;Lcom/cat/data/PushListData;)V

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method
