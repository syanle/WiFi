.class Lcom/pubinfo/izhejiang/NFCDemo$1;
.super Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;
.source "NFCDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/NFCDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/NFCDemo;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/NFCDemo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    .line 91
    invoke-direct {p0}, Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/NFCDemo$1;)Lcom/pubinfo/izhejiang/NFCDemo;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    return-object v0
.end method


# virtual methods
.method public connectCTPassServiceCallBack(Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    const-string v0, "--callback:--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " callback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    # getter for: Lcom/pubinfo/izhejiang/NFCDemo;->mCTPassAIDLService:Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/NFCDemo;->access$0(Lcom/pubinfo/izhejiang/NFCDemo;)Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/NFCDemo;->AppID:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/NFCDemo;->SeqID:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/NFCDemo;->Random:Ljava/lang/String;

    .line 100
    invoke-interface {v0, v1, v2, v3}, Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;->getCTPassToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "s":Ljava/lang/String;
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    new-instance v1, Lcom/pubinfo/izhejiang/NFCDemo$1$1;

    invoke-direct {v1, p0, v6}, Lcom/pubinfo/izhejiang/NFCDemo$1$1;-><init>(Lcom/pubinfo/izhejiang/NFCDemo$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/NFCDemo;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result:00  s:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/pubinfo/izhejiang/NFCDemo;->showOutputText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/NFCDemo;->access$1(Lcom/pubinfo/izhejiang/NFCDemo;Ljava/lang/String;)V

    .line 108
    const-string v0, "--s--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/NFCDemo;->et1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/izhejiang/NFCDemo;->AppID:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/NFCDemo;->et2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/izhejiang/NFCDemo;->SeqID:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/NFCDemo;->et3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubinfo/izhejiang/NFCDemo;->Random:Ljava/lang/String;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 115
    .local v8, "nowTime":J
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "date":Ljava/lang/String;
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/NFCDemo;->AppID:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/NFCDemo;->SeqID:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/NFCDemo;->Random:Ljava/lang/String;

    const-string v4, "0"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/NFCDemo$1;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    # getter for: Lcom/pubinfo/izhejiang/NFCDemo;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/pubinfo/izhejiang/NFCDemo;->access$2(Lcom/pubinfo/izhejiang/NFCDemo;)Landroid/content/Context;

    move-result-object v7

    # invokes: Lcom/pubinfo/izhejiang/NFCDemo;->getCTPassResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static/range {v0 .. v7}, Lcom/pubinfo/izhejiang/NFCDemo;->access$3(Lcom/pubinfo/izhejiang/NFCDemo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v5    # "date":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "nowTime":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method
