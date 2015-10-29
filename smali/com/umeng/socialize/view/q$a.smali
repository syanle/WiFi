.class Lcom/umeng/socialize/view/q$a;
.super Ljava/lang/Object;
.source "CommentPostDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field b:Landroid/widget/ImageButton;

.field c:Landroid/widget/ImageView;

.field d:Z

.field e:Ljava/lang/String;

.field f:Landroid/view/View;

.field g:Lcom/umeng/socialize/bean/SnsPlatform;

.field final synthetic h:Lcom/umeng/socialize/view/q;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/view/q;Landroid/content/Context;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 4

    .prologue
    .line 155
    iput-object p1, p0, Lcom/umeng/socialize/view/q$a;->h:Lcom/umeng/socialize/view/q;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p3, p0, Lcom/umeng/socialize/view/q$a;->g:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 158
    iget-object v0, p0, Lcom/umeng/socialize/view/q$a;->g:Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/q$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 159
    invoke-static {p1}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/view/q;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/socialize/view/q;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 161
    const-string v3, "umeng_socialize_post_comment_platform"

    .line 159
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-static {p1}, Lcom/umeng/socialize/view/q;->b(Lcom/umeng/socialize/view/q;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 163
    const/4 v3, 0x0

    .line 159
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/q$a;->f:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/umeng/socialize/view/q$a;->f:Landroid/view/View;

    invoke-virtual {p1}, Lcom/umeng/socialize/view/q;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 166
    const-string v3, "umeng_socialize_post_cws_ic"

    .line 164
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/view/q$a;->b:Landroid/widget/ImageButton;

    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/view/q$a;->f:Landroid/view/View;

    invoke-virtual {p1}, Lcom/umeng/socialize/view/q;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 168
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 169
    const-string v3, "umeng_socialize_post_cws_selected"

    .line 167
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/q$a;->c:Landroid/widget/ImageView;

    .line 171
    new-instance v0, Lcom/umeng/socialize/view/z;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/z;-><init>(Lcom/umeng/socialize/view/q$a;)V

    .line 195
    iget-object v1, p0, Lcom/umeng/socialize/view/q$a;->b:Landroid/widget/ImageButton;

    new-instance v2, Lcom/umeng/socialize/view/aa;

    invoke-direct {v2, p0, v0}, Lcom/umeng/socialize/view/aa;-><init>(Lcom/umeng/socialize/view/q$a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/q$a;)Lcom/umeng/socialize/view/q;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/umeng/socialize/view/q$a;->h:Lcom/umeng/socialize/view/q;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iput-object p1, p0, Lcom/umeng/socialize/view/q$a;->e:Ljava/lang/String;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/view/q$a;->d:Z

    .line 214
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/umeng/socialize/view/q$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/q$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/view/q$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
