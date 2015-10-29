.class Lcom/umeng/socialize/controller/UMFacebookHandler$2;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/UMFacebookHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMFacebookHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$2;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 228
    const-string v0, "HelloFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Success! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$2;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    # getter for: Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->access$1(Lcom/umeng/socialize/controller/UMFacebookHandler;)Lcom/facebook/UiLifecycleHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 222
    const-string v0, "HelloFacebook"

    const-string v1, "Error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method
