.class Lcom/cat/util/SMSCodeBroadcast$1;
.super Landroid/os/Handler;
.source "SMSCodeBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/util/SMSCodeBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/util/SMSCodeBroadcast;


# direct methods
.method constructor <init>(Lcom/cat/util/SMSCodeBroadcast;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/util/SMSCodeBroadcast$1;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 32
    .local v6, "smsContent":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 35
    const-string v4, "\\d+"

    .line 36
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 37
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 38
    .local v2, "ma":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 39
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "code":Ljava/lang/String;
    iget-object v8, p0, Lcom/cat/util/SMSCodeBroadcast$1;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    # getter for: Lcom/cat/util/SMSCodeBroadcast;->afterReceive:Lcom/cat/util/SMSCodeBroadcast$AfterReceive;
    invoke-static {v8}, Lcom/cat/util/SMSCodeBroadcast;->access$0(Lcom/cat/util/SMSCodeBroadcast;)Lcom/cat/util/SMSCodeBroadcast$AfterReceive;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/cat/util/SMSCodeBroadcast$AfterReceive;->autoFill(Ljava/lang/String;)V

    .line 41
    iget-object v8, p0, Lcom/cat/util/SMSCodeBroadcast$1;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    # getter for: Lcom/cat/util/SMSCodeBroadcast;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/cat/util/SMSCodeBroadcast;->access$1(Lcom/cat/util/SMSCodeBroadcast;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/cat/util/SMSCodeBroadcast$1;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    # getter for: Lcom/cat/util/SMSCodeBroadcast;->smsContentObserver:Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;
    invoke-static {v9}, Lcom/cat/util/SMSCodeBroadcast;->access$2(Lcom/cat/util/SMSCodeBroadcast;)Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "ma":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 69
    return-void

    .line 43
    .restart local v2    # "ma":Ljava/util/regex/Matcher;
    .restart local v3    # "pattern":Ljava/util/regex/Pattern;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    const-string v8, "\u60a8\u7684\u9a8c\u8bc1\u7801\u662f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "index1":I
    if-ltz v1, :cond_0

    .line 46
    const-string v8, "\u60a8\u7684\u9a8c\u8bc1\u7801\u662f"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v1, v8

    .line 47
    .local v7, "start":I
    add-int/lit8 v8, v7, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "smsCode":Ljava/lang/String;
    iget-object v8, p0, Lcom/cat/util/SMSCodeBroadcast$1;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    # getter for: Lcom/cat/util/SMSCodeBroadcast;->afterReceive:Lcom/cat/util/SMSCodeBroadcast$AfterReceive;
    invoke-static {v8}, Lcom/cat/util/SMSCodeBroadcast;->access$0(Lcom/cat/util/SMSCodeBroadcast;)Lcom/cat/util/SMSCodeBroadcast$AfterReceive;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/cat/util/SMSCodeBroadcast$AfterReceive;->autoFill(Ljava/lang/String;)V

    .line 59
    iget-object v8, p0, Lcom/cat/util/SMSCodeBroadcast$1;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    # getter for: Lcom/cat/util/SMSCodeBroadcast;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/cat/util/SMSCodeBroadcast;->access$1(Lcom/cat/util/SMSCodeBroadcast;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/cat/util/SMSCodeBroadcast$1;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    # getter for: Lcom/cat/util/SMSCodeBroadcast;->smsContentObserver:Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;
    invoke-static {v9}, Lcom/cat/util/SMSCodeBroadcast;->access$2(Lcom/cat/util/SMSCodeBroadcast;)Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
