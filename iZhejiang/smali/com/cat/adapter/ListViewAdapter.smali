.class public Lcom/cat/adapter/ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/adapter/ListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field private viewHolder:Lcom/cat/adapter/ListViewAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/Person;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/cat/adapter/ListViewAdapter;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/cat/adapter/ListViewAdapter;->list:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cat/adapter/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cat/adapter/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/Person;

    invoke-virtual {v1}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "item":Ljava/lang/String;
    new-instance v1, Lcom/cat/adapter/ListViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v3}, Lcom/cat/adapter/ListViewAdapter$ViewHolder;-><init>(Lcom/cat/adapter/ListViewAdapter;Lcom/cat/adapter/ListViewAdapter$ViewHolder;)V

    iput-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->viewHolder:Lcom/cat/adapter/ListViewAdapter$ViewHolder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 53
    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030012

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v2, p0, Lcom/cat/adapter/ListViewAdapter;->viewHolder:Lcom/cat/adapter/ListViewAdapter$ViewHolder;

    .line 56
    const v1, 0x7f0a0062

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    invoke-static {v2, v1}, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->access$1(Lcom/cat/adapter/ListViewAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 65
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 66
    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->viewHolder:Lcom/cat/adapter/ListViewAdapter$ViewHolder;

    # getter for: Lcom/cat/adapter/ListViewAdapter$ViewHolder;->indexTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->access$4(Lcom/cat/adapter/ListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/Person;

    invoke-virtual {v1}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    return-object p2

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030014

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    iget-object v2, p0, Lcom/cat/adapter/ListViewAdapter;->viewHolder:Lcom/cat/adapter/ListViewAdapter$ViewHolder;

    .line 61
    const v1, 0x7f0a0064

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    invoke-static {v2, v1}, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->access$2(Lcom/cat/adapter/ListViewAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 62
    iget-object v2, p0, Lcom/cat/adapter/ListViewAdapter;->viewHolder:Lcom/cat/adapter/ListViewAdapter$ViewHolder;

    .line 63
    const v1, 0x7f0a0065

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    invoke-static {v2, v1}, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->access$3(Lcom/cat/adapter/ListViewAdapter$ViewHolder;Landroid/widget/TextView;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->viewHolder:Lcom/cat/adapter/ListViewAdapter$ViewHolder;

    # getter for: Lcom/cat/adapter/ListViewAdapter$ViewHolder;->itemTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->access$5(Lcom/cat/adapter/ListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/Person;

    invoke-virtual {v1}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->viewHolder:Lcom/cat/adapter/ListViewAdapter$ViewHolder;

    # getter for: Lcom/cat/adapter/ListViewAdapter$ViewHolder;->itemTv_code:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->access$6(Lcom/cat/adapter/ListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/cat/adapter/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/Person;

    invoke-virtual {v1}, Lcom/cat/data/Person;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cat/adapter/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/Person;

    invoke-virtual {v0}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
