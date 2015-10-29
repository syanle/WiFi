.class Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;
.super Landroid/os/AsyncTask;
.source "UMWXHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/UMWXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/tencent/mm/sdk/openapi/WXMediaMessage;",
        ">;"
    }
.end annotation


# instance fields
.field shareContent:Ljava/lang/String;

.field shareMedia:Lcom/umeng/socialize/media/UMediaObject;

.field shareType:Ljava/lang/String;

.field final synthetic this$0:Lcom/umeng/socialize/controller/UMWXHandler;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/controller/UMWXHandler;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    .line 941
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 943
    iput-object p2, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareType:Ljava/lang/String;

    .line 944
    iput-object p3, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareContent:Ljava/lang/String;

    .line 945
    iput-object p4, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 946
    return-void
.end method

.method private sendReport(ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 1021
    const/16 v0, 0x13a5

    .line 1023
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v1}, Lcom/umeng/socialize/controller/UMWXHandler;->f(Lcom/umeng/socialize/controller/UMWXHandler;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 1025
    :goto_0
    if-eqz p1, :cond_0

    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v0

    .line 1028
    const/16 v2, 0x11

    .line 1027
    invoke-static {v0, v1, v2}, Lcom/umeng/socom/util/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :goto_1
    const/16 v0, 0xc8

    .line 1035
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v3}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1036
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1037
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v2

    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->b()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1040
    :cond_1
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->c()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v2

    .line 1041
    const-class v3, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->b()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v4

    .line 1040
    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1043
    if-eqz p1, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->b()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iget-object v2, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 1045
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->f(Lcom/umeng/socialize/controller/UMWXHandler;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "wxtimeline"

    .line 1044
    :goto_2
    invoke-static {v1, v2, p2, v3, v0}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 1049
    :cond_2
    return-void

    .line 1024
    :cond_3
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0

    .line 1045
    :cond_4
    const-string v0, "wxsession"

    goto :goto_2

    .line 1029
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 6

    .prologue
    const v5, 0x8000

    .line 957
    const/4 v0, 0x0

    .line 960
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareType:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 961
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/umeng/socialize/media/UMediaObject;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    .line 971
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 972
    if-eqz v1, :cond_1

    array-length v2, v1

    if-le v2, v5, :cond_1

    .line 973
    const-string v2, "UMWXHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u539f\u59cb\u7f29\u7565\u56fe\u5927\u5c0f : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KB."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMWXHandler;->d(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 975
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v2, v1, v5}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/controller/UMWXHandler;[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 976
    const-string v1, "UMWXHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u538b\u7f29\u4e4b\u540e\u7f29\u7565\u56fe\u5927\u5c0f : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 977
    const-string v3, " KB."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 976
    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_1
    return-object v0

    .line 962
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareType:Ljava/lang/String;

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 963
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareContent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    goto :goto_0

    .line 964
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareType:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 965
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/controller/UMWXHandler;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    goto :goto_0

    .line 966
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareType:Ljava/lang/String;

    const-string v2, "text_image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 967
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/controller/UMWXHandler;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    goto/16 :goto_0

    .line 968
    :cond_5
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareContent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->doInBackground([Ljava/lang/Void;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tencent/mm/sdk/openapi/WXMediaMessage;)V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/16 v3, 0x200

    const/4 v2, 0x0

    .line 984
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->e(Lcom/umeng/socialize/controller/UMWXHandler;)V

    .line 990
    iget-object v0, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    iget-object v0, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, v3, :cond_0

    .line 992
    iget-object v0, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 993
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 996
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    iget-object v0, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, v4, :cond_1

    .line 998
    iget-object v0, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 999
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 1003
    :cond_1
    iget-object v0, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->f(Lcom/umeng/socialize/controller/UMWXHandler;)Z

    move-result v0

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Z)V

    .line 1005
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 1006
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Landroid/content/Context;)V

    .line 1008
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareType:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->shareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-static {v0, p1, v1, v2}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/tencent/mm/sdk/openapi/WXMediaMessage;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Z

    move-result v0

    .line 1010
    iget-object v1, p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->sendReport(ZLjava/lang/String;)V

    .line 1011
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->b()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 1012
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1013
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->onPostExecute(Lcom/tencent/mm/sdk/openapi/WXMediaMessage;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v1}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/controller/UMWXHandler;Landroid/content/Context;)V

    .line 951
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->c(Lcom/umeng/socialize/controller/UMWXHandler;)V

    .line 952
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 953
    return-void
.end method
