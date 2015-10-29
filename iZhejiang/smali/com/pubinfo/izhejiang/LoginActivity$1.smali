.class Lcom/pubinfo/izhejiang/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/LoginActivity$1;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$1;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/LoginActivity;->menuWindow:Lcom/cat/tools/SelectFindPasswordPopupWindow;

    invoke-virtual {v0}, Lcom/cat/tools/SelectFindPasswordPopupWindow;->dismiss()V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity$1;->this$0:Lcom/pubinfo/izhejiang/LoginActivity;

    # invokes: Lcom/pubinfo/izhejiang/LoginActivity;->goFindPasswordIntent()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/LoginActivity;->access$0(Lcom/pubinfo/izhejiang/LoginActivity;)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a001c
        :pswitch_0
    .end packed-switch
.end method
