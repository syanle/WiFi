.class Lcom/umeng/socom/net/b;
.super Ljava/lang/Object;
.source "DownloadAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/umeng/socom/net/a;


# direct methods
.method constructor <init>(Lcom/umeng/socom/net/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 117
    invoke-static {}, Lcom/umeng/socom/net/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection.onServiceConnected"

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;Landroid/os/Messenger;)V

    .line 119
    iget-object v0, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v0}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;)Lcom/umeng/socom/net/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v0}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;)Lcom/umeng/socom/net/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socom/net/k;->a()V

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 124
    const/4 v1, 0x4

    .line 123
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/umeng/socom/net/a$a;

    iget-object v2, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v2}, Lcom/umeng/socom/net/a;->b(Lcom/umeng/socom/net/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v3}, Lcom/umeng/socom/net/a;->c(Lcom/umeng/socom/net/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v4}, Lcom/umeng/socom/net/a;->d(Lcom/umeng/socom/net/a;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/umeng/socom/net/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v2}, Lcom/umeng/socom/net/a;->e(Lcom/umeng/socom/net/a;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/socom/net/a$a;->d:[Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v2}, Lcom/umeng/socom/net/a;->f(Lcom/umeng/socom/net/a;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/umeng/socom/net/a$a;->e:Z

    .line 129
    invoke-virtual {v1}, Lcom/umeng/socom/net/a$a;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 130
    iget-object v1, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    iget-object v1, v1, Lcom/umeng/socom/net/a;->a:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 131
    iget-object v1, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v1}, Lcom/umeng/socom/net/a;->g(Lcom/umeng/socom/net/a;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/umeng/socom/net/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/umeng/socom/net/b;->a:Lcom/umeng/socom/net/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;Landroid/os/Messenger;)V

    .line 140
    return-void
.end method
