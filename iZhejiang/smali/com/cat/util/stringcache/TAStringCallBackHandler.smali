.class public Lcom/cat/util/stringcache/TAStringCallBackHandler;
.super Lcom/ta/util/cache/TACallBackHandler;
.source "TAStringCallBackHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ta/util/cache/TACallBackHandler",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ta/util/cache/TACallBackHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Landroid/widget/TextView;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/ta/util/cache/TACallBackHandler;->onFailure(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public bridge synthetic onFailure(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/cat/util/stringcache/TAStringCallBackHandler;->onFailure(Landroid/widget/TextView;Ljava/lang/Object;)V

    return-void
.end method

.method public onStart(Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Landroid/widget/TextView;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/ta/util/cache/TACallBackHandler;->onStart(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public bridge synthetic onStart(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/cat/util/stringcache/TAStringCallBackHandler;->onStart(Landroid/widget/TextView;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/widget/TextView;Ljava/lang/Object;[B)V
    .locals 6
    .param p1, "wv"    # Landroid/widget/TextView;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "buffer"    # [B

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/ta/util/cache/TACallBackHandler;->onSuccess(Ljava/lang/Object;Ljava/lang/Object;[B)V

    .line 29
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 31
    .local v4, "view":Landroid/widget/FrameLayout;
    const v5, 0x7f0a006c

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 30
    check-cast v3, Landroid/widget/ProgressBar;

    .line 32
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 36
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v5, "UTF -8"

    invoke-direct {v1, p3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    move-object v0, v1

    .line 42
    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/ta/common/TAStringUtils;->delHTMLTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void

    .line 37
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cat/util/stringcache/TAStringCallBackHandler;->onSuccess(Landroid/widget/TextView;Ljava/lang/Object;[B)V

    return-void
.end method
