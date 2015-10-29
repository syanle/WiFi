.class public Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;
.super Ljava/lang/Object;
.source "SocialPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/abs/SocialPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_full_alert_dialog_item"

    .line 286
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 287
    const/4 v1, 0x0

    .line 286
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a:Landroid/view/View;

    .line 290
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_full_alert_dialog_item_icon"

    .line 289
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->b:Landroid/widget/ImageView;

    .line 292
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a:Landroid/view/View;

    .line 293
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_full_alert_dialog_item_text"

    .line 292
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->c:Landroid/widget/TextView;

    .line 294
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(I)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-object p0
.end method
