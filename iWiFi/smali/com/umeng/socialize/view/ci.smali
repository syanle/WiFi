.class public Lcom/umeng/socialize/view/ci;
.super Landroid/widget/RelativeLayout;
.source "SocializeFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/ci$a;
    }
.end annotation


# static fields
.field private static synthetic f:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/socialize/view/ci$a;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/umeng/socialize/view/ci;->a:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/umeng/socialize/view/ci;->d()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ci;)Lcom/umeng/socialize/view/ci$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->b:Lcom/umeng/socialize/view/ci$a;

    return-object v0
.end method

.method static synthetic c()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/umeng/socialize/view/ci;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/socialize/view/ci$a;->values()[Lcom/umeng/socialize/view/ci$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/socialize/view/ci$a;->c:Lcom/umeng/socialize/view/ci$a;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/ci$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/socialize/view/ci$a;->b:Lcom/umeng/socialize/view/ci$a;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/ci$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/umeng/socialize/view/ci$a;->d:Lcom/umeng/socialize/view/ci$a;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/ci$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/umeng/socialize/view/ci$a;->a:Lcom/umeng/socialize/view/ci$a;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/ci$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/umeng/socialize/view/ci;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/view/ci;->a:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 47
    const-string v3, "umeng_socialize_comment_more"

    .line 46
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/view/ci;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ci;->c:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->c:Landroid/view/View;

    invoke-virtual {p0, v0, v4, v4}, Lcom/umeng/socialize/view/ci;->addView(Landroid/view/View;II)V

    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/ci;->a:Landroid/content/Context;

    .line 51
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_text"

    .line 50
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/ci;->e:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/ci;->a:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 53
    const-string v3, "umeng_socialize_pb"

    .line 52
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ci;->d:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/umeng/socialize/view/cj;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/cj;-><init>(Lcom/umeng/socialize/view/ci;)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ci;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public a(Lcom/umeng/socialize/view/ci$a;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    const-string v0, "com.umeng.socialize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Footer change status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/umeng/socialize/view/ci;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/socialize/view/ci$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/view/ci;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/view/ci;->setClickable(Z)V

    .line 81
    sget-object v0, Lcom/umeng/socialize/view/ci$a;->a:Lcom/umeng/socialize/view/ci$a;

    iput-object v0, p0, Lcom/umeng/socialize/view/ci;->b:Lcom/umeng/socialize/view/ci$a;

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->e:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/view/ci;->setFocusable(Z)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/view/ci;->setClickable(Z)V

    .line 89
    sget-object v0, Lcom/umeng/socialize/view/ci$a;->b:Lcom/umeng/socialize/view/ci$a;

    iput-object v0, p0, Lcom/umeng/socialize/view/ci;->b:Lcom/umeng/socialize/view/ci$a;

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->e:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u66f4\u591a\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/view/ci;->setFocusable(Z)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/view/ci;->setClickable(Z)V

    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    sget-object v0, Lcom/umeng/socialize/view/ci$a;->c:Lcom/umeng/socialize/view/ci$a;

    iput-object v0, p0, Lcom/umeng/socialize/view/ci;->b:Lcom/umeng/socialize/view/ci$a;

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->e:Landroid/widget/TextView;

    const-string v1, "\u56de\u5230\u9876\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/view/ci;->setClickable(Z)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/view/ci;->setFocusable(Z)V

    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/view/ci;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 105
    sget-object v0, Lcom/umeng/socialize/view/ci$a;->d:Lcom/umeng/socialize/view/ci$a;

    iput-object v0, p0, Lcom/umeng/socialize/view/ci;->b:Lcom/umeng/socialize/view/ci$a;

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
