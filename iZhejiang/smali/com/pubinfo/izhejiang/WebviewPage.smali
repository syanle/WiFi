.class public Lcom/pubinfo/izhejiang/WebviewPage;
.super Landroid/app/Activity;
.source "WebviewPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field activity:Ljava/lang/String;

.field final acty:Landroid/app/Activity;

.field private authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

.field protected btnBack:Landroid/widget/ImageButton;

.field goods:Ljava/lang/String;

.field protected handler:Landroid/os/Handler;

.field lat:Ljava/lang/Double;

.field layout1:Landroid/widget/LinearLayout;

.field lon:Ljava/lang/Double;

.field name:Ljava/lang/String;

.field next_map:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object p0, p0, Lcom/pubinfo/izhejiang/WebviewPage;->acty:Landroid/app/Activity;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    .line 171
    new-instance v0, Lcom/pubinfo/izhejiang/WebviewPage$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/WebviewPage$1;-><init>(Lcom/pubinfo/izhejiang/WebviewPage;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/WebviewPage;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/WebviewPage;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    return-object v0
.end method

.method private getRespStatus(Ljava/lang/String;)I
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v3, -0x1

    .line 162
    .local v3, "status":I
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "head":Lorg/apache/http/client/methods/HttpHead;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 164
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 165
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 168
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "head":Lorg/apache/http/client/methods/HttpHead;
    .end local v2    # "resp":Lorg/apache/http/HttpResponse;
    :goto_0
    return v3

    .line 166
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/WebviewPage;->finish()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "goods"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage;->goods:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "url"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "type"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "lat"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 225
    const-string v1, "lon"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage;->lon:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 226
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/pubinfo/izhejiang/WebviewPage;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/WebviewPage;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/WebviewPage;->setContentView(I)V

    .line 52
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/WebviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->btnBack:Landroid/widget/ImageButton;

    .line 53
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/WebviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->layout1:Landroid/widget/LinearLayout;

    .line 55
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/WebviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->title:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0a002f

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/WebviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->next_map:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/WebviewPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->activity:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->activity:Ljava/lang/String;

    const-string v2, "AroundFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v1, "goods"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->goods:Ljava/lang/String;

    .line 63
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->type:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->lat:Ljava/lang/Double;

    .line 65
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->lon:Ljava/lang/Double;

    .line 66
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->next_map:Landroid/widget/TextView;

    const-string v2, "\u5730\u56fe"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->next_map:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/WebviewPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    const v3, 0x7f080001

    .line 67
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 72
    :cond_0
    :goto_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->url:Ljava/lang/String;

    .line 73
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->name:Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    invoke-direct {v1}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;-><init>()V

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    .line 77
    new-instance v1, Lcom/pubinfo/izhejiang/WebviewPage$2;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/WebviewPage$2;-><init>(Lcom/pubinfo/izhejiang/WebviewPage;)V

    .line 98
    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/WebviewPage$2;->start()V

    .line 100
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v1, 0x7f0a00eb

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/WebviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    .line 103
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 107
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 108
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 110
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 112
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 113
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 157
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->activity:Ljava/lang/String;

    const-string v2, "AroundMoreActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage;->layout1:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 204
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/WebviewPage;->finish()V

    .line 211
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 186
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    return-void
.end method
