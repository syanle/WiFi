.class Lcom/umeng/socialize/controller/UMWXHandler$3;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMWXHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMWXHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 267
    .line 269
    if-eqz p2, :cond_6

    .line 270
    invoke-static {p2}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 272
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->g(Lcom/umeng/socialize/controller/UMWXHandler;)V

    .line 273
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_1

    .line 275
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->b()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v1, v2, :cond_1

    .line 276
    iget-object v1, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 277
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMWXHandler;->h(Lcom/umeng/socialize/controller/UMWXHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMWXHandler;->h(Lcom/umeng/socialize/controller/UMWXHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;->onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 288
    :cond_0
    invoke-static {p3}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 294
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->h()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4f60\u8fd8\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 311
    :goto_1
    return-void

    .line 279
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_2
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->h()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v2

    if-nez v2, :cond_3

    .line 299
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4f60\u5b89\u88c5\u7684\u5fae\u4fe1\u7248\u672c\u4e0d\u652f\u6301\u5f53\u524dAPI"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 304
    :cond_3
    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 306
    :cond_4
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v3, v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_1

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8bbe\u7f6e\u5206\u4eab\u5185\u5bb9..."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method
