.class public Lcom/pubinfo/izhejiang/Faq;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "Faq.java"


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field confirmButton:Landroid/widget/LinearLayout;

.field title:Ljava/lang/String;

.field titleTV:Landroid/widget/TextView;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 30
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/Faq;->setContentView(I)V

    .line 33
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/Faq;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->backButton:Landroid/widget/ImageButton;

    .line 34
    iget-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 35
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/Faq;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->confirmButton:Landroid/widget/LinearLayout;

    .line 36
    iget-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/Faq;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->titleTV:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/Faq;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->title:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->titleTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/Faq;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v1, 0x7f0a0063

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/Faq;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->webView:Landroid/webkit/WebView;

    .line 43
    iget-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 44
    .local v0, "wSet":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    iget-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->title:Ljava/lang/String;

    const-string v2, "\u4f7f\u7528\u534f\u8bae"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->webView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/izj-xieyi.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->title:Ljava/lang/String;

    const-string v2, "\u9690\u79c1\u6761\u6b3e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/pubinfo/izhejiang/Faq;->webView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/izj-yinsi.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
