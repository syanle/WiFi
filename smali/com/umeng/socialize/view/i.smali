.class Lcom/umeng/socialize/view/i;
.super Landroid/widget/BaseAdapter;
.source "CommentActivity.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/CommentActivity;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/CommentActivity;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iput p2, p0, Lcom/umeng/socialize/view/i;->b:I

    iput p3, p0, Lcom/umeng/socialize/view/i;->c:I

    .line 206
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 209
    .line 210
    if-nez p2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    .line 212
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/CommentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    check-cast v0, Landroid/view/LayoutInflater;

    .line 213
    iget-object v1, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v1, v1, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v2}, Lcom/umeng/socialize/view/CommentActivity;->d(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/common/ResContainer$a;

    iget v1, v1, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/umeng/socialize/bean/UMComment;

    .line 220
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/CommentActivity;->e(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v1, v1, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v2}, Lcom/umeng/socialize/view/CommentActivity;->f(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/common/ResContainer$a;

    iget v1, v1, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 221
    check-cast v1, Landroid/widget/TextView;

    .line 223
    iget-object v2, v7, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, v7, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/CommentActivity;->g(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 227
    iget v0, p0, Lcom/umeng/socialize/view/i;->b:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, v7, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v2, v7, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    .line 230
    sget-boolean v6, Lcom/umeng/socialize/common/SocializeConstants;->ROUNDER_ICON:Z

    move-object v5, v4

    .line 229
    invoke-static/range {v0 .. v6}, Lcom/umeng/socom/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/socom/net/p$a;Landroid/view/animation/Animation;Z)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/CommentActivity;->h(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    iget-object v1, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-wide v4, v7, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    invoke-static {v1, v4, v5}, Lcom/umeng/socialize/common/SocializeUtils;->beforeData(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/i;->a:Lcom/umeng/socialize/view/CommentActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/CommentActivity;->i(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    iget-object v1, v7, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    if-nez v1, :cond_2

    .line 238
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :goto_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 244
    const/4 v1, -0x1

    iget v2, p0, Lcom/umeng/socialize/view/i;->c:I

    .line 243
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 245
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-object p2

    .line 240
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
