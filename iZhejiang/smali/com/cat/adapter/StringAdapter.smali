.class public Lcom/cat/adapter/StringAdapter;
.super Landroid/widget/BaseAdapter;
.source "StringAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private taFileCacheWork:Lcom/ta/util/cache/TAFileCacheWork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ta/util/cache/TAFileCacheWork",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ta/TAApplication;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "application"    # Lcom/ta/TAApplication;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Lcom/ta/util/cache/TAFileCacheWork;

    invoke-direct {v0}, Lcom/ta/util/cache/TAFileCacheWork;-><init>()V

    iput-object v0, p0, Lcom/cat/adapter/StringAdapter;->taFileCacheWork:Lcom/ta/util/cache/TAFileCacheWork;

    .line 28
    iget-object v0, p0, Lcom/cat/adapter/StringAdapter;->taFileCacheWork:Lcom/ta/util/cache/TAFileCacheWork;

    new-instance v1, Lcom/cat/util/stringcache/TAStringCallBackHandler;

    invoke-direct {v1}, Lcom/cat/util/stringcache/TAStringCallBackHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ta/util/cache/TAFileCacheWork;->setCallBackHandler(Lcom/ta/util/cache/TACallBackHandler;)V

    .line 29
    iget-object v0, p0, Lcom/cat/adapter/StringAdapter;->taFileCacheWork:Lcom/ta/util/cache/TAFileCacheWork;

    new-instance v1, Lcom/cat/util/stringcache/TAProcessStringHandler;

    invoke-direct {v1}, Lcom/cat/util/stringcache/TAProcessStringHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ta/util/cache/TAFileCacheWork;->setProcessDataHandler(Lcom/ta/util/cache/TAProcessDataHandler;)V

    .line 30
    iget-object v0, p0, Lcom/cat/adapter/StringAdapter;->taFileCacheWork:Lcom/ta/util/cache/TAFileCacheWork;

    invoke-virtual {p2}, Lcom/ta/TAApplication;->getFileCache()Lcom/ta/util/cache/TAFileCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ta/util/cache/TAFileCacheWork;->setFileCache(Lcom/ta/util/cache/TAFileCache;)V

    .line 31
    iput-object p1, p0, Lcom/cat/adapter/StringAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/cat/data/StringUrls;->stringUrls:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    sget-object v0, Lcom/cat/data/StringUrls;->stringUrls:[Ljava/lang/String;

    aget-object v0, v0, p1

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    iget-object v3, p0, Lcom/cat/adapter/StringAdapter;->mContext:Landroid/content/Context;

    .line 60
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    check-cast v1, Landroid/view/LayoutInflater;

    .line 61
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030035

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "baseView":Landroid/view/View;
    const v3, 0x7f0a00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/cat/adapter/StringAdapter;->taFileCacheWork:Lcom/ta/util/cache/TAFileCacheWork;

    invoke-virtual {p0, p1}, Lcom/cat/adapter/StringAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/ta/util/cache/TAFileCacheWork;->loadFormCache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    return-object v0
.end method
