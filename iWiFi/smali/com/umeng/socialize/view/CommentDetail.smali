.class public Lcom/umeng/socialize/view/CommentDetail;
.super Lcom/google/android/maps/MapActivity;
.source "CommentDetail.java"


# instance fields
.field private mComment:Lcom/umeng/socialize/bean/UMComment;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private mTitleLeftBt:Landroid/widget/Button;

.field private mTitleMidTv:Landroid/widget/TextView;

.field private mTitleRightBt:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    return-void
.end method

.method private initCommentInfo()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 121
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 122
    const-string v1, "umeng_socialize_comment_item"

    .line 121
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 123
    invoke-virtual {v9, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comment_item_name"

    .line 124
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 127
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comment_item_content"

    .line 126
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 129
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comment_avatar"

    .line 128
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 130
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_default_avatar"

    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 131
    iget-object v2, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    iget-object v2, v0, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    .line 133
    sget-boolean v6, Lcom/umeng/socialize/common/SocializeConstants;->ROUNDER_ICON:Z

    move-object v0, p0

    move-object v5, v4

    .line 132
    invoke-static/range {v0 .. v6}, Lcom/umeng/socom/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/socom/net/p$a;Landroid/view/animation/Animation;Z)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comment_item_time"

    .line 141
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    iget-wide v1, v1, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/SocializeUtils;->beforeData(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 145
    const-string v1, "umeng_socialize_comment_item_has_location"

    .line 144
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    iget-object v1, v1, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    if-nez v1, :cond_1

    .line 148
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_1
    return-void

    .line 135
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private initMapView(Lcom/umeng/socialize/bean/UMLocation;)V
    .locals 8

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 92
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 93
    const-string v1, "umeng_socialize_map"

    .line 92
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mMapView:Lcom/google/android/maps/MapView;

    .line 95
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/umeng/socialize/view/CommentDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 98
    const-string v3, "umeng_socialize_location_mark"

    .line 97
    invoke-static {p0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    new-instance v2, Lcom/umeng/socialize/view/map/UItemizedOverlay;

    invoke-direct {v2, v1, p0}, Lcom/umeng/socialize/view/map/UItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    .line 101
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentDetail;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    .line 102
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMLocation;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    .line 106
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMLocation;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 107
    new-instance v5, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v5, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 108
    new-instance v3, Lcom/google/android/maps/OverlayItem;

    iget-object v4, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    iget-object v4, v4, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2, v3}, Lcom/umeng/socialize/view/map/UItemizedOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v1, v5}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 113
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setZoom(I)I

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 76
    const-string v1, "umeng_socialize_title_bar_leftBt"

    .line 75
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mTitleLeftBt:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mTitleLeftBt:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/o;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/o;-><init>(Lcom/umeng/socialize/view/CommentDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 84
    const-string v1, "umeng_socialize_title_bar_rightBt"

    .line 83
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mTitleRightBt:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mTitleRightBt:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 87
    const-string v1, "umeng_socialize_title_bar_middleTv"

    .line 86
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mTitleMidTv:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mTitleMidTv:Landroid/widget/TextView;

    const-string v1, "\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->finish()V

    .line 157
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->requestWindowFeature(I)Z

    .line 52
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 53
    const-string v1, "umeng_socialize_comment_detail"

    .line 52
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/umeng/socialize/view/CommentDetail;->initView()V

    .line 57
    invoke-virtual {p0}, Lcom/umeng/socialize/view/CommentDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Comment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMComment;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    .line 58
    invoke-direct {p0}, Lcom/umeng/socialize/view/CommentDetail;->initCommentInfo()V

    .line 60
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetail;->mComment:Lcom/umeng/socialize/bean/UMComment;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    .line 61
    invoke-static {}, Lcom/umeng/socialize/common/SocializeUtils;->isGoogleMapExist()Z

    move-result v1

    .line 62
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 64
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 65
    const-string v2, "umeng_socialize_map_invisable"

    .line 64
    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 63
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/view/CommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->initMapView(Lcom/umeng/socialize/bean/UMLocation;)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 69
    const-string v1, "umeng_socialize_map"

    .line 68
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
