.class public abstract Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
.super Ljava/lang/Object;
.source "SocialPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/abs/SocialPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a:Landroid/content/Context;

    .line 158
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_full_alert_dialog"

    .line 157
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 158
    const/4 v1, 0x0

    .line 157
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    .line 161
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_first_area"

    .line 160
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->c:Landroid/view/ViewGroup;

    .line 163
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    .line 164
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_second_area"

    .line 163
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->d:Landroid/view/ViewGroup;

    .line 166
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    .line 167
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_title"

    .line 166
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->e:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a(Landroid/view/View;)V

    .line 170
    return-void
.end method


# virtual methods
.method public a(I)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    .line 188
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_first_area_title"

    .line 187
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    return-object p0
.end method

.method public a(II)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->f:[I

    .line 205
    return-object p0
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
    .locals 1

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    :goto_0
    return-object p0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    .line 176
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_first_area_title"

    .line 175
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_0
    return-object p0

    .line 180
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a()Lcom/umeng/socialize/view/abs/SocialPopupDialog;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->f:[I

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;-><init>(Landroid/content/Context;Landroid/view/View;[I)V

    return-object v0
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public b(I)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_second_area_title"

    .line 221
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    return-object p0
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
    .locals 1

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    :goto_0
    return-object p0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b:Landroid/view/View;

    .line 210
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_second_area_title"

    .line 209
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_0
    return-object p0

    .line 214
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
