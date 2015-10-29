.class Lcom/pubinfo/freewifialliance/view/LoginPage$2;
.super Ljava/lang/Object;
.source "LoginPage.java"

# interfaces
.implements Lcom/pubinfo/wifi_core/core/util/SMSCodeBroadcast$AfterReceive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/LoginPage;->registerSMSReceiver()V
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
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoFill(Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 109
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # invokes: Lcom/pubinfo/freewifialliance/view/LoginPage;->unRegisterSMSReceiver()V
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$7(Lcom/pubinfo/freewifialliance/view/LoginPage;)V

    .line 110
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    invoke-static {v2, v4}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$8(Lcom/pubinfo/freewifialliance/view/LoginPage;Z)V

    .line 111
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$9(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$10(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$9(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 115
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$9(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 117
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # invokes: Lcom/pubinfo/freewifialliance/view/LoginPage;->showLoading()V
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$11(Lcom/pubinfo/freewifialliance/view/LoginPage;)V

    .line 119
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/view/LoginPage;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 122
    const/4 v3, 0x2

    .line 120
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 124
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->etAccount:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$10(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 125
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->etPassword:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$9(Lcom/pubinfo/freewifialliance/view/LoginPage;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 124
    # invokes: Lcom/pubinfo/freewifialliance/view/LoginPage;->doConnectNet(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$12(Lcom/pubinfo/freewifialliance/view/LoginPage;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
