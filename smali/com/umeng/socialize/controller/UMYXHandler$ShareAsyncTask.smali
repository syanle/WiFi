.class Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;
.super Landroid/os/AsyncTask;
.source "UMYXHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/UMYXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

.field private shareType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field final synthetic this$0:Lcom/umeng/socialize/controller/UMYXHandler;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/controller/UMYXHandler;Lcom/umeng/socialize/media/UMediaObject$MediaType;)V
    .locals 1
    .param p2, "type"    # Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    .line 479
    iput-object p2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->shareType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 480
    return-void
.end method

.method private disposeText(Lim/yixin/sdk/api/YXMessage;)V
    .locals 4
    .param p1, "msg"    # Lim/yixin/sdk/api/YXMessage;

    .prologue
    const/4 v3, 0x0

    .line 540
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-boolean v1, v1, Lcom/umeng/socialize/controller/UMYXHandler;->isToCircle:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    iput-object v1, p1, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    .line 544
    :cond_0
    iget-object v1, p1, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 545
    iget-object v1, p1, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget v2, v2, Lcom/umeng/socialize/controller/UMYXHandler;->mTitleLimit:I

    if-lt v1, v2, :cond_1

    .line 546
    iget-object v1, p1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 547
    .local v0, "datas":[B
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x200

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    .line 550
    .end local v0    # "datas":[B
    :cond_1
    iget-object v1, p1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 551
    iget-object v1, p1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget v2, v2, Lcom/umeng/socialize/controller/UMYXHandler;->mDescriptionLimit:I

    if-lt v1, v2, :cond_2

    .line 552
    iget-object v1, p1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 553
    .restart local v0    # "datas":[B
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x400

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    .line 555
    .end local v0    # "datas":[B
    :cond_2
    return-void
.end method

.method private initTitle()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->initTitle()V

    .line 505
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->shareType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    sget-object v3, Lcom/umeng/socialize/media/UMediaObject$MediaType;->WEBPAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v2, v3, :cond_2

    .line 506
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-object v3, v3, Lcom/umeng/socialize/controller/UMYXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/controller/UMYXHandler;->getShareWebPage(Lcom/umeng/socialize/media/UMediaObject;)Lim/yixin/sdk/api/YXMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    .line 513
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 514
    .local v0, "result":Z
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    invoke-direct {p0, v2}, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->disposeText(Lim/yixin/sdk/api/YXMessage;)V

    .line 517
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    iget-object v4, v4, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/controller/UMYXHandler;->compressBitmap([B)[B

    move-result-object v3

    iput-object v3, v2, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    .line 519
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->shareType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v2, v3, v4}, Lcom/umeng/socialize/controller/UMYXHandler;->doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z

    move-result v0

    .line 521
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 508
    .end local v0    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->shareType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/controller/UMYXHandler;->createMessage(Lcom/umeng/socialize/media/UMediaObject$MediaType;)Ljava/lang/Object;

    move-result-object v1

    .line 509
    .local v1, "yxMsg":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lim/yixin/sdk/api/YXMessage;

    if-eqz v2, :cond_0

    .line 510
    check-cast v1, Lim/yixin/sdk/api/YXMessage;

    .end local v1    # "yxMsg":Ljava/lang/Object;
    iput-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-boolean v0, v0, Lcom/umeng/socialize/controller/UMYXHandler;->isToCircle:Z

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->access$8(Z)V

    .line 570
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->mYXShareMsg:Lim/yixin/sdk/api/YXMessage;

    iget-object v0, v0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->access$9(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-object v0, v0, Lcom/umeng/socialize/controller/UMYXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->access$10(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 572
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    iget-object v0, v0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->access$5(Landroid/content/Context;)V

    .line 574
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/controller/UMYXHandler;->sendReport(Ljava/lang/Boolean;)V

    .line 575
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->isShowWaitingDlg:Z
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->access$6(Lcom/umeng/socialize/controller/UMYXHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    # invokes: Lcom/umeng/socialize/controller/UMYXHandler;->safeCloseDialog()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->access$11(Lcom/umeng/socialize/controller/UMYXHandler;)V

    .line 579
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->isShowWaitingDlg:Z
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->access$6(Lcom/umeng/socialize/controller/UMYXHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    # invokes: Lcom/umeng/socialize/controller/UMYXHandler;->safeShowDialog()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->access$7(Lcom/umeng/socialize/controller/UMYXHandler;)V

    .line 487
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 489
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->this$0:Lcom/umeng/socialize/controller/UMYXHandler;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/UMYXHandler;->fireAllListenersOnStart()V

    .line 490
    return-void
.end method
