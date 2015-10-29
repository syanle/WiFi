.class Lcom/pubinfo/izhejiang/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/LoginActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 165
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->passwordET:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->commitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->commitButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 182
    const v2, 0x7f080001

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->commitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->commitButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity$2;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 186
    const v2, 0x7f080004

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
