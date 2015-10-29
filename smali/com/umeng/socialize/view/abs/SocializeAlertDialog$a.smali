.class public Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;
.super Ljava/lang/Object;
.source "SocializeAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/abs/SocializeAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->a:Landroid/content/Context;

    .line 97
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_base_alert_dialog"

    .line 96
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 97
    const/4 v1, 0x0

    .line 96
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b:Landroid/view/View;

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 99
    const/4 v2, -0x2

    .line 98
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b:Landroid/view/View;

    .line 104
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_alert_footer"

    .line 103
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->d:Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b:Landroid/view/View;

    .line 107
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_alert_body"

    .line 106
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->e:Landroid/view/ViewGroup;

    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b:Landroid/view/View;

    .line 110
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_tipinfo"

    .line 109
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->c:Landroid/widget/TextView;

    .line 111
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;
    .locals 1

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    :goto_0
    return-object p0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    return-object p0
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;
    .locals 1

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    :goto_0
    return-object p0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
