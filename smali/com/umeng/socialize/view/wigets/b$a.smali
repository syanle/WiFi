.class final Lcom/umeng/socialize/view/wigets/b$a;
.super Landroid/widget/Filter;
.source "AlphabetIndexAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/wigets/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/wigets/b;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/view/wigets/b;)V
    .locals 1

    .prologue
    .line 202
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/b$a;->b:Z

    .line 204
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/umeng/socialize/view/wigets/b$a;->b:Z

    .line 208
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    .line 213
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 216
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    invoke-static {v1}, Lcom/umeng/socialize/view/wigets/b;->a(Lcom/umeng/socialize/view/wigets/b;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    invoke-static {v1}, Lcom/umeng/socialize/view/wigets/b;->b(Lcom/umeng/socialize/view/wigets/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    :goto_0
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 242
    return-object v3

    .line 220
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 224
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/b;->b(Lcom/umeng/socialize/view/wigets/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 228
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v5, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/b;->b(Lcom/umeng/socialize/view/wigets/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 232
    iget-object v6, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    invoke-virtual {v6, v0, v4}, Lcom/umeng/socialize/view/wigets/b;->a(Lcom/umeng/socialize/bean/UMFriend;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 233
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/umeng/socialize/view/wigets/b;->a(Lcom/umeng/socialize/view/wigets/b;Ljava/util/List;)V

    .line 251
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/b;->notifyDataSetChanged()V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b$a;->a:Lcom/umeng/socialize/view/wigets/b;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/b;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
