.class Lcom/pubinfo/izhejiang/RePasswordActivity$2;
.super Ljava/lang/Object;
.source "RePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/RePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/RePasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->finish()V

    goto :goto_0

    .line 75
    :sswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    # invokes: Lcom/pubinfo/izhejiang/RePasswordActivity;->checkChineseRegist()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/RePasswordActivity;->access$0(Lcom/pubinfo/izhejiang/RePasswordActivity;)V

    goto :goto_0

    .line 78
    :sswitch_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RePasswordActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/RePasswordActivity;->ib_radioButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RePasswordActivity;->ib_radioButton:Landroid/widget/ImageButton;

    .line 81
    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 82
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    .line 84
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 85
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    .line 87
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RePasswordActivity;->ib_radioButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/RePasswordActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password1:Landroid/widget/EditText;

    .line 94
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 95
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RePasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/RePasswordActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/RePasswordActivity;->et_password2:Landroid/widget/EditText;

    .line 97
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a002c -> :sswitch_0
        0x7f0a002e -> :sswitch_1
        0x7f0a00bf -> :sswitch_2
    .end sparse-switch
.end method
