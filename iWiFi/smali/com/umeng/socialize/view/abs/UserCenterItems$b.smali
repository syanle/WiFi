.class public abstract Lcom/umeng/socialize/view/abs/UserCenterItems$b;
.super Ljava/lang/Object;
.source "UserCenterItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/abs/UserCenterItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field private a:Landroid/app/Dialog;

.field private e:Landroid/content/Context;

.field private f:Lcom/umeng/socialize/bean/SnsPlatform;

.field private g:I

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Z

.field private k:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->f:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 54
    iput-boolean v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->i:Z

    .line 56
    iput-boolean v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->j:Z

    .line 60
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->j:Z

    .line 62
    iget-boolean v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->j:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->b(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a:Landroid/app/Dialog;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a:Landroid/app/Dialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->g:I

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    const-string v1, "\u662f"

    .line 73
    new-instance v2, Lcom/umeng/socialize/view/abs/ao;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/ao;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    const-string v1, "\u5426"

    .line 93
    new-instance v2, Lcom/umeng/socialize/view/abs/ap;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/ap;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/umeng/socialize/view/abs/aq;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/aq;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->k:Landroid/app/AlertDialog$Builder;

    .line 107
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->k:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/UserCenterItems$b;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->i:Z

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    .line 113
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 114
    const-string v1, "umeng_socialize_base_alert_dialog_button"

    .line 112
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 111
    invoke-static {p1, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->h:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->h:Landroid/view/View;

    .line 117
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 118
    const-string v2, "umeng_socialize_alert_button"

    .line 116
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 123
    const-string v2, "umeng_socialize_base_alert_dialog_button"

    .line 121
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 120
    invoke-static {p1, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 126
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 127
    const-string v3, "umeng_socialize_alert_button"

    .line 125
    invoke-static {p1, v1, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 128
    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 131
    const-string v4, "umeng_socialize_button_grey_blue"

    .line 129
    invoke-static {p1, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 132
    new-instance v3, Lcom/umeng/socialize/view/abs/ar;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/view/abs/ar;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v1, Lcom/umeng/socialize/view/abs/as;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/as;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;-><init>(Landroid/content/Context;)V

    .line 163
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->h:Landroid/view/View;

    invoke-virtual {v0, v1, v5}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;

    .line 164
    invoke-virtual {v0, v2, v5}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;

    .line 165
    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;->a()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;

    .line 166
    new-instance v1, Lcom/umeng/socialize/view/abs/at;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/abs/at;-><init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;->a(Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;)V

    .line 177
    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Lcom/umeng/socialize/bean/SnsPlatform;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->f:Lcom/umeng/socialize/bean/SnsPlatform;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/umeng/socialize/bean/SnsPlatform;)V
.end method

.method public a(Lcom/umeng/socialize/bean/SnsPlatform;I)V
    .locals 4

    .prologue
    .line 187
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->f:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 189
    iget v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->g:I

    if-eq v0, p2, :cond_0

    .line 190
    iput p2, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->g:I

    .line 192
    packed-switch p2, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/common/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;Z)V

    .line 235
    return-void

    .line 194
    :pswitch_0
    iget-boolean v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->j:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->k:Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f60\u786e\u5b9a\u7ed1\u5b9a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a:Landroid/app/Dialog;

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    .line 198
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 199
    const-string v3, "umeng_socialize_alert_button"

    .line 197
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 200
    const-string v1, "\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    .line 202
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 203
    const-string v3, "umeng_socialize_button_white_blue"

    .line 201
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-boolean v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->j:Z

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->k:Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f60\u786e\u5b9a\u89e3\u9664"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a:Landroid/app/Dialog;

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    .line 211
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 212
    const-string v3, "umeng_socialize_alert_button"

    .line 210
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 213
    const-string v1, "\u89e3\u9664\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    .line 215
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 216
    const-string v3, "umeng_socialize_button_red_blue"

    .line 214
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 220
    :pswitch_2
    iget-boolean v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->j:Z

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->k:Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f60\u786e\u5b9a\u89e3\u9664"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6388\u6743?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    .line 224
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 225
    const-string v3, "umeng_socialize_alert_button"

    .line 223
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 226
    const-string v1, "\u89e3\u9664\u6388\u6743"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->e:Landroid/content/Context;

    .line 228
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 229
    const-string v3, "umeng_socialize_button_red_blue"

    .line 227
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/umeng/socialize/bean/SnsPlatform;Z)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public abstract b(Lcom/umeng/socialize/bean/SnsPlatform;)V
.end method

.method public abstract c(Lcom/umeng/socialize/bean/SnsPlatform;)V
.end method

.method protected d(Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->i:Z

    .line 184
    return-void
.end method
