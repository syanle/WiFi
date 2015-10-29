.class Lcom/pubinfo/izhejiang/PersonInfomationActivity$2;
.super Ljava/lang/Object;
.source "PersonInfomationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/PersonInfomationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$2;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$2;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->menuWindow:Lcom/cat/tools/SelectPicPopupWindow;

    invoke-virtual {v0}, Lcom/cat/tools/SelectPicPopupWindow;->dismiss()V

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$2;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->camera()V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$2;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->gallery()V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a001c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
