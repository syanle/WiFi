.class Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;
.super Ljava/lang/Object;
.source "UMShareScrShotDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->initViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 250
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v1, 0x8b

    .line 229
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    # invokes: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->isWordsOverflow()Z
    invoke-static {v2}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$1(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$2(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mWordOverflowAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$3(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$4(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u62b1\u6b49,\u5b57\u6570\u8d85\u8fc7140\u4e86..."

    .line 233
    const/4 v4, 0x1

    .line 232
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 234
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$2(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    if-le p2, v1, :cond_0

    move p2, v1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$2(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 239
    :cond_1
    return-void
.end method
