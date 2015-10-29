.class Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;
.super Ljava/lang/Object;
.source "FindPasswordCheckMsgActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 170
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->confirmButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->nextbtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    const v2, 0x7f080001

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->confirmButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->nextbtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    const v2, 0x7f080004

    .line 186
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
