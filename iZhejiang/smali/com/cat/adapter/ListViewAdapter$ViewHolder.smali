.class Lcom/cat/adapter/ListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/adapter/ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private indexTv:Landroid/widget/TextView;

.field private itemTv:Landroid/widget/TextView;

.field private itemTv_code:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cat/adapter/ListViewAdapter;


# direct methods
.method private constructor <init>(Lcom/cat/adapter/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->this$0:Lcom/cat/adapter/ListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cat/adapter/ListViewAdapter;Lcom/cat/adapter/ListViewAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/cat/adapter/ListViewAdapter$ViewHolder;-><init>(Lcom/cat/adapter/ListViewAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cat/adapter/ListViewAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->indexTv:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/cat/adapter/ListViewAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->itemTv:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$3(Lcom/cat/adapter/ListViewAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->itemTv_code:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$4(Lcom/cat/adapter/ListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->indexTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cat/adapter/ListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->itemTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cat/adapter/ListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cat/adapter/ListViewAdapter$ViewHolder;->itemTv_code:Landroid/widget/TextView;

    return-object v0
.end method
