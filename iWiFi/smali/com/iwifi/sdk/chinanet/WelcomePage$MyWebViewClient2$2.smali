.class Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$2;
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


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2$2;->this$1:Lcom/iwifi/sdk/chinanet/WelcomePage$MyWebViewClient2;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 292
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 293
    return-void
.end method
