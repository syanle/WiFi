.class Lcom/umeng/socialize/controller/UMQQSsoHandler$6;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

.field private final synthetic val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$6;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$6;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$6;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$6;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->loginDeal(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$19(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 388
    return-void
.end method
