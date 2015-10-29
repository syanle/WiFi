.class Lcom/umeng/socialize/controller/UMQQSsoHandler$TimeOutHandler;
.super Landroid/os/Handler;
.source "UMQQSsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/UMQQSsoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeOutHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler$TimeOutHandler;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$TimeOutHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 302
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$3()V

    .line 303
    const-string v0, ""

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$4(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method
