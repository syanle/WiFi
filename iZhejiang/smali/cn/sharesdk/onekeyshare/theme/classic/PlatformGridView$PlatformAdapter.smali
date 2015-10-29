.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
.super Lcom/mob/tools/gui/ViewPagerAdapter;
.source "PlatformGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlatformAdapter"
.end annotation


# instance fields
.field private callback:Landroid/view/View$OnClickListener;

.field private girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

.field private lines:I

.field private logos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V
    .locals 12
    .param p1, "platformGridView"    # Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/mob/tools/gui/ViewPagerAdapter;-><init>()V

    .line 265
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    .line 266
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    .line 267
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;

    move-result-object v6

    .line 268
    .local v6, "platforms":[Lcn/sharesdk/framework/Platform;
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$1(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/HashMap;

    move-result-object v2

    .line 269
    .local v2, "hiddenPlatforms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 270
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 271
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v7, "ps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    array-length v10, v6

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_5

    .line 279
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v6, v9, [Lcn/sharesdk/framework/Platform;

    .line 280
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v6

    if-lt v3, v9, :cond_7

    .line 285
    .end local v3    # "i":I
    .end local v7    # "ps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    :cond_0
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_1
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$2(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    .local v1, "customers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    if-eqz v1, :cond_2

    .line 289
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;

    .line 292
    const/4 v9, 0x0

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    .line 294
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    if-eqz v9, :cond_4

    .line 295
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 296
    .local v8, "size":I
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$3(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 297
    .local v0, "PAGE_SIZE":I
    div-int v5, v8, v0

    .line 298
    .local v5, "pageCount":I
    rem-int v9, v8, v0

    if-lez v9, :cond_3

    .line 299
    add-int/lit8 v5, v5, 0x1

    .line 301
    :cond_3
    new-array v9, v5, [Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    .line 303
    .end local v0    # "PAGE_SIZE":I
    .end local v5    # "pageCount":I
    .end local v8    # "size":I
    :cond_4
    return-void

    .line 272
    .end local v1    # "customers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    .restart local v7    # "ps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    :cond_5
    aget-object v4, v6, v9

    .line 273
    .local v4, "p":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 272
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 276
    :cond_6
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 281
    .end local v4    # "p":Lcn/sharesdk/framework/Platform;
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/sharesdk/framework/Platform;

    aput-object v9, v6, v3

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    return-object v0
.end method

.method static synthetic access$1(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    array-length v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 310
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v6, v6, p1

    if-nez v6, :cond_2

    .line 311
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I
    invoke-static {v6}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$3(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v5

    .line 312
    .local v5, "pageSize":I
    mul-int v1, v5, p1

    .line 313
    .local v1, "curSize":I
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    if-nez v6, :cond_3

    const/4 v4, 0x0

    .line 314
    .local v4, "listSize":I
    :goto_0
    add-int v6, v1, v5

    if-le v6, v4, :cond_0

    .line 315
    sub-int v5, v4, v1

    .line 317
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    .line 318
    .local v2, "gridBean":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v5, :cond_4

    .line 322
    if-nez p1, :cond_1

    .line 323
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I
    invoke-static {v6}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$4(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 324
    .local v0, "COLUMN_PER_LINE":I
    array-length v6, v2

    div-int/2addr v6, v0

    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    .line 325
    array-length v6, v2

    rem-int/2addr v6, v0

    if-lez v6, :cond_1

    .line 326
    iget v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    .line 329
    .end local v0    # "COLUMN_PER_LINE":I
    :cond_1
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    new-instance v7, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    invoke-direct {v7, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)V

    aput-object v7, v6, p1

    .line 330
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v6, v6, p1

    iget v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    invoke-virtual {v6, v7, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setData(I[Ljava/lang/Object;)V

    .line 333
    .end local v1    # "curSize":I
    .end local v2    # "gridBean":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "listSize":I
    .end local v5    # "pageSize":I
    :cond_2
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v6, v6, p1

    return-object v6

    .line 313
    .restart local v1    # "curSize":I
    .restart local v5    # "pageSize":I
    :cond_3
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 319
    .restart local v2    # "gridBean":[Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v4    # "listSize":I
    :cond_4
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    add-int v7, v1, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v3

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onScreenChange(II)V
    .locals 4
    .param p1, "currentScreen"    # I
    .param p2, "lastScreen"    # I

    .prologue
    .line 338
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$5(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Landroid/widget/ImageView;

    move-result-object v1

    .line 339
    .local v1, "points":[Landroid/widget/ImageView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 343
    aget-object v2, v1, p1

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$7(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    return-void

    .line 340
    :cond_0
    aget-object v2, v1, v0

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$6(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
