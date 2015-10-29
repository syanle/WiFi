.class Lcom/umeng/socialize/view/abs/w;
.super Ljava/lang/Object;
.source "ReceiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/s;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/s;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/w;->a:Lcom/umeng/socialize/view/abs/s;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 77
    packed-switch p2, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 79
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/w;->a:Lcom/umeng/socialize/view/abs/s;

    .line 83
    const v2, 0xff00f01

    .line 82
    invoke-virtual {v1, v0, v2}, Lcom/umeng/socialize/view/abs/s;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 86
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .line 87
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 86
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/w;->a:Lcom/umeng/socialize/view/abs/s;

    .line 89
    const v2, 0xff00f02

    .line 88
    invoke-virtual {v1, v0, v2}, Lcom/umeng/socialize/view/abs/s;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
