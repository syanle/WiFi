.class Lcom/pubinfo/izhejiang/FindPasswordActivity$2;
.super Ljava/lang/Object;
.source "FindPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/FindPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 58
    :sswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/FindPasswordActivity;->yanzhengmaIMG:Landroid/widget/ImageView;

    invoke-static {}, Lcom/cat/tools/Code;->getInstance()Lcom/cat/tools/Code;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/cat/tools/Code;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9a8c\u8bc1\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cat/tools/Code;->getInstance()Lcom/cat/tools/Code;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cat/tools/Code;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :sswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->finish()V

    goto :goto_0

    .line 66
    :sswitch_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordActivity$2;->this$0:Lcom/pubinfo/izhejiang/FindPasswordActivity;

    # invokes: Lcom/pubinfo/izhejiang/FindPasswordActivity;->checkChineseRegist()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/FindPasswordActivity;->access$0(Lcom/pubinfo/izhejiang/FindPasswordActivity;)V

    goto :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x7f0a002c -> :sswitch_1
        0x7f0a002e -> :sswitch_2
        0x7f0a0042 -> :sswitch_0
    .end sparse-switch
.end method
