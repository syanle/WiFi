.class public Lcom/cat/adapter/MessageListAdapter$MyThread;
.super Ljava/lang/Thread;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/adapter/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/adapter/MessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/cat/adapter/MessageListAdapter;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/cat/adapter/MessageListAdapter$MyThread;->this$0:Lcom/cat/adapter/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 409
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 410
    iget-object v3, p0, Lcom/cat/adapter/MessageListAdapter$MyThread;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v3, v3, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 411
    const-string v4, "LoginSucess"

    const/4 v5, 0x0

    .line 410
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 412
    .local v2, "sharedata":Landroid/content/SharedPreferences;
    const-string v3, "username"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "authid":Ljava/lang/String;
    const-string v3, "countrycode"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "countrycode":Ljava/lang/String;
    new-instance v3, Lcom/cat/impl/DoReadPushConn;

    iget-object v4, p0, Lcom/cat/adapter/MessageListAdapter$MyThread;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v4, v4, Lcom/cat/adapter/MessageListAdapter;->pushid:Ljava/lang/String;

    iget-object v5, p0, Lcom/cat/adapter/MessageListAdapter$MyThread;->this$0:Lcom/cat/adapter/MessageListAdapter;

    iget-object v5, v5, Lcom/cat/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/cat/impl/DoReadPushConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v0    # "authid":Ljava/lang/String;
    .end local v1    # "countrycode":Ljava/lang/String;
    .end local v2    # "sharedata":Landroid/content/SharedPreferences;
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 418
    return-void

    .line 415
    :catch_0
    move-exception v3

    goto :goto_0
.end method
