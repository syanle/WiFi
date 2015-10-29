.class public Lcom/umeng/socialize/view/ce;
.super Landroid/widget/PopupWindow;
.source "ShareBoard.java"


# static fields
.field private static d:Lcom/umeng/socialize/view/aj;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/socialize/view/abs/am;

.field private c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/view/ce;->d:Lcom/umeng/socialize/view/aj;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/view/abs/am;Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p2, v2, v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 39
    iput-object v1, p0, Lcom/umeng/socialize/view/ce;->a:Landroid/content/Context;

    .line 41
    iput-object v1, p0, Lcom/umeng/socialize/view/ce;->b:Lcom/umeng/socialize/view/abs/am;

    .line 42
    iput-object v1, p0, Lcom/umeng/socialize/view/ce;->c:Landroid/view/View;

    .line 54
    iput-object p1, p0, Lcom/umeng/socialize/view/ce;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/umeng/socialize/view/ce;->b:Lcom/umeng/socialize/view/abs/am;

    .line 58
    new-instance v0, Lcom/umeng/socialize/view/controller/c;

    invoke-direct {v0, p1, p3}, Lcom/umeng/socialize/view/controller/c;-><init>(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/controller/c;)Lcom/umeng/socialize/view/wigets/a;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/umeng/socialize/view/ce;->b:Lcom/umeng/socialize/view/abs/am;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/abs/am;->a(Lcom/umeng/socialize/view/wigets/a;)V

    .line 65
    new-instance v0, Lcom/umeng/socialize/view/aj;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/view/aj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/view/ce;->d:Lcom/umeng/socialize/view/aj;

    .line 68
    iget-object v0, p0, Lcom/umeng/socialize/view/ce;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 69
    const-string v2, "umeng_socialize_shareboard_animation"

    .line 68
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ce;->setAnimationStyle(I)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/umeng/socialize/view/ce;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcom/umeng/socialize/view/aj;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/umeng/socialize/view/ce;->d:Lcom/umeng/socialize/view/aj;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/view/controller/c;)Lcom/umeng/socialize/view/wigets/a;
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/umeng/socialize/view/controller/c;->a()Ljava/util/List;

    move-result-object v0

    .line 81
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/umeng/socialize/view/cf;

    invoke-direct {v1, p0, v0, p1}, Lcom/umeng/socialize/view/cf;-><init>(Lcom/umeng/socialize/view/ce;Ljava/util/List;Lcom/umeng/socialize/view/controller/c;)V

    return-object v1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    .prologue
    .line 198
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    iput-object p1, p0, Lcom/umeng/socialize/view/ce;->c:Landroid/view/View;

    .line 204
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
