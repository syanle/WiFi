.class public Lcom/umeng/socialize/view/ShareActivity;
.super Lcom/umeng/socialize/view/abs/s;
.source "ShareActivity.java"


# static fields
.field public static final FOLLOW_FILE_NAME:Ljava/lang/String; = "umeng_follow"

.field private static synthetic J:[I = null

.field private static final b:Ljava/lang/String;

.field private static final c:I = 0x8c


# instance fields
.field private A:Lcom/umeng/socialize/location/a;

.field private B:Landroid/location/Location;

.field private C:I

.field private D:Z

.field private E:Lcom/umeng/socialize/view/bw;

.field private F:Lcom/umeng/socialize/media/UMediaObject;

.field private G:Z

.field private H:Lcom/umeng/socialize/bean/QQShareMsg;

.field private I:I

.field protected a:Landroid/widget/ImageView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/umeng/socialize/view/ab;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/CheckBox;

.field private q:Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

.field private r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private s:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private t:Lcom/umeng/socialize/bean/SocializeEntity;

.field private u:Landroid/app/ProgressDialog;

.field private v:Landroid/content/Context;

.field private w:Z

.field private x:Lcom/umeng/socialize/controller/UMSocialService;

.field private y:Ljava/lang/String;

.field private z:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/s;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Z

    .line 123
    iput-boolean v1, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    .line 126
    iput v1, p0, Lcom/umeng/socialize/view/ShareActivity;->I:I

    .line 89
    return-void
.end method

.method private a(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isDefaultShareLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->k()V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/umeng/socialize/view/ShareActivity;->C:I

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Landroid/location/Location;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/umeng/socialize/view/ShareActivity;->w:Z

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 929
    if-eqz p1, :cond_0

    .line 930
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    :goto_0
    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    .line 934
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_location_off"

    .line 933
    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 935
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    .line 939
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_location_on"

    .line 938
    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 940
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/view/ab;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->m:Lcom/umeng/socialize/view/ab;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/ShareActivity;I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/umeng/socialize/view/ShareActivity;->I:I

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/ShareActivity;Z)V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/ShareActivity;->a(Z)V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/ShareActivity;)Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Z

    return v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method static synthetic d()[I
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->J:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->values()[Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->WEBPAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/umeng/socialize/view/ShareActivity;->J:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic e(Lcom/umeng/socialize/view/ShareActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/view/bw;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/view/bw;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    const-string v1, "initLocationProvider....."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/umeng/socialize/location/a;

    invoke-direct {v0}, Lcom/umeng/socialize/location/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->A:Lcom/umeng/socialize/location/a;

    .line 234
    new-instance v0, Lcom/umeng/socialize/location/d;

    invoke-direct {v0}, Lcom/umeng/socialize/location/d;-><init>()V

    .line 235
    invoke-virtual {v0, p0}, Lcom/umeng/socialize/location/d;->a(Landroid/content/Context;)V

    .line 236
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->A:Lcom/umeng/socialize/location/a;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/location/a;->a(Lcom/umeng/socialize/location/d;)V

    .line 237
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->A:Lcom/umeng/socialize/location/a;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/location/a;->a(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    .line 239
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 240
    const-string v2, "umeng_socialize_location_off"

    .line 238
    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 241
    return-void
.end method

.method static synthetic g(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 247
    .line 248
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 249
    const-string v2, "umeng_socialize_share_edittext"

    .line 247
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    .line 250
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    if-nez v0, :cond_c

    .line 251
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 265
    :cond_0
    :goto_0
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 266
    const-string v2, "umeng_socialize_location_ic"

    .line 265
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 264
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    .line 268
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_location_progressbar"

    .line 267
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    new-instance v2, Lcom/umeng/socialize/view/bo;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/bo;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Z

    if-eqz v0, :cond_1

    .line 277
    sput-boolean v5, Lcom/umeng/socialize/view/ab;->b:Z

    .line 278
    new-instance v0, Lcom/umeng/socialize/view/bp;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/umeng/socialize/view/bp;-><init>(Lcom/umeng/socialize/view/ShareActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->m:Lcom/umeng/socialize/view/ab;

    .line 285
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->m:Lcom/umeng/socialize/view/ab;

    invoke-virtual {v0, v6}, Lcom/umeng/socialize/view/ab;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->q:Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->m:Lcom/umeng/socialize/view/ab;

    invoke-virtual {v0, v2, v3, v3}, Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;->addView(Landroid/view/View;II)V

    .line 292
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 293
    :cond_2
    new-instance v0, Lcom/umeng/socialize/view/bw;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Lcom/umeng/socialize/view/bw;-><init>(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/view/bw;

    .line 297
    :cond_3
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_share_at"

    .line 296
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->g:Landroid/widget/ImageButton;

    .line 304
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/common/c;->b(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 307
    :cond_5
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->m:Lcom/umeng/socialize/view/ab;

    if-nez v0, :cond_6

    .line 308
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 311
    :cond_6
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->g:Landroid/widget/ImageButton;

    new-instance v2, Lcom/umeng/socialize/view/bq;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/bq;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 331
    const-string v2, "umeng_socialize_share_word_num"

    .line 329
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->n:Landroid/widget/TextView;

    .line 332
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->n:Landroid/widget/TextView;

    const/16 v2, 0x8c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->w:Z

    .line 337
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 338
    const-string v2, "umeng_socialize_title_bar_leftBt"

    .line 336
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->d:Landroid/widget/Button;

    .line 339
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->d:Landroid/widget/Button;

    new-instance v2, Lcom/umeng/socialize/view/br;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/br;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 379
    const-string v2, "umeng_socialize_title_bar_rightBt"

    .line 377
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->e:Landroid/widget/Button;

    .line 382
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 383
    const-string v2, "umeng_socialize_title_bar_middleTv"

    .line 382
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 381
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 384
    iget-boolean v2, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    if-nez v2, :cond_d

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5206\u4eab\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p0, v3}, Lcom/umeng/socialize/common/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :goto_1
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 393
    const-string v2, "umeng_socialize_share_previewImg"

    .line 392
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 391
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    .line 395
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 396
    const-string v2, "umeng_socialize_share_previewImg_remove"

    .line 394
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->l:Landroid/view/View;

    .line 397
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->l:Landroid/view/View;

    new-instance v2, Lcom/umeng/socialize/view/bs;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/bs;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 406
    const-string v2, "umeng_socialize_share_previewImg_progressbar"

    .line 405
    invoke-static {p0, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 404
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 408
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    if-eqz v2, :cond_8

    .line 409
    iget v2, p0, Lcom/umeng/socialize/view/ShareActivity;->I:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 410
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/QQShareMsg;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 411
    new-instance v2, Lcom/umeng/socialize/media/UMImage;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/QQShareMsg;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    .line 421
    :cond_7
    :goto_2
    sget-object v2, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    const-string v3, "##### QQ SHARE, NEW MEDIA -----"

    invoke-static {v2, v3}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_8
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v2, :cond_9

    .line 424
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v2}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v2, v3, :cond_11

    .line 425
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    .line 426
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_share_music"

    .line 425
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 427
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 493
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 494
    const-string v3, "umeng_socialize_follow_layout"

    .line 493
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 492
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->o:Landroid/widget/RelativeLayout;

    .line 496
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v0, :cond_13

    .line 497
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 497
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getFollowFids(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/util/Set;

    move-result-object v0

    .line 501
    :goto_4
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->m()Z

    move-result v0

    if-nez v0, :cond_a

    .line 502
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_b

    .line 503
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_b

    .line 504
    :cond_a
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 507
    :cond_b
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_follow_check"

    .line 506
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->p:Landroid/widget/CheckBox;

    .line 509
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    .line 510
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 511
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    const-string v1, "\u53d1\u9001\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 514
    new-instance v0, Lcom/umeng/socialize/view/bu;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/bu;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 533
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 535
    new-instance v0, Lcom/umeng/socialize/view/bv;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/bv;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 581
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/bf;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/bf;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_post_fetch_image"

    .line 728
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 730
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getReceiveImageClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 732
    return-void

    .line 255
    :cond_c
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/QQShareMsg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 388
    :cond_d
    const-string v2, "\u5206\u4eab\u5230QQ"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 413
    :cond_e
    new-instance v2, Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 414
    iget-object v4, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/QQShareMsg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 413
    iput-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    goto/16 :goto_2

    .line 416
    :cond_f
    iget v2, p0, Lcom/umeng/socialize/view/ShareActivity;->I:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 417
    new-instance v2, Lcom/umeng/socialize/media/UMusic;

    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/QQShareMsg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/socialize/media/UMusic;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    goto/16 :goto_2

    .line 418
    :cond_10
    iget v2, p0, Lcom/umeng/socialize/view/ShareActivity;->I:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 419
    new-instance v2, Lcom/umeng/socialize/media/UMVideo;

    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/QQShareMsg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/socialize/media/UMVideo;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    goto/16 :goto_2

    .line 430
    :cond_11
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v2}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v2, v3, :cond_12

    .line 431
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    .line 432
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_share_video"

    .line 431
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 433
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 436
    :cond_12
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v2}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v2, v3, :cond_9

    .line 437
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    .line 439
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_share_pic"

    .line 438
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 440
    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    new-instance v4, Lcom/umeng/socialize/view/bt;

    invoke-direct {v4, p0, v0, v2}, Lcom/umeng/socialize/view/bt;-><init>(Lcom/umeng/socialize/view/ShareActivity;Landroid/widget/ProgressBar;I)V

    invoke-interface {v3, v4}, Lcom/umeng/socialize/media/UMediaObject;->toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    goto/16 :goto_3

    :cond_13
    move-object v0, v1

    goto/16 :goto_4
.end method

.method static synthetic h(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 758
    .line 759
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 760
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v0

    .line 758
    rsub-int v0, v0, 0x8c

    .line 762
    sget-object v1, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTextChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 765
    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 766
    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 767
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 766
    invoke-static {v3}, Lcom/umeng/socialize/common/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    if-ltz v0, :cond_0

    .line 772
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    const/4 v0, 0x0

    .line 778
    :goto_0
    return v0

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 811
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 812
    const-string v1, "\u662f\u5426\u5220\u9664\u4f4d\u7f6e\u4fe1\u606f\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 813
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 814
    const-string v1, "\u662f"

    .line 815
    new-instance v2, Lcom/umeng/socialize/view/bi;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/bi;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 814
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 824
    const-string v1, "\u5426"

    .line 825
    new-instance v2, Lcom/umeng/socialize/view/bj;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/bj;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 824
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->k()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Lcom/umeng/socialize/bean/SocializeEntity;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 839
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 840
    const-string v0, ""

    .line 841
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_0

    .line 842
    invoke-static {}, Lcom/umeng/socialize/view/ShareActivity;->d()[I

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v2}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 855
    :cond_0
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4f60\u786e\u5b9a\u5220\u9664"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5417\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 857
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 858
    const-string v1, "\u786e\u5b9a"

    .line 859
    new-instance v2, Lcom/umeng/socialize/view/bk;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/bk;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 858
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 895
    const-string v1, "\u53d6\u6d88"

    .line 896
    new-instance v2, Lcom/umeng/socialize/view/bl;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/bl;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 895
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 905
    :cond_1
    return-void

    .line 844
    :pswitch_0
    const-string v0, "\u97f3\u4e50"

    goto :goto_0

    .line 847
    :pswitch_1
    const-string v0, "\u56fe\u7247"

    goto :goto_0

    .line 850
    :pswitch_2
    const-string v0, "\u89c6\u9891"

    goto :goto_0

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private k()V
    .locals 2

    .prologue
    .line 908
    new-instance v0, Lcom/umeng/socialize/view/bm;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->A:Lcom/umeng/socialize/location/a;

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/view/bm;-><init>(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/location/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 925
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/bm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 926
    return-void
.end method

.method static synthetic k(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->j()V

    return-void
.end method

.method static synthetic l(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 992
    .line 993
    const-string v0, "umeng_follow"

    const/4 v1, 0x0

    .line 992
    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 994
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 995
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 996
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 997
    return-void
.end method

.method static synthetic m(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method private m()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1011
    .line 1012
    const-string v0, "umeng_follow"

    .line 1011
    invoke-virtual {p0, v0, v2}, Lcom/umeng/socialize/view/ShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1014
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1015
    return v0
.end method

.method static synthetic n(Lcom/umeng/socialize/view/ShareActivity;)Z
    .locals 1

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic p(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->e()V

    return-void
.end method

.method static synthetic q(Lcom/umeng/socialize/view/ShareActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/umeng/socialize/view/ShareActivity;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->w:Z

    return v0
.end method

.method static synthetic s(Lcom/umeng/socialize/view/ShareActivity;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    return v0
.end method

.method static synthetic t(Lcom/umeng/socialize/view/ShareActivity;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic u(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-object v0
.end method

.method static synthetic v(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic x(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->l()V

    return-void
.end method

.method static synthetic y(Lcom/umeng/socialize/view/ShareActivity;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/umeng/socialize/view/ShareActivity;->I:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 972
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 973
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 803
    if-eqz p1, :cond_0

    .line 804
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 805
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 807
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 738
    iget v0, p0, Lcom/umeng/socialize/view/ShareActivity;->C:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 739
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 740
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 741
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 740
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 742
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/socialize/view/bh;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/bh;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 747
    const-wide/16 v2, 0x1f4

    .line 742
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 752
    :goto_0
    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->finish()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 947
    sget-boolean v0, Lcom/umeng/socialize/common/SocializeConstants;->BACKKEY_COMPLETE_CLOSE:Z

    if-eqz v0, :cond_2

    .line 949
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 950
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 953
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/socialize/view/bn;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/bn;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 958
    const-wide/16 v2, 0x190

    .line 953
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 960
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->cleanListeners()Z

    .line 963
    :cond_1
    const/4 v0, 0x1

    .line 966
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/umeng/socialize/view/abs/s;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public inputAt(Landroid/text/SpannableString;)V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 977
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 978
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-static {p0}, Lcom/umeng/socialize/common/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Z

    .line 140
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Z

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 142
    const-string v1, "Theme.UMDefault"

    .line 141
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->setTheme(I)V

    .line 144
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/socialize/view/abs/s;->onCreate(Landroid/os/Bundle;)V

    .line 145
    iput-object p0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    .line 147
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_post_share"

    .line 146
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->setContentView(I)V

    .line 148
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 149
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 151
    iget-boolean v1, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Z

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/common/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v1

    .line 153
    aget v2, v1, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 154
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 161
    const-string v1, "umeng_socialize_share_root"

    .line 160
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->q:Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

    .line 163
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->q:Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

    new-instance v1, Lcom/umeng/socialize/view/be;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/be;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;->setOnKeyboardStateChangedListener(Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout$IOnKeyboardStateChangedListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QQ-SSO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QQ-SSO"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    const-string v1, "dc"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 182
    const-string v1, "sns"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 185
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-nez v0, :cond_3

    .line 186
    const-string v0, "\u51fa\u9519\u5566\uff01"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->b()V

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    const-string v1, "####No EntityPool key.............."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->b()V

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Ljava/lang/String;

    .line 196
    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 195
    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Lcom/umeng/socialize/media/UMediaObject;

    .line 200
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 201
    const/16 v2, 0xf

    .line 200
    invoke-virtual {v0, p0, v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 202
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Z

    if-eqz v0, :cond_5

    .line 203
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "share_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/QQShareMsg;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->H:Lcom/umeng/socialize/bean/QQShareMsg;

    .line 204
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/ShareActivity;->I:I

    .line 210
    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 793
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/s;->onDestroy()V

    .line 794
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->A:Lcom/umeng/socialize/location/a;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->A:Lcom/umeng/socialize/location/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/location/a;->a()V

    .line 798
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->s:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 799
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->g()V

    .line 215
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->f()V

    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->a(Lcom/umeng/socialize/bean/SocializeConfig;)V

    .line 220
    :cond_0
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/s;->onResume()V

    .line 221
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 784
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/s;->onStop()V

    .line 785
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    const-string v1, "\u53d1\u9001\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 789
    :cond_0
    return-void
.end method
