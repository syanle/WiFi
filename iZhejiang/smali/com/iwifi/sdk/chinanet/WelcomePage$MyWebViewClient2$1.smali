.class Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$1;
.super Ljava/lang/Object;
.source "WelcomePage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$1;->this$1:Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;

    iput-object p2, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$1;->val$url:Ljava/lang/String;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 281
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v2, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$1;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 284
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 285
    iget-object v2, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$1;->this$1:Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;

    # getter for: Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->this$0:Lcom/iwifi/sdk/chinanet/WelcomePage;
    invoke-static {v2}, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;->access$0(Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;)Lcom/iwifi/sdk/chinanet/WelcomePage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iwifi/sdk/chinanet/WelcomePage;->startActivity(Landroid/content/Intent;)V

    .line 286
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 287
    return-void
.end method
