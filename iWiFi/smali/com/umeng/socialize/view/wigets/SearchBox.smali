.class public Lcom/umeng/socialize/view/wigets/SearchBox;
.super Landroid/widget/EditText;
.source "SearchBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;
    }
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mSearchResultListener:Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;

.field private mWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/umeng/socialize/view/wigets/e;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/wigets/e;-><init>(Lcom/umeng/socialize/view/wigets/SearchBox;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mWatcher:Landroid/text/TextWatcher;

    .line 28
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SearchBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/umeng/socialize/view/wigets/e;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/wigets/e;-><init>(Lcom/umeng/socialize/view/wigets/SearchBox;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mWatcher:Landroid/text/TextWatcher;

    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SearchBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/view/wigets/SearchBox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SearchBox;->searchText(Ljava/lang/String;)V

    return-void
.end method

.method private isAllPinyin(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 82
    array-length v0, v1

    .line 84
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 86
    :cond_0
    aget-char v2, v1, v0

    const/16 v3, 0x80

    if-gt v2, v3, :cond_1

    aget-char v2, v1, v0

    if-gez v2, :cond_2

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private searchText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/b;

    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SearchBox;->isAllPinyin(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/umeng/socialize/view/wigets/b;->a(Ljava/lang/String;Z)V

    .line 73
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mSearchResultListener:Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mSearchResultListener:Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;->a(Z)V

    .line 77
    :cond_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setListView(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mListView:Landroid/widget/ListView;

    .line 43
    return-void
.end method

.method public setSearchResultListener(Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SearchBox;->mSearchResultListener:Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;

    .line 33
    return-void
.end method
