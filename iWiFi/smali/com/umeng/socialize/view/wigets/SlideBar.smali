.class public Lcom/umeng/socialize/view/wigets/SlideBar;
.super Landroid/view/View;
.source "SlideBar.java"


# instance fields
.field private mAlphabet:[C

.field private mAlphabetHeight:I

.field private mAlphabetSize:I

.field private mEnabledCharacter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExistColor:I

.field private mListView:Landroid/widget/ListView;

.field private mOverlay:Landroid/widget/TextView;

.field private mUnexistColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, "#EEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mExistColor:I

    .line 32
    const-string v0, "#EEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mUnexistColor:I

    .line 45
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SlideBar;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string v0, "#EEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mExistColor:I

    .line 32
    const-string v0, "#EEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mUnexistColor:I

    .line 50
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SlideBar;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string v0, "#EEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mExistColor:I

    .line 32
    const-string v0, "#EEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mUnexistColor:I

    .line 55
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SlideBar;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private getGroupIndex(Ljava/lang/Character;)I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mEnabledCharacter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0x1c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DIMEN:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 91
    const-string v2, "alphabet_size"

    .line 89
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 88
    iput v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabetSize:I

    .line 92
    return-void

    .line 59
    nop

    :array_0
    .array-data 2
        0x5e38s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7b26s
    .end array-data
.end method

.method private isGroupExist(Ljava/lang/Character;)Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mEnabledCharacter:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mEnabledCharacter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 190
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 192
    const v0, -0x595656

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabetSize:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 197
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/SlideBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    .line 199
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 213
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    return-void

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/umeng/socialize/view/wigets/SlideBar;->isGroupExist(Ljava/lang/Character;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    iget v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mExistColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    :goto_1
    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 208
    iget v4, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabetHeight:I

    iget v5, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabetHeight:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 206
    invoke-virtual {p1, v3, v2, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    iget v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mUnexistColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 181
    const-string v0, "com.umeng.socialize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSizeChanged +"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    array-length v0, v0

    div-int v0, p2, v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabetHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 145
    iget v2, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabetHeight:I

    div-int/2addr v0, v2

    .line 146
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 147
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 152
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 155
    :cond_1
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/view/wigets/SlideBar;->setPressed(Z)V

    .line 157
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mOverlay:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/socialize/view/wigets/SlideBar;->isGroupExist(Ljava/lang/Character;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 175
    :cond_3
    :goto_1
    return v4

    .line 148
    :cond_4
    if-gez v0, :cond_0

    move v0, v1

    .line 149
    goto :goto_0

    .line 165
    :cond_5
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mAlphabet:[C

    aget-char v0, v3, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/wigets/SlideBar;->getGroupIndex(Ljava/lang/Character;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 169
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 170
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/view/wigets/SlideBar;->setPressed(Z)V

    .line 172
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mOverlay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mListView:Landroid/widget/ListView;

    .line 129
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/b;

    .line 130
    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/b;->a()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SlideBar;->updateAlphabet(Ljava/util/List;)V

    .line 133
    return-void
.end method

.method public setOverlay(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mOverlay:Landroid/widget/TextView;

    .line 137
    return-void
.end method

.method public updateAlphabet(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mEnabledCharacter:Ljava/util/HashMap;

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 100
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/SlideBar;->invalidate()V

    .line 113
    return-void

    .line 101
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 103
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMFriend;->upGroup()C

    move-result v0

    .line 105
    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mEnabledCharacter:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SlideBar;->mEnabledCharacter:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
