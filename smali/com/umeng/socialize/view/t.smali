.class Lcom/umeng/socialize/view/t;
.super Ljava/lang/Object;
.source "CommentPostDialog.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;


# instance fields
.field a:[Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

.field final synthetic b:Lcom/umeng/socialize/view/q;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/q;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->e(Lcom/umeng/socialize/view/q;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 334
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/CommentActivity;->reflushData()V

    move v0, v1

    .line 336
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v2}, Lcom/umeng/socialize/view/q;->h(Lcom/umeng/socialize/view/q;)I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 339
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SocializeEntity;->incrementCc()V

    .line 340
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/view/q;I)V

    .line 341
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    iget-object v2, p3, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/controller/UMBroadcastManager;->sendEntityChange(Landroid/content/Context;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    const-string v2, "\u53d1\u9001\u6210\u529f."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->d(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isSendBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 352
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->a:[Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->a:[Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    array-length v2, v0

    :goto_2
    if-lt v1, v2, :cond_4

    .line 357
    :cond_1
    return-void

    .line 337
    :cond_2
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SocializeEntity;->incrementSc()V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    const-string v2, "\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    invoke-static {v0, p2, v2}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_1

    .line 353
    :cond_4
    aget-object v3, v0, v1

    .line 354
    invoke-interface {v3, p1, p2, p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->d(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isSendBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->e(Lcom/umeng/socialize/view/q;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v2, "\u53d1\u9001\u4e2d..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->e(Lcom/umeng/socialize/view/q;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/umeng/socialize/common/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;Z)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->f(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v2, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    iput-object v0, p0, Lcom/umeng/socialize/view/t;->a:[Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    .line 322
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->a:[Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v2, p0, Lcom/umeng/socialize/view/t;->a:[Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_2

    .line 327
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/t;->b:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 323
    :cond_2
    aget-object v1, v2, v0

    .line 324
    invoke-interface {v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
