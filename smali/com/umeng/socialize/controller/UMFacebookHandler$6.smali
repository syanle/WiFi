.class Lcom/umeng/socialize/controller/UMFacebookHandler$6;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/UMFacebookHandler;->executePostStatus()V
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
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    # invokes: Lcom/umeng/socialize/controller/UMFacebookHandler;->handleResponse(Lcom/facebook/Response;)V
    invoke-static {v0, p1}, Lcom/umeng/socialize/controller/UMFacebookHandler;->access$6(Lcom/umeng/socialize/controller/UMFacebookHandler;Lcom/facebook/Response;)V

    .line 723
    return-void
.end method
