.class Lcom/umeng/socialize/view/controller/a;
.super Landroid/os/Handler;
.source "ShareAtController.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/ShareAtController;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/ShareAtController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;->a()V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    iget-object v2, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v2}, Lcom/umeng/socialize/view/controller/ShareAtController;->c(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;->c(Ljava/util/List;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    iget-object v2, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v2}, Lcom/umeng/socialize/view/controller/ShareAtController;->c(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;->a(Ljava/util/List;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/a;->a:Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;->b()V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
