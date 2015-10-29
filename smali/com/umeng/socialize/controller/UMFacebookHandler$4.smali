.class Lcom/umeng/socialize/controller/UMFacebookHandler$4;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/net/ImageUrlTask$OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/UMFacebookHandler;->uploadImage()V
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
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$4;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$4;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    invoke-static {v0, p1}, Lcom/umeng/socialize/controller/UMFacebookHandler;->access$4(Lcom/umeng/socialize/controller/UMFacebookHandler;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$4;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    # invokes: Lcom/umeng/socialize/controller/UMFacebookHandler;->executePostStatus()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->access$5(Lcom/umeng/socialize/controller/UMFacebookHandler;)V

    .line 675
    :cond_0
    return-void
.end method
