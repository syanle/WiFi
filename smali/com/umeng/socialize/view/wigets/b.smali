.class public Lcom/umeng/socialize/view/wigets/b;
.super Landroid/widget/BaseAdapter;
.source "AlphabetIndexAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/wigets/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private d:I

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lcom/umeng/socialize/view/wigets/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/b;->d:I

    .line 55
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    .line 57
    invoke-virtual {p0, p2, p3}, Lcom/umeng/socialize/view/wigets/b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 59
    new-instance v0, Lcom/umeng/socialize/view/wigets/b$a;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/wigets/b$a;-><init>(Lcom/umeng/socialize/view/wigets/b;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->j:Lcom/umeng/socialize/view/wigets/b$a;

    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 62
    const-string v2, "umeng_socialize_default_avatar"

    .line 61
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/b;->i:I

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/wigets/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/wigets/b;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    return-void
.end method

.method private b(I)C
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMFriend;->upGroup()C

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/wigets/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/umeng/socialize/view/wigets/b;->d:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 155
    const/4 v3, -0x1

    move v1, v0

    move v2, v0

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move v1, v3

    .line 171
    :cond_0
    return v1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 160
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMFriend;->getPinyin()Lcom/umeng/socialize/bean/UMFriend$a;

    move-result-object v4

    .line 161
    if-eqz v4, :cond_2

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/UMFriend;->isEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const/4 v2, 0x1

    .line 165
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/UMFriend;->isEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/b;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/b;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    return-object v0
.end method

.method public a(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 308
    check-cast p1, Landroid/widget/TextView;

    .line 310
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMFriend;->upGroup()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->j:Lcom/umeng/socialize/view/wigets/b$a;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/view/wigets/b$a;->a(Z)V

    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->j:Lcom/umeng/socialize/view/wigets/b$a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/view/wigets/b$a;->filter(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/b;->f:Ljava/util/List;

    .line 67
    iput-object p2, p0, Lcom/umeng/socialize/view/wigets/b;->g:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/b;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/b;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    return-void
.end method

.method public a(Lcom/umeng/socialize/bean/UMFriend;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->j:Lcom/umeng/socialize/view/wigets/b$a;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/umeng/socialize/view/wigets/b$a;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/wigets/b$a;-><init>(Lcom/umeng/socialize/view/wigets/b;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->j:Lcom/umeng/socialize/view/wigets/b$a;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->j:Lcom/umeng/socialize/view/wigets/b$a;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    const-string v1, "456"

    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/umeng/socialize/bean/UMFriend;

    .line 103
    if-lez p1, :cond_6

    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->h:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 105
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMFriend;->upGroup()C

    move-result v0

    .line 108
    :goto_0
    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMFriend;->upGroup()C

    move-result v5

    .line 110
    if-eqz p1, :cond_0

    if-eq v5, v0, :cond_1

    .line 111
    :cond_0
    const-string v0, "123"

    move-object v1, v0

    .line 114
    :cond_1
    if-nez p2, :cond_2

    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v6, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    sget-object v7, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v8, "umeng_socialize_at_item"

    invoke-static {v6, v7, v8}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    :cond_2
    const-string v0, "123"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v6, "section"

    invoke-static {v0, v1, v6}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v5, "umeng_socialize_text_view"

    invoke-static {v0, v1, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    sget-object v5, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v6, "umeng_socialize_avatar_imv"

    .line 131
    invoke-static {v1, v5, v6}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    iget-object v5, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    sget-object v6, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 134
    const-string v7, "umeng_socialize_default_avatar"

    .line 133
    invoke-static {v5, v6, v7}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMFriend;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMFriend;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 140
    sget-boolean v6, Lcom/umeng/socialize/common/SocializeConstants;->ROUNDER_ICON:Z

    move-object v5, v4

    .line 139
    invoke-static/range {v0 .. v6}, Lcom/umeng/socom/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/socom/net/p$a;Landroid/view/animation/Animation;Z)V

    .line 146
    :goto_2
    return-object p2

    .line 124
    :cond_4
    const-string v0, "456"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v5, "section"

    invoke-static {v0, v1, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_5
    iget v0, p0, Lcom/umeng/socialize/view/wigets/b;->i:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    move v0, v3

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 267
    if-ltz p2, :cond_0

    if-nez p4, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/b;->d:I

    .line 283
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/wigets/b;->b(I)C

    move-result v0

    .line 273
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 275
    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_2

    .line 276
    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/socialize/view/wigets/b;->d:I

    .line 281
    :goto_1
    check-cast p1, Lcom/umeng/socialize/view/wigets/SectionListView;

    invoke-virtual {p1, p2}, Lcom/umeng/socialize/view/wigets/SectionListView;->configureHeaderView(I)V

    goto :goto_0

    .line 278
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/view/wigets/b;->d:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method
