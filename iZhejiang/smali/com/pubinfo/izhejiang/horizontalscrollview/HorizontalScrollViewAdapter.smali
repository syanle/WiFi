.class public Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;
.super Ljava/lang/Object;
.source "HorizontalScrollViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/TopData;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/TopData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "mDatas":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TopData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mDatas:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "viewHolder":Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 48
    new-instance v3, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;

    .end local v3    # "viewHolder":Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;
    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;-><init>(Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;)V

    .line 49
    .restart local v3    # "viewHolder":Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;
    iget-object v5, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    const/high16 v6, 0x7f030000

    .line 49
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 52
    const v5, 0x7f0a0013

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 51
    iput-object v5, v3, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;->mImg:Landroid/widget/ImageView;

    .line 54
    const v5, 0x7f0a0014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    iput-object v5, v3, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    .line 56
    iget-object v5, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mContext:Landroid/content/Context;

    .line 57
    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 56
    check-cast v4, Landroid/view/WindowManager;

    .line 58
    .local v4, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    .local v2, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 61
    .local v1, "mScreenWitdh":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 62
    div-int/lit8 v5, v1, 0x4

    const/4 v6, -0x2

    .line 61
    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8, v7, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    .end local v0    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "mScreenWitdh":I
    .end local v2    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :goto_0
    :try_start_0
    iget-object v6, v3, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;->mImg:Landroid/widget/ImageView;

    .line 71
    iget-object v5, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cat/data/TopData;

    invoke-virtual {v5}, Lcom/cat/data/TopData;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {v5, v7}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getBusinessImage(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v6, v3, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cat/data/TopData;

    invoke-virtual {v5}, Lcom/cat/data/TopData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    return-object p2

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "viewHolder":Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;
    check-cast v3, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter$ViewHolder;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v5

    goto :goto_1
.end method
