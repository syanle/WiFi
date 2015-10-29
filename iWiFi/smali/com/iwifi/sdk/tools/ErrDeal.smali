.class public Lcom/iwifi/sdk/tools/ErrDeal;
.super Ljava/lang/Object;
.source "ErrDeal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 51
    const-string v0, "Exception"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "obj ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "err ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static getConnErr(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "bTimeOut"    # Z

    .prologue
    .line 21
    if-nez p1, :cond_0

    if-nez p0, :cond_0

    .line 22
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25!"

    .line 27
    :goto_0
    return-object v0

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    .line 24
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6!"

    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "\u7f51\u7edc\u534f\u8bae\u51fa\u9519!"

    goto :goto_0
.end method

.method public static getDocumentErr(Lorg/dom4j/DocumentException;Ljava/lang/Object;)V
    .locals 3
    .param p0, "e"    # Lorg/dom4j/DocumentException;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 39
    const-string v0, "DocumentException"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "obj ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "err ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/DocumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
