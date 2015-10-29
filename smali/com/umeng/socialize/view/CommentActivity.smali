.class public Lcom/umeng/socialize/view/CommentActivity;
.super Lcom/umeng/socialize/view/abs/BaseComentActivity;
.source "CommentActivity.java"


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/common/ResContainer$a;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Z

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field public mCommentsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMComment;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/umeng/socialize/view/ci;

.field private r:Landroid/widget/BaseAdapter;

.field private s:I

.field private t:Lcom/umeng/socialize/view/q;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/umeng/socialize/view/CommentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/CommentActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/BaseComentActivity;-><init>()V

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/socialize/view/CommentActivity;->s:I

    .line 66
    const-string v0, "contentLayout"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->u:Ljava/lang/String;

    .line 67
    const-string v0, "comment_item_name"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->v:Ljava/lang/String;

    .line 68
    const-string v0, "comment_item_content"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->w:Ljava/lang/String;

    .line 69
    const-string v0, "comment_item_layout"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->x:Ljava/lang/String;

    .line 70
    const-string v0, "comment_item_time"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->y:Ljava/lang/String;

    .line 71
    const-string v0, "comment_item_has_location"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->z:Ljava/lang/String;

    .line 72
    const-string v0, "comment_list"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->A:Ljava/lang/String;

    .line 73
    const-string v0, "comment_list_progress"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->B:Ljava/lang/String;

    .line 74
    const-string v0, "comment_write"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->C:Ljava/lang/String;

    .line 75
    const-string v0, "title_bar_leftBt"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->D:Ljava/lang/String;

    .line 76
    const-string v0, "title_bar_rightBt"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->E:Ljava/lang/String;

    .line 77
    const-string v0, "title_bar_middleTv"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->F:Ljava/lang/String;

    .line 78
    const-string v0, "comment_avatar"

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->G:Ljava/lang/String;

    .line 367
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/view/CommentActivity;->c:I

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/CommentActivity;->d:Z

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/CommentActivity;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/umeng/socialize/view/CommentActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/CommentActivity;Lcom/umeng/socialize/view/q;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/umeng/socialize/view/CommentActivity;->t:Lcom/umeng/socialize/view/q;

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->A:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    .line 274
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->B:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->o:Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->C:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->p:Landroid/view/View;

    .line 277
    new-instance v0, Lcom/umeng/socialize/view/j;

    invoke-direct {v0, p0, p0}, Lcom/umeng/socialize/view/j;-><init>(Lcom/umeng/socialize/view/CommentActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    .line 294
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->COLOR:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_comments_bg"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/CommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/ci;->setBackgroundColor(I)V

    .line 296
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    sget-object v1, Lcom/umeng/socialize/view/ci$a;->a:Lcom/umeng/socialize/view/ci$a;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/ci;->a(Lcom/umeng/socialize/view/ci$a;)V

    .line 298
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->D:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->k:Landroid/widget/Button;

    .line 299
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/k;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/k;-><init>(Lcom/umeng/socialize/view/CommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->E:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->l:Landroid/widget/Button;

    .line 306
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->F:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->m:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->m:Landroid/widget/TextView;

    const-string v1, "\u8bc4\u8bba\u5217\u8868"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->p:Landroid/view/View;

    new-instance v1, Lcom/umeng/socialize/view/l;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/l;-><init>(Lcom/umeng/socialize/view/CommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    new-instance v1, Lcom/umeng/socialize/view/m;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/m;-><init>(Lcom/umeng/socialize/view/CommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setOnRefreshListener(Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;)V

    .line 327
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    new-instance v1, Lcom/umeng/socialize/view/n;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/n;-><init>(Lcom/umeng/socialize/view/CommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 348
    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/CommentActivity;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/umeng/socialize/view/CommentActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/ci;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v1

    .line 372
    :goto_0
    iget v3, p0, Lcom/umeng/socialize/view/CommentActivity;->s:I

    if-ge v0, v3, :cond_2

    move v0, v2

    .line 374
    :goto_1
    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    sget-object v2, Lcom/umeng/socialize/view/ci$a;->a:Lcom/umeng/socialize/view/ci$a;

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/view/ci;->a(Lcom/umeng/socialize/view/ci$a;)V

    .line 383
    :goto_2
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/umeng/socialize/view/CommentActivity;->c:I

    .line 384
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 372
    goto :goto_1

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/umeng/socialize/view/CommentActivity;->c:I

    if-le v0, v3, :cond_5

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    sget-object v2, Lcom/umeng/socialize/view/ci$a;->c:Lcom/umeng/socialize/view/ci$a;

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/view/ci;->a(Lcom/umeng/socialize/view/ci$a;)V

    goto :goto_2

    .line 379
    :cond_5
    iput-boolean v2, p0, Lcom/umeng/socialize/view/CommentActivity;->d:Z

    .line 380
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    sget-object v2, Lcom/umeng/socialize/view/ci$a;->d:Lcom/umeng/socialize/view/ci$a;

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/view/ci;->a(Lcom/umeng/socialize/view/ci$a;)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    return-void
.end method

.method static synthetic e(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    return-void
.end method

.method static synthetic g(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/CommentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->h:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    return-object v0
.end method

.method static synthetic k(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/wigets/PullToRefreshListView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic l(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->f:Lcom/umeng/socialize/bean/SocializeEntity;

    return-object v0
.end method

.method static synthetic m(Lcom/umeng/socialize/view/CommentActivity;)Lcom/umeng/socialize/view/q;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->t:Lcom/umeng/socialize/view/q;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->t:Lcom/umeng/socialize/view/q;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/q;->a()V

    .line 435
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 425
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->t:Lcom/umeng/socialize/view/q;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->t:Lcom/umeng/socialize/view/q;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->t:Lcom/umeng/socialize/view/q;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/view/q;->a(Landroid/graphics/Bitmap;)V

    .line 430
    :cond_0
    return-void
.end method

.method public commentsChanged()V
    .locals 4

    .prologue
    .line 387
    sget-object v0, Lcom/umeng/socialize/view/CommentActivity;->a:Ljava/lang/String;

    const-string v1, "changeComments......."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 389
    new-instance v0, Lcom/umeng/socom/util/i;

    invoke-direct {v0, p0}, Lcom/umeng/socom/util/i;-><init>(Landroid/content/Context;)V

    .line 391
    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/umeng/socom/util/i;->a(F)I

    move-result v0

    .line 392
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 393
    const/4 v2, -0x1

    .line 392
    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 394
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/ci;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    sget-object v0, Lcom/umeng/socialize/view/CommentActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->mCommentsData:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->q:Lcom/umeng/socialize/view/ci;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->r:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->onRefreshCompleteKeepState()V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u66f4\u65b0\u4e8e\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->n:Lcom/umeng/socialize/view/wigets/PullToRefreshListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setSelection(I)V

    .line 411
    :cond_1
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->r:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/umeng/socialize/view/CommentActivity;->finish()V

    .line 197
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lcom/umeng/socom/util/i;

    invoke-direct {v0, p0}, Lcom/umeng/socom/util/i;-><init>(Landroid/content/Context;)V

    .line 203
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/umeng/socom/util/i;->a(F)I

    move-result v0

    .line 204
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_default_avatar"

    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 206
    new-instance v2, Lcom/umeng/socialize/view/i;

    invoke-direct {v2, p0, v1, v0}, Lcom/umeng/socialize/view/i;-><init>(Lcom/umeng/socialize/view/CommentActivity;II)V

    return-object v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentActivity;->requestWindowFeature(I)Z

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->u:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 89
    const-string v4, "umeng_socialize_comment_view"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->x:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 91
    const-string v4, "umeng_socialize_comment_item"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->v:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 93
    const-string v4, "umeng_socialize_comment_item_name"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->w:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 95
    const-string v4, "umeng_socialize_comment_item_content"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->y:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 97
    const-string v4, "umeng_socialize_comment_item_time"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->z:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 99
    const-string v4, "umeng_socialize_comment_item_has_location"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->A:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 101
    const-string v4, "umeng_socialize_comment_list"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 100
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->B:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 103
    const-string v4, "umeng_socialize_comment_list_progress"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->C:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 105
    const-string v4, "umeng_socialize_comment_write"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->D:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 107
    const-string v4, "umeng_socialize_title_bar_leftBt"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->E:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 109
    const-string v4, "umeng_socialize_title_bar_rightBt"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 108
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->F:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 111
    const-string v4, "umeng_socialize_title_bar_middleTv"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->G:Ljava/lang/String;

    new-instance v2, Lcom/umeng/socialize/common/ResContainer$a;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 113
    const-string v4, "umeng_socialize_comment_avatar"

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer$a;-><init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Lcom/umeng/socialize/view/c;

    invoke-direct {v1, p0, p0, v0}, Lcom/umeng/socialize/view/c;-><init>(Lcom/umeng/socialize/view/CommentActivity;Landroid/content/Context;Ljava/util/Map;)V

    .line 118
    invoke-virtual {v1}, Lcom/umeng/socialize/common/ResContainer;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/view/CommentActivity;->u:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$a;

    iget v0, v0, Lcom/umeng/socialize/common/ResContainer$a;->d:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/CommentActivity;->setContentView(I)V

    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->f:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/umeng/socialize/view/e;

    invoke-direct {v1, p0, v0}, Lcom/umeng/socialize/view/e;-><init>(Lcom/umeng/socialize/view/CommentActivity;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 138
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-interface {v0, v1}, Lcom/umeng/socialize/media/UMediaObject;->toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/view/CommentActivity;->b()V

    .line 143
    invoke-virtual {p0}, Lcom/umeng/socialize/view/CommentActivity;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->r:Landroid/widget/BaseAdapter;

    .line 144
    new-instance v0, Lcom/umeng/socialize/view/f;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/f;-><init>(Lcom/umeng/socialize/view/CommentActivity;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->h:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    .line 183
    iget-object v0, p0, Lcom/umeng/socialize/view/CommentActivity;->h:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/socialize/view/CommentActivity;->fetchFormNet(Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;J)V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->onResume()V

    .line 190
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->onStop()V

    .line 270
    return-void
.end method

.method public reflushData()V
    .locals 3

    .prologue
    .line 351
    new-instance v0, Lcom/umeng/socialize/view/d;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/d;-><init>(Lcom/umeng/socialize/view/CommentActivity;)V

    .line 364
    const-wide/16 v1, -0x1

    .line 351
    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/socialize/view/CommentActivity;->fetchFormNet(Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;J)V

    .line 365
    return-void
.end method
