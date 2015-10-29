.class Lcom/umeng/socialize/controller/UMFacebookHandler$1;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


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
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$1;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler$1;->this$0:Lcom/umeng/socialize/controller/UMFacebookHandler;

    # invokes: Lcom/umeng/socialize/controller/UMFacebookHandler;->onStatusChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2, p3}, Lcom/umeng/socialize/controller/UMFacebookHandler;->access$0(Lcom/umeng/socialize/controller/UMFacebookHandler;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 212
    return-void
.end method
