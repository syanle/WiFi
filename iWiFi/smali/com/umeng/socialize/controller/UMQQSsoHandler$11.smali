.class Lcom/umeng/socialize/controller/UMQQSsoHandler$11;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "UMQQSsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$controller:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic val$media:Lcom/umeng/socialize/media/UMediaObject;

.field private final synthetic val$startTime:J

.field private final synthetic val$usid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/media/UMediaObject;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$media:Lcom/umeng/socialize/media/UMediaObject;

    iput-object p3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$controller:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$usid:Ljava/lang/String;

    iput-wide p6, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$startTime:J

    .line 1152
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->doInBackground()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1165
    const-string v1, "UMQQSsoHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "media is null ? --"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$media:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1166
    const-string v2, "---doInBackground"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v0, 0x0

    .line 1168
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$media:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_4

    .line 1169
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$media:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    move-object v1, v0

    .line 1172
    :goto_1
    if-eqz v1, :cond_3

    .line 1173
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->fileToByte(Ljava/lang/String;)[B
    invoke-static {v0, v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$26(Lcom/umeng/socialize/controller/UMQQSsoHandler;Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1174
    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    .line 1175
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/QQShareMsg;->k()Ljava/util/Map;

    move-result-object v0

    .line 1176
    array-length v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1175
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1176
    if-nez v0, :cond_1

    .line 1178
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/QQShareMsg;->k()Ljava/util/Map;

    move-result-object v0

    .line 1179
    array-length v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1178
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$27(Ljava/lang/String;)V

    .line 1180
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mImageUrl:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$28()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->b(Ljava/lang/String;)V

    .line 1181
    const-string v0, "UMQQSsoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "obtain image url form cache..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1182
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mImageUrl:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$28()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :goto_2
    const-string v0, ""

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$27(Ljava/lang/String;)V

    .line 1200
    :goto_3
    const-string v0, "UMQQSsoHandler"

    const-string v1, "doInBackground end..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v0, ""

    return-object v0

    .line 1165
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1185
    :cond_1
    const-string v0, "UMQQSsoHandler"

    const-string v3, "obtain image url form server..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$controller:Lcom/umeng/socialize/controller/impl/b;

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$context:Landroid/content/Context;

    .line 1187
    iget-object v4, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$usid:Ljava/lang/String;

    .line 1186
    invoke-virtual {v0, v3, v1, v4}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    array-length v2, v2

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->setImageUrl(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$29(Lcom/umeng/socialize/controller/UMQQSsoHandler;Ljava/lang/String;I)V

    .line 1189
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mImageUrl:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$28()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->b(Ljava/lang/String;)V

    .line 1190
    const-string v0, "UMQQSsoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "obtain image url form server..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1191
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mImageUrl:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$28()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1190
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1195
    :cond_2
    const-string v0, "UMQQSsoHandler"

    const-string v1, "datas is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1198
    :cond_3
    const-string v0, "UMQQSsoHandler"

    const-string v1, "uMediaObject is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1206
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1207
    const-string v0, "UMQQSsoHandler"

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload image kill time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->val$startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1207
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$3()V

    .line 1211
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->gotoShare()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$2(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    .line 1212
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1155
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 1156
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeShowDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$9()V

    .line 1157
    const-string v0, "UMQQSsoHandler"

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload image start time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1160
    const-string v2, "---onPreExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void
.end method
