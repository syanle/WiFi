.class Lcom/umeng/socialize/view/cf;
.super Lcom/umeng/socialize/view/wigets/a;
.source "ShareBoard.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ce;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lcom/umeng/socialize/view/controller/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ce;Ljava/util/List;Lcom/umeng/socialize/view/controller/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/cf;->a:Lcom/umeng/socialize/view/ce;

    iput-object p2, p0, Lcom/umeng/socialize/view/cf;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/umeng/socialize/view/cf;->c:Lcom/umeng/socialize/view/controller/c;

    .line 83
    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/cf;)Lcom/umeng/socialize/view/ce;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/umeng/socialize/view/cf;->a:Lcom/umeng/socialize/view/ce;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/umeng/socialize/view/cf;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/cf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 87
    iget-object v0, p0, Lcom/umeng/socialize/view/cf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 88
    const-string v1, ""

    .line 89
    instance-of v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 90
    check-cast v1, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 91
    iget-object v2, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mShowWord:Ljava/lang/String;

    .line 93
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    const-string v4, "com.umeng.socialize.mail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    const-string v2, "\u90ae\u4ef6"

    .line 98
    :cond_0
    :goto_0
    iget v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mIcon:I

    if-ne v3, v5, :cond_3

    iget-object v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    const-string v4, "com.umeng.socialize.mail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iget-object v3, p0, Lcom/umeng/socialize/view/cf;->a:Lcom/umeng/socialize/view/ce;

    invoke-static {v3}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 100
    const-string v5, "umeng_socialize_gmail"

    .line 99
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mIcon:I

    .line 110
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/umeng/socialize/view/cf;->a:Lcom/umeng/socialize/view/ce;

    invoke-static {v1}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;

    move-result-object v1

    .line 111
    iget-object v3, p0, Lcom/umeng/socialize/view/cf;->a:Lcom/umeng/socialize/view/ce;

    invoke-static {v3}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 112
    const-string v5, "umeng_socialize_shareboard_item"

    .line 111
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    .line 112
    const/4 v4, 0x0

    .line 110
    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 115
    iget-object v1, p0, Lcom/umeng/socialize/view/cf;->a:Lcom/umeng/socialize/view/ce;

    invoke-static {v1}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 116
    const-string v5, "umeng_socialize_shareboard_image"

    .line 115
    invoke-static {v1, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 114
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 117
    iget v4, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v1, p0, Lcom/umeng/socialize/view/cf;->a:Lcom/umeng/socialize/view/ce;

    invoke-static {v1}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v5, "umeng_socialize_shareboard_pltform_name"

    invoke-static {v1, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 119
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v1, Lcom/umeng/socialize/view/cg;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/cg;-><init>(Lcom/umeng/socialize/view/cf;)V

    .line 150
    new-instance v2, Lcom/umeng/socialize/view/ch;

    iget-object v4, p0, Lcom/umeng/socialize/view/cf;->c:Lcom/umeng/socialize/view/controller/c;

    invoke-direct {v2, p0, v0, v4, v1}, Lcom/umeng/socialize/view/ch;-><init>(Lcom/umeng/socialize/view/cf;Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 179
    return-object v3

    .line 95
    :cond_2
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    const-string v4, "com.umeng.socialize.sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const-string v2, "\u77ed\u4fe1"

    goto/16 :goto_0

    .line 101
    :cond_3
    iget v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mIcon:I

    if-ne v3, v5, :cond_1

    iget-object v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    const-string v4, "com.umeng.socialize.sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/umeng/socialize/view/cf;->a:Lcom/umeng/socialize/view/ce;

    invoke-static {v3}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 103
    const-string v5, "umeng_socialize_sms"

    .line 102
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mIcon:I

    goto/16 :goto_1

    .line 106
    :cond_4
    iget-object v2, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/umeng/socialize/view/cf;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/cf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    goto :goto_0
.end method
