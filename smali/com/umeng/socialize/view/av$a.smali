.class Lcom/umeng/socialize/view/av$a;
.super Landroid/webkit/WebViewClient;
.source "OauthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/umeng/socialize/view/av;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/av;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/av;Lcom/umeng/socialize/view/av$a;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/av$a;-><init>(Lcom/umeng/socialize/view/av;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/av;Lcom/umeng/socialize/view/av$a;Lcom/umeng/socialize/view/av$a;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/av$a;-><init>(Lcom/umeng/socialize/view/av;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 511
    invoke-static {}, Lcom/umeng/socialize/view/av;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OauthDialog "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/view/av;I)V

    .line 513
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/view/av;Landroid/os/Bundle;)V

    .line 519
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 522
    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->e(Lcom/umeng/socialize/view/av;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->f(Lcom/umeng/socialize/view/av;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->d(Lcom/umeng/socialize/view/av;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/av$a;->a(Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 481
    const-string v0, "?ud_get="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0, p2}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/view/av;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 485
    :cond_0
    const-string v0, "access_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "access_secret"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->d(Lcom/umeng/socialize/view/av;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/av$a;->a(Ljava/lang/String;)V

    .line 492
    :cond_1
    :goto_0
    return-void

    .line 491
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 468
    invoke-static {}, Lcom/umeng/socialize/view/av;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nerrCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 469
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/view/av;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/view/av;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 477
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->c(Lcom/umeng/socialize/view/av;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->c(Lcom/umeng/socialize/view/av;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u62b1\u6b49,\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 442
    const/4 v0, 0x1

    .line 462
    :goto_0
    return v0

    .line 445
    :cond_0
    const-string v0, "?ud_get="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0, p2}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/view/av;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/av$a;->b:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->d(Lcom/umeng/socialize/view/av;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/av$a;->a(Ljava/lang/String;)V

    .line 462
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
