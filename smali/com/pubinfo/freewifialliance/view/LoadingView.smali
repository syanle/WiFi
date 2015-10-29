.class public Lcom/pubinfo/freewifialliance/view/LoadingView;
.super Lcom/pubinfo/freewifialliance/controller/LoadingFun;
.source "LoadingView.java"


# static fields
.field public static final STOP_SERVICE:Ljava/lang/String; = "stop"

.field public static final STOP_SP:Ljava/lang/String; = "service"


# instance fields
.field private iv_pageInnerLoading:Landroid/widget/ImageView;

.field private ll_pageInnerLoading:Landroid/widget/LinearLayout;

.field private msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoadingView;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 32
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoadingView;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoadingView;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 22
    return-void
.end method


# virtual methods
.method public doLoginAuthErr(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "\u5929\u7ffcwifi\u8054\u7f51\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/LoadingView;->showMsgToast(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/LoadingView;->finish()V

    .line 105
    return-void
.end method

.method public doLoginAuthSucc(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/pubinfo/freewifialliance/view/LoadingView;->setContentView(I)V

    .line 48
    invoke-static {p0}, Lcom/pubinfo/freewifialliance/parser/GeneralConfigParser;->parsingGeneralConfig(Landroid/content/Context;)V

    .line 50
    const-string v2, "service"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/pubinfo/freewifialliance/view/LoadingView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "stop"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "isStopString":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/LoadingView;->startWifiService()V

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/LoadingView;->installapk()V

    .line 58
    invoke-static {p0}, Lcom/bread/breadservice/BRD;->startBRDService(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->onDestroy()V

    .line 87
    return-void
.end method
