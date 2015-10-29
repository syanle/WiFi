.class Lcom/pubinfo/freewifialliance/view/LoginPage$3;
.super Ljava/lang/Object;
.source "LoginPage.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/LoginPage;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/LoginPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 192
    :goto_0
    return v3

    .line 172
    :sswitch_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    const-string v1, "\u81ea\u52a8\u83b7\u53d6\u9a8c\u8bc1\u7801\u8d85\u65f6\uff0c\u8bf7\u624b\u52a8\u8f93\u5165"

    const/4 v2, 0x0

    # invokes: Lcom/pubinfo/freewifialliance/view/LoginPage;->showDialog(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$13(Lcom/pubinfo/freewifialliance/view/LoginPage;Ljava/lang/String;Z)V

    goto :goto_0

    .line 178
    :sswitch_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$14(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->GETCODETIME:I
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    :sswitch_2
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$14(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$14(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 185
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->btnGetCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$14(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 186
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$2(I)V

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xaadd001 -> :sswitch_0
    .end sparse-switch
.end method
