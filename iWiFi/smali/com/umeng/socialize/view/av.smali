.class public Lcom/umeng/socialize/view/av;
.super Landroid/app/Dialog;
.source "OauthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/av$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static synthetic p:[I


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/CheckBox;

.field private g:I

.field private h:Landroid/os/Bundle;

.field private i:Lcom/umeng/socialize/controller/UMSocialService;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/umeng/socialize/view/av;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/av;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 112
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 113
    const-string v1, "umeng_socialize_popup_dialog"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    iput v7, p0, Lcom/umeng/socialize/view/av;->g:I

    .line 85
    const-string v0, "error"

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->j:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/umeng/socialize/view/aw;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/aw;-><init>(Lcom/umeng/socialize/view/av;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->o:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    .line 116
    iput-object p4, p0, Lcom/umeng/socialize/view/av;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 117
    iput-object p3, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 119
    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 120
    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 119
    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->i:Lcom/umeng/socialize/controller/UMSocialService;

    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->i:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->getFollowFids(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/view/av;->m:Ljava/util/Set;

    .line 123
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getOauthDialogFollowListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->n:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    .line 125
    invoke-static {}, Lcom/umeng/socialize/view/av;->b()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    .line 147
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    .line 149
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_oauth_dialog"

    .line 148
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 149
    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 152
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_follow"

    .line 151
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 153
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 154
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 155
    const-string v4, "umeng_socialize_follow_check"

    .line 154
    invoke-static {v1, v2, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->f:Landroid/widget/CheckBox;

    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->m:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 159
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p3, v0, :cond_1

    .line 160
    :cond_0
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "progress_bar_parent"

    .line 165
    invoke-static {v1, v2, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->e:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 170
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 171
    const-string v4, "umeng_socialize_title_bar_leftBt"

    .line 170
    invoke-static {v1, v2, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 172
    new-instance v1, Lcom/umeng/socialize/view/ax;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ax;-><init>(Lcom/umeng/socialize/view/av;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 179
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 180
    const-string v4, "umeng_socialize_title_bar_rightBt"

    .line 179
    invoke-static {v1, v2, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 184
    const-string v4, "umeng_socialize_title_bar_middleTv"

    .line 183
    invoke-static {v1, v2, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6388\u6743"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/umeng/socialize/common/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0}, Lcom/umeng/socialize/view/av;->c()Z

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 191
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_titlebar"

    .line 190
    invoke-static {v1, v2, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 193
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socom/util/i;->a(Landroid/content/Context;)V

    .line 194
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lcom/umeng/socom/util/i;->a(F)I

    move-result v5

    .line 196
    new-instance v0, Lcom/umeng/socialize/view/ay;

    iget-object v2, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/view/ay;-><init>(Lcom/umeng/socialize/view/av;Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)V

    .line 241
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/av;->setContentView(Landroid/view/View;)V

    .line 246
    invoke-virtual {p0}, Lcom/umeng/socialize/view/av;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 250
    aget v2, v0, v7

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 251
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 252
    invoke-virtual {p0}, Lcom/umeng/socialize/view/av;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 253
    const-string v3, "umeng_socialize_dialog_anim_fade"

    .line 252
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 260
    :goto_2
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 262
    invoke-virtual {p0}, Lcom/umeng/socialize/view/av;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 263
    return-void

    .line 127
    :pswitch_1
    const-string v0, "http://sns.whalecloud.com/sina2/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :pswitch_2
    const-string v0, "http://sns.whalecloud.com/tenc2/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    :pswitch_3
    const-string v0, "http://sns.whalecloud.com/renr2/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :pswitch_4
    const-string v0, "http://sns.whalecloud.com/douban/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 142
    :pswitch_5
    const-string v0, "http://sns.whalecloud.com/qzone/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 162
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 255
    :cond_2
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 256
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 257
    invoke-virtual {p0}, Lcom/umeng/socialize/view/av;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 258
    const-string v3, "umeng_socialize_dialog_animations"

    .line 257
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/umeng/socialize/view/av;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/umeng/socialize/view/av;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 287
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://log.umsns.com/share/auth/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    iget-object v1, p1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    .line 292
    const/16 v2, 0xa

    .line 291
    invoke-static {v0, p1, v2}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->getBaseQuery(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;I)Ljava/util/Map;

    move-result-object v2

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "via="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 304
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ud_get="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/umeng/socom/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    :goto_1
    return-object v0

    .line 294
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/av;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/av;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 541
    :try_start_0
    const-string v0, "ud_get="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 542
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/umeng/socom/util/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 542
    aput-object v2, v0, v1

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 549
    :goto_0
    return-object p1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    sget-object v1, Lcom/umeng/socialize/view/av;->a:Ljava/lang/String;

    const-string v2, "### AuthWebViewClient\u89e3\u5bc6\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/av;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/umeng/socialize/view/av;->g:I

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/av;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/umeng/socialize/view/av;->h:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/av;)V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/umeng/socialize/view/av;->e()V

    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/umeng/socialize/view/av;->p:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->values()[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_2
    :try_start_2
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_3
    :try_start_3
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_4
    :try_start_4
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_5
    :try_start_5
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_6
    :try_start_6
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_7
    :try_start_7
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_8
    :try_start_8
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_9
    :try_start_9
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_a
    :try_start_a
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_b
    :try_start_b
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_c
    :try_start_c
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_d
    :try_start_d
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_e
    :try_start_e
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_f
    :try_start_f
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_10
    :try_start_10
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_11
    :try_start_11
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_12
    :try_start_12
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_13
    sput-object v0, Lcom/umeng/socialize/view/av;->p:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_13

    :catch_1
    move-exception v1

    goto :goto_12

    :catch_2
    move-exception v1

    goto :goto_11

    :catch_3
    move-exception v1

    goto :goto_10

    :catch_4
    move-exception v1

    goto :goto_f

    :catch_5
    move-exception v1

    goto :goto_e

    :catch_6
    move-exception v1

    goto :goto_d

    :catch_7
    move-exception v1

    goto :goto_c

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto/16 :goto_8

    :catch_c
    move-exception v1

    goto/16 :goto_7

    :catch_d
    move-exception v1

    goto/16 :goto_6

    :catch_e
    move-exception v1

    goto/16 :goto_5

    :catch_f
    move-exception v1

    goto/16 :goto_4

    :catch_10
    move-exception v1

    goto/16 :goto_3

    :catch_11
    move-exception v1

    goto/16 :goto_2

    :catch_12
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/umeng/socialize/view/av;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    return-object v0
.end method

.method private c()Z
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 318
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->d:Landroid/view/View;

    .line 319
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "webView"

    .line 318
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    .line 321
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/umeng/socialize/view/av;->d()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 322
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/socialize/view/bb;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/bb;-><init>(Lcom/umeng/socialize/view/av;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 335
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 336
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 339
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 341
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 343
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_0

    .line 346
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 348
    :cond_0
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 349
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 350
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 351
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 352
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 354
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_1

    .line 355
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 356
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 357
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 358
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 359
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 362
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 365
    :try_start_0
    const-class v1, Landroid/webkit/WebSettings;

    .line 366
    const-string v2, "setDisplayZoomControls"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 365
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 367
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 368
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_3

    .line 377
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 378
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    :cond_3
    :goto_1
    return v6

    .line 382
    :catch_0
    move-exception v0

    goto :goto_1

    .line 369
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private d()Landroid/webkit/WebViewClient;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    .line 397
    :try_start_0
    const-class v2, Landroid/webkit/WebViewClient;

    const-string v3, "onReceivedSslError"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 398
    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/SslErrorHandler;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/net/http/SslError;

    aput-object v6, v4, v5

    .line 397
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 399
    if-eqz v2, :cond_1

    .line 406
    :goto_0
    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lcom/umeng/socialize/view/av;->a:Ljava/lang/String;

    const-string v1, "has method onReceivedSslError : "

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v0, Lcom/umeng/socialize/view/bc;

    invoke-direct {v0, p0, p0}, Lcom/umeng/socialize/view/bc;-><init>(Lcom/umeng/socialize/view/av;Lcom/umeng/socialize/view/av;)V

    .line 417
    :goto_1
    return-object v0

    .line 402
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 403
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 416
    :cond_0
    sget-object v0, Lcom/umeng/socialize/view/av;->a:Ljava/lang/String;

    const-string v1, "has no method onReceivedSslError : "

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Lcom/umeng/socialize/view/av$a;

    invoke-direct {v0, p0, v7, v7}, Lcom/umeng/socialize/view/av$a;-><init>(Lcom/umeng/socialize/view/av;Lcom/umeng/socialize/view/av$a;Lcom/umeng/socialize/view/av$a;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/av;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/av;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 614
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->m:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/av;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 616
    const/4 v0, 0x0

    .line 617
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->m:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->i:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v4, p0, Lcom/umeng/socialize/view/av;->n:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/umeng/socialize/controller/UMSocialService;->follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V

    .line 621
    invoke-direct {p0}, Lcom/umeng/socialize/view/av;->f()V

    .line 623
    :cond_0
    return-void

    .line 617
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 618
    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/av;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/umeng/socialize/view/av;->g:I

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    .line 640
    const-string v1, "umeng_follow"

    .line 641
    const/4 v2, 0x0

    .line 640
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 642
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/umeng/socialize/view/av;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->m:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/av;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/av;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/av;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->h:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 592
    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    const-string v2, "unfetch usid..."

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 591
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 610
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 611
    return-void

    .line 596
    :cond_1
    sget-object v0, Lcom/umeng/socialize/view/av;->a:Ljava/lang/String;

    const-string v1, "### dismiss "

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/av;->h:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 600
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->f:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/av;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 391
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 554
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/av;->h:Landroid/os/Bundle;

    .line 556
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->i:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 557
    iget-boolean v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v0, v1}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/umeng/socialize/view/av;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 583
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/av;->i:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/av;->k:Landroid/content/Context;

    new-instance v2, Lcom/umeng/socialize/view/bd;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/bd;-><init>(Lcom/umeng/socialize/view/av;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->initEntity(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    goto :goto_0
.end method
