.class public Lcom/umeng/socialize/view/CommentDetailNoMap;
.super Landroid/app/Activity;
.source "CommentDetailNoMap.java"


# instance fields
.field private a:Lcom/umeng/socialize/bean/UMComment;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 49
    const-string v1, "umeng_socialize_title_bar_leftBt"

    .line 48
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->b:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->b:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/p;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/p;-><init>(Lcom/umeng/socialize/view/CommentDetailNoMap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 57
    const-string v1, "umeng_socialize_title_bar_rightBt"

    .line 56
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->c:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 60
    const-string v1, "umeng_socialize_title_bar_middleTv"

    .line 59
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->d:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->d:Landroid/widget/TextView;

    const-string v1, "\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 65
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 66
    const-string v1, "umeng_socialize_comment_item"

    .line 65
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 67
    invoke-virtual {v9, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comment_item_name"

    .line 68
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 71
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comment_item_content"

    .line 70
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 73
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comment_avatar"

    .line 72
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 74
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_default_avatar"

    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 75
    iget-object v2, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->a:Lcom/umeng/socialize/bean/UMComment;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->a:Lcom/umeng/socialize/bean/UMComment;

    iget-object v2, v0, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    .line 77
    sget-boolean v6, Lcom/umeng/socialize/common/SocializeConstants;->ROUNDER_ICON:Z

    move-object v0, p0

    move-object v5, v4

    .line 76
    invoke-static/range {v0 .. v6}, Lcom/umeng/socom/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/socom/net/p$a;Landroid/view/animation/Animation;Z)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->a:Lcom/umeng/socialize/bean/UMComment;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->a:Lcom/umeng/socialize/bean/UMComment;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comment_item_time"

    .line 84
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->a:Lcom/umeng/socialize/bean/UMComment;

    iget-wide v1, v1, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/SocializeUtils;->beforeData(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 89
    const-string v1, "umeng_socialize_comment_item_has_location"

    .line 88
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->a:Lcom/umeng/socialize/bean/UMComment;

    iget-object v1, v1, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    if-nez v1, :cond_1

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_1
    return-void

    .line 79
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->requestWindowFeature(I)Z

    .line 36
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 37
    const-string v1, "umeng_socialize_comment_detail_nomap"

    .line 36
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->a()V

    .line 41
    invoke-virtual {p0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Comment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMComment;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentDetailNoMap;->a:Lcom/umeng/socialize/bean/UMComment;

    .line 43
    invoke-direct {p0}, Lcom/umeng/socialize/view/CommentDetailNoMap;->b()V

    .line 45
    return-void
.end method
