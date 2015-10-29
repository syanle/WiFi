.class public Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "AroundMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/AroundMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoreAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field business_url:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapCustom;",
            ">;"
        }
    .end annotation
.end field

.field distance:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDownloader:Lcom/cat/list/ImageDownloader;

.field private mInflater:Landroid/view/LayoutInflater;

.field name:Ljava/lang/String;

.field s_photo_url:Ljava/lang/String;

.field final synthetic this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapCustom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapCustom;>;"
    iput-object p1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 341
    iput-object p2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->mContext:Landroid/content/Context;

    .line 342
    iput-object p3, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    .line 343
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 344
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)Lcom/pubinfo/izhejiang/AroundMoreActivity;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 358
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 364
    if-nez p2, :cond_1

    .line 365
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 366
    new-instance v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;-><init>(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)V

    .line 368
    .local v6, "holder":Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;
    const v0, 0x7f0a00aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 367
    iput-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->ImageView01:Landroid/widget/ImageView;

    .line 370
    const v0, 0x7f0a00ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 369
    iput-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->TextView01:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f0a00ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 371
    iput-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->TextView02:Landroid/widget/TextView;

    .line 374
    const v0, 0x7f0a00ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 373
    iput-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->TextView03:Landroid/widget/TextView;

    .line 376
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/MapCustom;

    invoke-virtual {v0}, Lcom/cat/data/MapCustom;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->name:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/MapCustom;

    invoke-virtual {v0}, Lcom/cat/data/MapCustom;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->address:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/MapCustom;

    invoke-virtual {v0}, Lcom/cat/data/MapCustom;->getDistance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->distance:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/MapCustom;

    invoke-virtual {v0}, Lcom/cat/data/MapCustom;->getS_photo_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->s_photo_url:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/MapCustom;

    invoke-virtual {v0}, Lcom/cat/data/MapCustom;->getBusiness_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->business_url:Ljava/lang/String;

    .line 387
    iget-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->TextView01:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->TextView02:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->TextView03:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8ddd\u79bb"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    new-instance v0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;-><init>(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->s_photo_url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->s_photo_url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    iget-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->ImageView01:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->s_photo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->mDownloader:Lcom/cat/list/ImageDownloader;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lcom/cat/list/ImageDownloader;

    invoke-direct {v0}, Lcom/cat/list/ImageDownloader;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->mDownloader:Lcom/cat/list/ImageDownloader;

    .line 410
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->mDownloader:Lcom/cat/list/ImageDownloader;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->s_photo_url:Ljava/lang/String;

    iget-object v2, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->ImageView01:Landroid/widget/ImageView;

    .line 411
    const-string v3, "/Awifi"

    iget-object v4, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$2;

    invoke-direct {v5, p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$2;-><init>(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)V

    .line 410
    invoke-virtual/range {v0 .. v5}, Lcom/cat/list/ImageDownloader;->imageDownload2(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Lcom/cat/list/OnImageDownload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_1
    return-object p2

    .line 378
    .end local v6    # "holder":Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;

    .restart local v6    # "holder":Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;
    goto/16 :goto_0

    .line 436
    :cond_2
    iget-object v0, v6, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$ViewHolder;->ImageView01:Landroid/widget/ImageView;

    .line 437
    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 432
    :catch_0
    move-exception v0

    goto :goto_1
.end method
