.class public Lcom/pubinfo/izhejiang/CountryListActivity;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "CountryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;
    }
.end annotation


# instance fields
.field activity:Ljava/lang/String;

.field private adapter:Lcom/cat/adapter/ListViewAdapter;

.field backButton:Landroid/widget/ImageButton;

.field confirm:Landroid/widget/LinearLayout;

.field private flag:Z

.field private height:I

.field private indexStr:[Ljava/lang/String;

.field private layoutIndex:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

.field private newPersons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field private persons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field title:Landroid/widget/TextView;

.field private tv_show:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    .line 45
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 46
    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 47
    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;

    .line 51
    iput-boolean v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->flag:Z

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/CountryListActivity;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/CountryListActivity;->setData()V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->layoutIndex:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/CountryListActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/CountryListActivity;->sortList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/CountryListActivity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->selector:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/CountryListActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->selector:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/CountryListActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->height:I

    return v0
.end method

.method static synthetic access$8(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->tv_show:Landroid/widget/TextView;

    return-object v0
.end method

.method public static readLocalJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v2, ""

    .line 313
    .local v2, "jsonString":Ljava/lang/String;
    const-string v3, ""

    .line 315
    .local v3, "resultString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 316
    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 317
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 318
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 319
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "resultString":Ljava/lang/String;
    .local v4, "resultString":Ljava/lang/String;
    move-object v3, v4

    .line 323
    .end local v0    # "buffer":[B
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "resultString":Ljava/lang/String;
    .restart local v3    # "resultString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 320
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private setData()V
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/CountryListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "countrycode.json"

    invoke-static {v2, v3}, Lcom/pubinfo/izhejiang/CountryListActivity;->readLocalJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    invoke-static {v0}, Lcom/cat/parase/CountryCodeParser;->CountryCodeparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 334
    .local v1, "result":Ljava/lang/Object;
    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    iput-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private sortList([Ljava/lang/String;)V
    .locals 5
    .param p1, "allNames"    # [Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 209
    return-void

    .line 188
    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 189
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 187
    .end local v1    # "j":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .restart local v1    # "j":I
    :cond_1
    aget-object v4, p1, v0

    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/Person;

    invoke-virtual {v3}, Lcom/cat/data/Person;->getPinYinName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    new-instance v2, Lcom/cat/data/Person;

    invoke-direct {v2}, Lcom/cat/data/Person;-><init>()V

    .line 192
    .local v2, "per":Lcom/cat/data/Person;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/Person;

    invoke-virtual {v3}, Lcom/cat/data/Person;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cat/data/Person;->setCountry(Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/Person;

    invoke-virtual {v3}, Lcom/cat/data/Person;->getPinYinName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cat/data/Person;->setPinYinName(Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/Person;

    invoke-virtual {v3}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cat/data/Person;->setCountrycn(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/Person;

    invoke-virtual {v3}, Lcom/cat/data/Person;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cat/data/Person;->setCode(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2    # "per":Lcom/cat/data/Person;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .end local v1    # "j":I
    :cond_3
    new-instance v2, Lcom/cat/data/Person;

    invoke-direct {v2}, Lcom/cat/data/Person;-><init>()V

    .line 205
    .restart local v2    # "per":Lcom/cat/data/Person;
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/cat/data/Person;->setCountrycn(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public getIndexView()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 260
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 261
    const/4 v3, -0x2

    iget v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->height:I

    .line 260
    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 309
    return-void

    .line 263
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 264
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v2, v6, v5, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 267
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->layoutIndex:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->layoutIndex:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/pubinfo/izhejiang/CountryListActivity$3;

    invoke-direct {v4, p0}, Lcom/pubinfo/izhejiang/CountryListActivity$3;-><init>(Lcom/pubinfo/izhejiang/CountryListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    .line 56
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->requestWindowFeature(I)Z

    .line 59
    const v4, 0x7f03000a

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->setContentView(I)V

    .line 61
    const v4, 0x7f0a002c

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->backButton:Landroid/widget/ImageButton;

    .line 62
    const v4, 0x7f0a002d

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->title:Landroid/widget/TextView;

    .line 63
    const v4, 0x7f0a002e

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->confirm:Landroid/widget/LinearLayout;

    .line 64
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->title:Landroid/widget/TextView;

    const-string v5, "\u9009\u62e9\u56fd\u5bb6\u548c\u5730\u533a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v4, 0x7f0a0034

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->layoutIndex:Landroid/widget/LinearLayout;

    .line 66
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->layoutIndex:Landroid/widget/LinearLayout;

    const-string v5, "#00ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 67
    const v4, 0x7f0a0032

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->listView:Landroid/widget/ListView;

    .line 68
    const v4, 0x7f0a0033

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->tv_show:Landroid/widget/TextView;

    .line 69
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->tv_show:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/CountryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->activity:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/CountryListActivity;->setData()V

    .line 75
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->sortIndex(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "allNames":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/CountryListActivity;->sortList([Ljava/lang/String;)V

    .line 77
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->selector:Ljava/util/HashMap;

    .line 78
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 85
    new-instance v4, Lcom/cat/adapter/ListViewAdapter;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/cat/adapter/ListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->adapter:Lcom/cat/adapter/ListViewAdapter;

    .line 86
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->adapter:Lcom/cat/adapter/ListViewAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->listView:Landroid/widget/ListView;

    new-instance v5, Lcom/pubinfo/izhejiang/CountryListActivity$1;

    invoke-direct {v5, p0}, Lcom/pubinfo/izhejiang/CountryListActivity$1;-><init>(Lcom/pubinfo/izhejiang/CountryListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    new-instance v3, Lcom/pubinfo/izhejiang/CountryListActivity$2;

    invoke-direct {v3, p0}, Lcom/pubinfo/izhejiang/CountryListActivity$2;-><init>(Lcom/pubinfo/izhejiang/CountryListActivity;)V

    .line 147
    .local v3, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->confirm:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void

    .line 79
    .end local v3    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/Person;

    invoke-virtual {v4}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->selector:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->flag:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->layoutIndex:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;

    array-length v1, v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->height:I

    .line 216
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/CountryListActivity;->getIndexView()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity;->flag:Z

    .line 219
    :cond_0
    return-void
.end method

.method public sortIndex(Ljava/util/List;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/Person;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "persons":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/Person;>;"
    const/4 v10, 0x0

    .line 228
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 230
    .local v5, "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v8

    add-int/2addr v7, v8

    new-array v2, v7, [Ljava/lang/String;

    .line 236
    .local v2, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 237
    .local v0, "i":I
    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 242
    .local v4, "pinYinNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_2

    .line 250
    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v7

    array-length v8, v4

    invoke-static {v4, v10, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 253
    return-object v2

    .line 230
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "names":[Ljava/lang/String;
    .end local v4    # "pinYinNames":[Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/Person;

    .line 231
    .local v3, "person":Lcom/cat/data/Person;
    invoke-virtual {v3}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cat/tools/StringHelper;->getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 232
    const/4 v9, 0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 231
    invoke-virtual {v5, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v3    # "person":Lcom/cat/data/Person;
    .restart local v0    # "i":I
    .restart local v2    # "names":[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 238
    .local v6, "string":Ljava/lang/String;
    aput-object v6, v2, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    .end local v6    # "string":Ljava/lang/String;
    .restart local v1    # "j":I
    .restart local v4    # "pinYinNames":[Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cat/data/Person;

    .line 244
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cat/data/Person;

    invoke-virtual {v8}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 244
    invoke-static {v8}, Lcom/cat/tools/StringHelper;->getPingYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 243
    invoke-virtual {v7, v8}, Lcom/cat/data/Person;->setPinYinName(Ljava/lang/String;)V

    .line 246
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cat/data/Person;

    .line 247
    invoke-virtual {v7}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-static {v7}, Lcom/cat/tools/StringHelper;->getPingYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
