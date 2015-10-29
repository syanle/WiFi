.class public Lcom/cat/adapter/DownloadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DownloadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private downloadList:Landroid/widget/ListView;

.field private downloadManager:Lcom/ta/util/download/DownloadManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cat/adapter/DownloadListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/cat/adapter/DownloadListAdapter;->downloadList:Landroid/widget/ListView;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cat/adapter/DownloadListAdapter;->dataList:Ljava/util/ArrayList;

    .line 32
    invoke-static {}, Lcom/ta/util/download/DownloadManager;->getDownloadManager()Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cat/adapter/DownloadListAdapter;->downloadManager:Lcom/ta/util/download/DownloadManager;

    .line 33
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter;->downloadManager:Lcom/ta/util/download/DownloadManager;

    new-instance v1, Lcom/cat/adapter/DownloadListAdapter$1;

    invoke-direct {v1, p0}, Lcom/cat/adapter/DownloadListAdapter$1;-><init>(Lcom/cat/adapter/DownloadListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/ta/util/download/DownloadManager;->setDownLoadCallback(Lcom/ta/util/download/DownLoadCallback;)V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/cat/adapter/DownloadListAdapter;)Lcom/ta/util/download/DownloadManager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter;->downloadManager:Lcom/ta/util/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cat/adapter/DownloadListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cat/adapter/DownloadListAdapter;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter;->downloadList:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cat/adapter/DownloadListAdapter;->addItem(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public addItem(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isPaused"    # Z

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/cat/adapter/DownloadListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/cat/adapter/DownloadListAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 111
    iget-object v3, p0, Lcom/cat/adapter/DownloadListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 112
    const v4, 0x7f03000c

    const/4 v5, 0x0

    .line 111
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/cat/adapter/DownloadListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 116
    .local v0, "itemData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    new-instance v2, Lcom/cat/adapter/ViewHolder;

    invoke-direct {v2, p2}, Lcom/cat/adapter/ViewHolder;-><init>(Landroid/view/View;)V

    .line 119
    .local v2, "viewHolder":Lcom/cat/adapter/ViewHolder;
    invoke-virtual {v2, v0}, Lcom/cat/adapter/ViewHolder;->setData(Ljava/util/HashMap;)V

    .line 121
    iget-object v3, v2, Lcom/cat/adapter/ViewHolder;->continueButton:Landroid/widget/Button;

    new-instance v4, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;

    .line 122
    invoke-direct {v4, p0, v1, v2}, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;-><init>(Lcom/cat/adapter/DownloadListAdapter;Ljava/lang/String;Lcom/cat/adapter/ViewHolder;)V

    .line 121
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v3, v2, Lcom/cat/adapter/ViewHolder;->pauseButton:Landroid/widget/Button;

    new-instance v4, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;

    .line 124
    invoke-direct {v4, p0, v1, v2}, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;-><init>(Lcom/cat/adapter/DownloadListAdapter;Ljava/lang/String;Lcom/cat/adapter/ViewHolder;)V

    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, v2, Lcom/cat/adapter/ViewHolder;->deleteButton:Landroid/widget/Button;

    new-instance v4, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;

    .line 126
    invoke-direct {v4, p0, v1, v2}, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;-><init>(Lcom/cat/adapter/DownloadListAdapter;Ljava/lang/String;Lcom/cat/adapter/ViewHolder;)V

    .line 125
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-object p2
.end method

.method public removeItem(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cat/adapter/DownloadListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 104
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/cat/adapter/DownloadListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/cat/adapter/DownloadListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Lcom/cat/adapter/DownloadListAdapter;->notifyDataSetChanged()V

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
