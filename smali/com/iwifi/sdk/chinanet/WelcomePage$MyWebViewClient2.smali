.class Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;
.super Landroid/webkit/WebViewClient;
.source "WelcomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/chinanet/WelcomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/chinanet/WelcomePage;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;)Lcom/iwifi/sdk/chinanet/WelcomePage;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    return-object v0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 310
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 311
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 240
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 241
    :cond_0
    const/4 v3, 0x0

    .line 302
    :goto_0
    return v3

    .line 243
    :cond_1
    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    .line 245
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 244
    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v0, "callIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    invoke-virtual {v4, v0}, Lcom/iwifi/sdk/chinanet/WelcomePage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    .end local v0    # "callIntent":Landroid/content/Intent;
    :cond_2
    const-string v4, "rtsp://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 251
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 250
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    invoke-virtual {v4, v2}, Lcom/iwifi/sdk/chinanet/WelcomePage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v4, ".apk"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 255
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    .line 256
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "_"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 255
    iput-object v5, v4, Lcom/iwifi/sdk/chinanet/WelcomePage;->pack:Ljava/lang/String;

    .line 257
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    const-string v5, "_"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 258
    const-string v6, ".apk"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 257
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/iwifi/sdk/chinanet/WelcomePage;->launchActivity:Ljava/lang/String;

    .line 259
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    iget-object v5, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    iget-object v5, v5, Lcom/iwifi/sdk/chinanet/WelcomePage;->pack:Ljava/lang/String;

    iget-object v6, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    iget-object v6, v6, Lcom/iwifi/sdk/chinanet/WelcomePage;->launchActivity:Ljava/lang/String;

    # invokes: Lcom/iwifi/sdk/chinanet/WelcomePage;->isPackageExist(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/iwifi/sdk/chinanet/WelcomePage;->access$0(Lcom/iwifi/sdk/chinanet/WelcomePage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 261
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    iget-object v4, v4, Lcom/iwifi/sdk/chinanet/WelcomePage;->pack:Ljava/lang/String;

    .line 264
    iget-object v5, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    iget-object v5, v5, Lcom/iwifi/sdk/chinanet/WelcomePage;->launchActivity:Ljava/lang/String;

    .line 263
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 266
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    invoke-virtual {v4, v2}, Lcom/iwifi/sdk/chinanet/WelcomePage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 268
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 272
    :cond_4
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    const-string v6, "\u662f\u5426\u4e0b\u8f7d\u8be5\u5e94\u7528\uff1f"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 274
    const-string v6, "\u786e\u5b9a"

    .line 275
    new-instance v7, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$1;

    invoke-direct {v7, p0, p2}, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$1;-><init>(Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 287
    const-string v6, "\u53d6\u6d88"

    .line 288
    new-instance v7, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$2;

    invoke-direct {v7, p0}, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$2;-><init>(Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;)V

    .line 287
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 294
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 272
    invoke-static {v4, v5}, Lcom/iwifi/sdk/chinanet/WelcomePage;->access$1(Lcom/iwifi/sdk/chinanet/WelcomePage;Landroid/app/AlertDialog;)V

    .line 295
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;

    # getter for: Lcom/iwifi/sdk/chinanet/WelcomePage;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/iwifi/sdk/chinanet/WelcomePage;->access$2(Lcom/iwifi/sdk/chinanet/WelcomePage;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 301
    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
