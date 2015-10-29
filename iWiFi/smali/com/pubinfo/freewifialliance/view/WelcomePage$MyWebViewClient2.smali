.class Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;
.super Landroid/webkit/WebViewClient;
.source "WelcomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/view/WelcomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/WelcomePage;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;)Lcom/pubinfo/freewifialliance/view/WelcomePage;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    return-object v0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 260
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 261
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 190
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 191
    :cond_0
    const/4 v4, 0x0

    .line 252
    :goto_0
    return v4

    .line 193
    :cond_1
    const-string v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    .line 195
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 194
    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    .local v0, "callIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-virtual {v5, v0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    .end local v0    # "callIntent":Landroid/content/Intent;
    :cond_2
    const-string v5, "rtsp://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 200
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 201
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 200
    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-virtual {v5, v3}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, ".apk"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 205
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    .line 206
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "_"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 205
    iput-object v6, v5, Lcom/pubinfo/freewifialliance/view/WelcomePage;->pack:Ljava/lang/String;

    .line 207
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    const-string v6, "_"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 208
    const-string v7, ".apk"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 207
    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/pubinfo/freewifialliance/view/WelcomePage;->launchActivity:Ljava/lang/String;

    .line 209
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v6, v6, Lcom/pubinfo/freewifialliance/view/WelcomePage;->pack:Ljava/lang/String;

    iget-object v7, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v7, v7, Lcom/pubinfo/freewifialliance/view/WelcomePage;->launchActivity:Ljava/lang/String;

    # invokes: Lcom/pubinfo/freewifialliance/view/WelcomePage;->isPackageExist(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v6, v7}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->access$0(Lcom/pubinfo/freewifialliance/view/WelcomePage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 211
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v5, v5, Lcom/pubinfo/freewifialliance/view/WelcomePage;->pack:Ljava/lang/String;

    .line 214
    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v6, v6, Lcom/pubinfo/freewifialliance/view/WelcomePage;->launchActivity:Ljava/lang/String;

    .line 213
    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-virtual {v5, v3}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 218
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    const-string v6, "\u8bf7\u4e0b\u8f7d\u6700\u65b0\u7248\u672c\uff01"

    # invokes: Lcom/pubinfo/freewifialliance/view/WelcomePage;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->access$1(Lcom/pubinfo/freewifialliance/view/WelcomePage;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const-string v7, "\u662f\u5426\u4e0b\u8f7d\u8be5\u5e94\u7528\uff1f"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 224
    const-string v7, "\u786e\u5b9a"

    .line 225
    new-instance v8, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$1;

    invoke-direct {v8, p0, p2}, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$1;-><init>(Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 237
    const-string v7, "\u53d6\u6d88"

    .line 238
    new-instance v8, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$2;

    invoke-direct {v8, p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$2;-><init>(Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;)V

    .line 237
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 244
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 222
    invoke-static {v5, v6}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->access$2(Lcom/pubinfo/freewifialliance/view/WelcomePage;Landroid/app/AlertDialog;)V

    .line 245
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    # getter for: Lcom/pubinfo/freewifialliance/view/WelcomePage;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->access$3(Lcom/pubinfo/freewifialliance/view/WelcomePage;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 251
    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
