.class Lcom/pubinfo/izhejiang/RegistFirstActivity$2;
.super Ljava/lang/Object;
.source "RegistFirstActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/RegistFirstActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 77
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    .line 78
    const-class v4, Lcom/pubinfo/izhejiang/CountryListActivity;

    .line 77
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "activity"

    const-string v4, "RegistFirstActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 88
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->finish()V

    goto :goto_0

    .line 91
    :sswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistFirstActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/RegistFirstActivity;->ib_radioButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    # invokes: Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkCountry()Z
    invoke-static {v3}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->access$0(Lcom/pubinfo/izhejiang/RegistFirstActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    # invokes: Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkChineseRegist()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->access$1(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    # invokes: Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkForignRegist()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->access$2(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    const v5, 0x7f06004d

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :sswitch_3
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistFirstActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/RegistFirstActivity;->ib_radioButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistFirstActivity;->ib_radioButton:Landroid/widget/ImageButton;

    .line 104
    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/RegistFirstActivity;->ib_radioButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/RegistFirstActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 110
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    .line 111
    const-class v4, Lcom/pubinfo/izhejiang/Faq;

    .line 110
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v1, "intent_text1":Landroid/content/Intent;
    const-string v3, "tag"

    const-string v4, "\u4f7f\u7528\u534f\u8bae"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    invoke-virtual {v3, v1}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 116
    .end local v1    # "intent_text1":Landroid/content/Intent;
    :sswitch_5
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    .line 117
    const-class v4, Lcom/pubinfo/izhejiang/Faq;

    .line 116
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v2, "intent_text2":Landroid/content/Intent;
    const-string v3, "tag"

    const-string v4, "\u9690\u79c1\u6761\u6b3e"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v3, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;->this$0:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    invoke-virtual {v3, v2}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a002c -> :sswitch_1
        0x7f0a002e -> :sswitch_2
        0x7f0a006f -> :sswitch_0
        0x7f0a00bf -> :sswitch_3
        0x7f0a00c3 -> :sswitch_4
        0x7f0a00c4 -> :sswitch_5
    .end sparse-switch
.end method
