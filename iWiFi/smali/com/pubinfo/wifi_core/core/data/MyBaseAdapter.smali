.class public abstract Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;, "Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter<TT;>;"
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;->dataList:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;->ctx:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;, "Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;, "Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;->item:Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter;, "Lcom/pubinfo/wifi_core/core/data/MyBaseAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method
