.class Lcom/umeng/socialize/controller/UMQQSsoHandler$1;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$1;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$1;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$0(Lcom/umeng/socialize/controller/UMQQSsoHandler;Z)V

    .line 316
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "\u7f51\u7edc\u8d85\u65f6, \u8bf7\u91cd\u8bd5..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$1;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$1(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 319
    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 320
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$1;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$1(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void
.end method
