.class public Lcom/pubinfo/izhejiang/AroundMoreActivity;
.super Lcom/pubinfo/izhejiang/controller/AroundMoreFun;
.source "AroundMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;
    }
.end annotation


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field bd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/BottomData;",
            ">;"
        }
    .end annotation
.end field

.field confirmButton:Landroid/widget/LinearLayout;

.field listView:Landroid/widget/ListView;

.field private mAdapter:Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;

.field private mGallery:Landroid/widget/LinearLayout;

.field private mainHandler:Landroid/os/Handler;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mainHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method private Commit(Ljava/lang/String;)V
    .locals 14
    .param p1, "cate"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 218
    const-string v0, "LoginSucess"

    invoke-virtual {p0, v0, v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 219
    .local v13, "sharedata3":Landroid/content/SharedPreferences;
    const-string v0, "username"

    const-string v4, ""

    invoke-interface {v13, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "username":Ljava/lang/String;
    const-string v0, "Location"

    invoke-virtual {p0, v0, v5}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 223
    .local v12, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v0, "city"

    const-string v4, ""

    invoke-interface {v12, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "city":Ljava/lang/String;
    const-string v0, "lat"

    const-string v4, ""

    invoke-interface {v12, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "lat":Ljava/lang/String;
    const-string v0, "lon"

    const-string v4, ""

    invoke-interface {v12, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "lon":Ljava/lang/String;
    const-string v4, "1000"

    const-string v6, "1"

    const-string v8, ""

    .line 227
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getConnectedSSID()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    move-object v0, p0

    move-object v5, p1

    move-object v11, p0

    .line 226
    invoke-virtual/range {v0 .. v11}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getNearBusList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/AroundMoreActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->Commit(Ljava/lang/String;)V

    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity$4;-><init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mainHandler:Landroid/os/Handler;

    .line 330
    return-void
.end method


# virtual methods
.method public doNearBusListErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    return-void
.end method

.method public doNearBusListSucc(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_1

    .line 234
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Lcom/cat/parase/NearBusListParser;->Nearbuslistparaser(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 235
    .local v1, "result":Ljava/lang/Object;
    const-string v2, "OK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 237
    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :goto_0
    return-void

    .line 239
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cat/data/ComData;->setMapCustom(Ljava/util/List;)V

    .line 240
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    .line 241
    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setMapCustom(Ljava/util/List;)V

    .line 242
    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->hideLoading()V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 103
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 104
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    iput-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 106
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 106
    iput-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 108
    const v1, 0x7f0a0061

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mGallery:Landroid/widget/LinearLayout;

    .line 109
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->listView:Landroid/widget/ListView;

    .line 110
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 112
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->backButton:Landroid/widget/ImageButton;

    .line 113
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 114
    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->title:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u6211\u7684"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->confirmButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    new-instance v0, Lcom/pubinfo/izhejiang/AroundMoreActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity$1;-><init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;)V

    .line 132
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method public initOverlay()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    .line 141
    const-string v10, "window"

    invoke-virtual {p0, v10}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 142
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    .local v7, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 144
    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 146
    .local v6, "mScreenWitdh":I
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cat/data/ComData;->getBottomData()Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    .line 147
    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 148
    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v0, v10, [Landroid/widget/Button;

    .line 149
    .local v0, "Btn":[Landroid/widget/Button;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 150
    const/4 v10, 0x1

    .line 149
    invoke-direct {v4, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v4, "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v2, v10, :cond_1

    .line 171
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v5, v10, :cond_3

    .line 192
    .end local v0    # "Btn":[Landroid/widget/Button;
    .end local v2    # "i":I
    .end local v4    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "k":I
    :cond_0
    const v10, 0x7f0a0024

    invoke-virtual {p0, v10}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;

    .line 193
    .local v8, "refreshableView":Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;
    const v10, 0x7f0a0026

    invoke-virtual {p0, v10}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 194
    const v10, 0x7f0a0025

    invoke-virtual {p0, v10}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ScrollView;

    .line 195
    new-instance v12, Lcom/pubinfo/izhejiang/AroundMoreActivity$3;

    invoke-direct {v12, p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity$3;-><init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;)V

    .line 193
    invoke-virtual {v8, v11, v10, v12}, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->setStayView(Landroid/view/View;Landroid/widget/ScrollView;Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;)V

    .line 211
    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mainHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    return-void

    .line 152
    .end local v8    # "refreshableView":Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;
    .restart local v0    # "Btn":[Landroid/widget/Button;
    .restart local v2    # "i":I
    .restart local v4    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v10, v0, v2

    .line 153
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v3, "iv":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 155
    div-int/lit8 v10, v6, 0x4

    .line 154
    invoke-direct {v1, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v1, "btParams":Landroid/widget/RelativeLayout$LayoutParams;
    aget-object v11, v0, v2

    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cat/data/BottomData;

    invoke-virtual {v10}, Lcom/cat/data/BottomData;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    if-nez v2, :cond_2

    .line 158
    aget-object v10, v0, v2

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 159
    const/high16 v12, 0x7f080000

    .line 158
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 164
    :goto_2
    aget-object v10, v0, v2

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 165
    aget-object v10, v0, v2

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setGravity(I)V

    .line 166
    const v10, 0x7f02005b

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mGallery:Landroid/widget/LinearLayout;

    aget-object v11, v0, v2

    invoke-virtual {v10, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v10, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 161
    :cond_2
    aget-object v10, v0, v2

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 162
    const v12, 0x7f080006

    .line 161
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 173
    .end local v1    # "btParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "iv":Landroid/widget/ImageView;
    .restart local v5    # "k":I
    :cond_3
    aget-object v10, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 174
    aget-object v10, v0, v5

    new-instance v11, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;

    invoke-direct {v11, p0, v0}, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;-><init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;[Landroid/widget/Button;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->init()V

    .line 71
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->initialHandler()V

    .line 73
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cat/data/ComData;->getTopData()Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TopData;>;"
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->initOverlay()V

    .line 99
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 453
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 454
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->finish()V

    .line 457
    const/4 v0, 0x1

    .line 459
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0xa

    .line 258
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 259
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 262
    :cond_0
    const/4 v4, 0x0

    .line 263
    .local v4, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 269
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 271
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    .line 270
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v5, v3

    .line 272
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 273
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 264
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 265
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
