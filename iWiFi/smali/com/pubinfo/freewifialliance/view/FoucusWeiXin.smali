.class public Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "FoucusWeiXin.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field fresh:Landroid/widget/ImageButton;

.field fresh2:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->setContentView(I)V

    .line 35
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->fresh:Landroid/widget/ImageButton;

    .line 36
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->fresh:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 37
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->fresh2:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->fresh2:Landroid/widget/Button;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 39
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->fresh2:Landroid/widget/Button;

    const-string v1, "\u524d\u5f80"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->fresh2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    const-string v0, "wxa603e0696280ef9c"

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 42
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->fresh2:Landroid/widget/Button;

    new-instance v1, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin$1;

    invoke-direct {v1, p0}, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin$1;-><init>(Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tencent/mm/sdk/openapi/BaseReq;

    .prologue
    .line 57
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/openapi/BaseResp;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tencent/mm/sdk/openapi/BaseResp;

    .prologue
    .line 62
    return-void
.end method
