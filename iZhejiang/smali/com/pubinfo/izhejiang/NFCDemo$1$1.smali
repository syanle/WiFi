.class Lcom/pubinfo/izhejiang/NFCDemo$1$1;
.super Ljava/lang/Object;
.source "NFCDemo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/NFCDemo$1;->connectCTPassServiceCallBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/NFCDemo$1;

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/NFCDemo$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/NFCDemo$1$1;->this$1:Lcom/pubinfo/izhejiang/NFCDemo$1;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/NFCDemo$1$1;->val$s:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1$1;->this$1:Lcom/pubinfo/izhejiang/NFCDemo$1;

    # getter for: Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/NFCDemo$1;->access$0(Lcom/pubinfo/izhejiang/NFCDemo$1;)Lcom/pubinfo/izhejiang/NFCDemo;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/izhejiang/NFCDemo;->et4:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$1$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
