.class Lcom/umeng/socialize/controller/e;
.super Ljava/lang/Object;
.source "CustomHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/CustomHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/CustomHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/e;->a:Lcom/umeng/socialize/controller/CustomHandler;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/umeng/socialize/controller/e;->a:Lcom/umeng/socialize/controller/CustomHandler;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/CustomHandler;->isClientInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/umeng/socialize/controller/e;->a:Lcom/umeng/socialize/controller/CustomHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/controller/CustomHandler;->handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/e;->a:Lcom/umeng/socialize/controller/CustomHandler;

    iget-object v0, v0, Lcom/umeng/socialize/controller/CustomHandler;->mContext:Landroid/content/Context;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u5b89\u88c5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/controller/e;->a:Lcom/umeng/socialize/controller/CustomHandler;

    iget-object v2, v2, Lcom/umeng/socialize/controller/CustomHandler;->mPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v2, v2, Lcom/umeng/socialize/bean/CustomPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5ba2\u6237\u7aef"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    const/4 v2, 0x0

    .line 250
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
