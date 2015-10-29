.class Lcom/bread/breadservice/BRDDesktopActivity$1;
.super Ljava/lang/Object;
.source "BRDDesktopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bread/breadservice/BRDDesktopActivity;->showImageviewAds(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bread/breadservice/BRDDesktopActivity;


# direct methods
.method constructor <init>(Lcom/bread/breadservice/BRDDesktopActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bread/breadservice/BRDDesktopActivity$1;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    const-string v0, "test"

    const-string v1, "iv_ad click ok!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/bread/breadservice/BRDDesktopActivity$1;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    # getter for: Lcom/bread/breadservice/BRDDesktopActivity;->apkpath:Ljava/lang/String;
    invoke-static {v0}, Lcom/bread/breadservice/BRDDesktopActivity;->access$0(Lcom/bread/breadservice/BRDDesktopActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bread/breadservice/BRDDesktopActivity$1;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    iget-object v1, p0, Lcom/bread/breadservice/BRDDesktopActivity$1;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    # getter for: Lcom/bread/breadservice/BRDDesktopActivity;->apkpath:Ljava/lang/String;
    invoke-static {v1}, Lcom/bread/breadservice/BRDDesktopActivity;->access$0(Lcom/bread/breadservice/BRDDesktopActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/bread/breadservice/BRDDesktopActivity;->startInstallIntent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bread/breadservice/BRDDesktopActivity;->access$1(Lcom/bread/breadservice/BRDDesktopActivity;Ljava/lang/String;)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/bread/breadservice/BRDDesktopActivity$1;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    invoke-virtual {v0}, Lcom/bread/breadservice/BRDDesktopActivity;->finish()V

    .line 90
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/bread/breadservice/BRDDesktopActivity$1;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    # getter for: Lcom/bread/breadservice/BRDDesktopActivity;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/bread/breadservice/BRDDesktopActivity;->access$2(Lcom/bread/breadservice/BRDDesktopActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/bread/breadservice/BRDDesktopActivity$1;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    iget-object v1, p0, Lcom/bread/breadservice/BRDDesktopActivity$1;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    # getter for: Lcom/bread/breadservice/BRDDesktopActivity;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/bread/breadservice/BRDDesktopActivity;->access$2(Lcom/bread/breadservice/BRDDesktopActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/bread/breadservice/BRDDesktopActivity;->startWebIntent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bread/breadservice/BRDDesktopActivity;->access$3(Lcom/bread/breadservice/BRDDesktopActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "test"

    const-string v1, "desktop error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
