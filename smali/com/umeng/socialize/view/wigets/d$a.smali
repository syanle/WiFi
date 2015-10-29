.class Lcom/umeng/socialize/view/wigets/d$a;
.super Landroid/os/Handler;
.source "IncrementAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/wigets/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/wigets/d;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/wigets/d;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/d$a;->a:Lcom/umeng/socialize/view/wigets/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/wigets/d;Lcom/umeng/socialize/view/wigets/d$a;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/d$a;-><init>(Lcom/umeng/socialize/view/wigets/d;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/d$a;->a:Lcom/umeng/socialize/view/wigets/d;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/d;->b()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
