.class public Lcom/cat/util/SMSCodeBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "SMSCodeBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/util/SMSCodeBroadcast$AfterReceive;,
        Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;
    }
.end annotation


# instance fields
.field private afterReceive:Lcom/cat/util/SMSCodeBroadcast$AfterReceive;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private index:I

.field private smsContentObserver:Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/cat/util/SMSCodeBroadcast;->index:I

    .line 27
    new-instance v0, Lcom/cat/util/SMSCodeBroadcast$1;

    invoke-direct {v0, p0}, Lcom/cat/util/SMSCodeBroadcast$1;-><init>(Lcom/cat/util/SMSCodeBroadcast;)V

    iput-object v0, p0, Lcom/cat/util/SMSCodeBroadcast;->handler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cat/util/SMSCodeBroadcast$AfterReceive;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "afterReceive"    # Lcom/cat/util/SMSCodeBroadcast$AfterReceive;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/cat/util/SMSCodeBroadcast;->index:I

    .line 27
    new-instance v0, Lcom/cat/util/SMSCodeBroadcast$1;

    invoke-direct {v0, p0}, Lcom/cat/util/SMSCodeBroadcast$1;-><init>(Lcom/cat/util/SMSCodeBroadcast;)V

    iput-object v0, p0, Lcom/cat/util/SMSCodeBroadcast;->handler:Landroid/os/Handler;

    .line 78
    iput-object p2, p0, Lcom/cat/util/SMSCodeBroadcast;->afterReceive:Lcom/cat/util/SMSCodeBroadcast$AfterReceive;

    .line 79
    new-instance v0, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;-><init>(Lcom/cat/util/SMSCodeBroadcast;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cat/util/SMSCodeBroadcast;->smsContentObserver:Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;

    .line 80
    iput-object p1, p0, Lcom/cat/util/SMSCodeBroadcast;->context:Landroid/content/Context;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cat/util/SMSCodeBroadcast;->smsContentObserver:Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cat/util/SMSCodeBroadcast;)Lcom/cat/util/SMSCodeBroadcast$AfterReceive;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cat/util/SMSCodeBroadcast;->afterReceive:Lcom/cat/util/SMSCodeBroadcast$AfterReceive;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cat/util/SMSCodeBroadcast;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cat/util/SMSCodeBroadcast;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cat/util/SMSCodeBroadcast;)Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cat/util/SMSCodeBroadcast;->smsContentObserver:Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cat/util/SMSCodeBroadcast;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cat/util/SMSCodeBroadcast;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private accessMessage([Landroid/telephony/SmsMessage;)V
    .locals 9
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 150
    const-string v2, ""

    .line 151
    .local v2, "msgContent":Ljava/lang/String;
    const-string v0, ""

    .line 152
    .local v0, "address":Ljava/lang/String;
    const-string v3, ""

    .line 153
    .local v3, "msg_body":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    .local v4, "sb":Ljava/lang/StringBuffer;
    array-length v7, p1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    const-string v6, "\u60a8\u7684\u9a8c\u8bc1\u7801\u662f"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\u7231WiFi"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 167
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 168
    .local v1, "message":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iget-object v6, p0, Lcom/cat/util/SMSCodeBroadcast;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void

    .line 154
    :cond_1
    aget-object v5, p1, v6

    .line 156
    .local v5, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    const/4 v5, 0x0

    .line 154
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    const-string v6, "pdus"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 134
    .local v1, "messages":[Ljava/lang/Object;
    array-length v6, v1

    new-array v4, v6, [[B

    .line 136
    .local v4, "pduObjs":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-lt v0, v6, :cond_0

    .line 139
    array-length v6, v4

    new-array v5, v6, [[B

    .line 140
    .local v5, "pdus":[[B
    array-length v3, v5

    .line 141
    .local v3, "pduCount":I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 142
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    .line 146
    return-object v2

    .line 137
    .end local v2    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v3    # "pduCount":I
    .end local v5    # "pdus":[[B
    :cond_0
    aget-object v6, v1, v0

    check-cast v6, [B

    aput-object v6, v4, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .restart local v2    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v3    # "pduCount":I
    .restart local v5    # "pdus":[[B
    :cond_1
    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 144
    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v2, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cat/util/SMSCodeBroadcast;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 123
    return-void
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "privileged"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p2}, Lcom/cat/util/SMSCodeBroadcast;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 128
    .local v0, "msgs":[Landroid/telephony/SmsMessage;
    invoke-direct {p0, v0}, Lcom/cat/util/SMSCodeBroadcast;->accessMessage([Landroid/telephony/SmsMessage;)V

    .line 130
    return-void
.end method
