.class Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$1;
.super Ljava/lang/Object;
.source "WelcomePage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$1;->this$1:Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;

    iput-object p2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$1;->val$url:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$1;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 232
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 233
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2$1;->this$1:Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;

    # getter for: Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;->access$0(Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;)Lcom/pubinfo/freewifialliance/view/WelcomePage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->startActivity(Landroid/content/Intent;)V

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 235
    return-void
.end method
