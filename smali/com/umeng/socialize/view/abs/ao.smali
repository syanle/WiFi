.class Lcom/umeng/socialize/view/abs/ao;
.super Ljava/lang/Object;
.source "UserCenterItems.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Lcom/umeng/socialize/view/abs/UserCenterItems$b;Z)V

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->b(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Lcom/umeng/socialize/bean/SnsPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->b(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Lcom/umeng/socialize/bean/SnsPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->b(Lcom/umeng/socialize/bean/SnsPlatform;)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ao;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->b(Lcom/umeng/socialize/view/abs/UserCenterItems$b;)Lcom/umeng/socialize/bean/SnsPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->c(Lcom/umeng/socialize/bean/SnsPlatform;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
