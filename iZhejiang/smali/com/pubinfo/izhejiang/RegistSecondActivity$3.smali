.class Lcom/pubinfo/izhejiang/RegistSecondActivity$3;
.super Ljava/lang/Object;
.source "RegistSecondActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/RegistSecondActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 76
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # invokes: Lcom/pubinfo/izhejiang/RegistSecondActivity;->getSmsCode()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$2(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # invokes: Lcom/pubinfo/izhejiang/RegistSecondActivity;->getCode()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$3(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V

    .line 80
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->showLoading()V

    .line 81
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$1(Lcom/pubinfo/izhejiang/RegistSecondActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 84
    :sswitch_1
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL"

    .line 85
    const-string v1, "tel:4008252525"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v0, v11}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->nextbtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    const v2, 0x7f080001

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 92
    .end local v11    # "intent":Landroid/content/Intent;
    :sswitch_2
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$9(I)V

    .line 93
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v10, "data":Landroid/content/Intent;
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v10}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->setResult(ILandroid/content/Intent;)V

    .line 95
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->finish()V

    goto :goto_0

    .line 98
    .end local v10    # "data":Landroid/content/Intent;
    :sswitch_3
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->showLoading()V

    .line 100
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget v0, v0, Lcom/pubinfo/izhejiang/RegistSecondActivity;->clicknum:I

    if-ge v0, v2, :cond_1

    .line 101
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/RegistSecondActivity;->phone:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/RegistSecondActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/RegistSecondActivity;->password:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    .line 103
    iget-object v7, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    const-string v8, "1"

    iget-object v9, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v9}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 101
    # invokes: Lcom/pubinfo/izhejiang/RegistSecondActivity;->getRegistNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static/range {v0 .. v9}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$10(Lcom/pubinfo/izhejiang/RegistSecondActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/RegistSecondActivity;->phone:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/RegistSecondActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/RegistSecondActivity;->password:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    .line 122
    iget-object v7, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    const-string v8, "2"

    iget-object v9, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$3;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v9}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 120
    # invokes: Lcom/pubinfo/izhejiang/RegistSecondActivity;->getRegistNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static/range {v0 .. v9}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$10(Lcom/pubinfo/izhejiang/RegistSecondActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 77
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x7f0a002c -> :sswitch_2
        0x7f0a002e -> :sswitch_3
        0x7f0a0046 -> :sswitch_0
        0x7f0a00c6 -> :sswitch_1
    .end sparse-switch
.end method
