.class Lcom/pubinfo/izhejiang/NFCDemo$3;
.super Ljava/lang/Object;
.source "NFCDemo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/NFCDemo;->showOutputText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/NFCDemo;

.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/NFCDemo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/NFCDemo$3;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/NFCDemo$3;->val$str:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$3;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/NFCDemo;->miWifi20_output:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$3;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$3;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/NFCDemo;->miWifi20_output:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 167
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$3;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/NFCDemo;->miWifi20_output:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 168
    return-void
.end method
