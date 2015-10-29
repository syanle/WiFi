.class Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;
.super Ljava/lang/Thread;
.source "AndroidpnStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->UploadUserPushInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

.field private final synthetic val$androidpn_psw:Ljava/lang/String;

.field private final synthetic val$androidpn_usrName:Ljava/lang/String;

.field private final synthetic val$appkey:Ljava/lang/String;

.field private final synthetic val$countrycode:Ljava/lang/String;

.field private final synthetic val$cur_ssid:Ljava/lang/String;

.field private final synthetic val$imei:Ljava/lang/String;

.field private final synthetic val$loc_city:Ljava/lang/String;

.field private final synthetic val$loc_latitude:Ljava/lang/String;

.field private final synthetic val$loc_longitude:Ljava/lang/String;

.field private final synthetic val$mcontext:Landroid/content/Context;

.field private final synthetic val$phoneNum:Ljava/lang/String;

.field private final synthetic val$secret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->this$0:Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    iput-object p2, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$phoneNum:Ljava/lang/String;

    iput-object p3, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$countrycode:Ljava/lang/String;

    iput-object p4, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$imei:Ljava/lang/String;

    iput-object p5, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_latitude:Ljava/lang/String;

    iput-object p6, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_longitude:Ljava/lang/String;

    iput-object p7, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_city:Ljava/lang/String;

    iput-object p8, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$cur_ssid:Ljava/lang/String;

    iput-object p9, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$androidpn_usrName:Ljava/lang/String;

    iput-object p10, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$androidpn_psw:Ljava/lang/String;

    iput-object p11, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$appkey:Ljava/lang/String;

    iput-object p12, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$secret:Ljava/lang/String;

    iput-object p13, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$mcontext:Landroid/content/Context;

    .line 248
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 252
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$phoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string v2, "&countrycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$countrycode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_latitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_longitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    const-string v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$cur_ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    const-string v2, "&terversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/iwifi/sdk/data/ConstantUtils;->ANDROID_OS_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    const-string v2, "&appversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    const-string v2, "&tertype=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$androidpn_usrName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$androidpn_psw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    const-string v2, "&secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$secret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 262
    .local v14, "md5sign":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v7, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "authid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$phoneNum:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "countrycode"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$countrycode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "imei"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$imei:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "lat"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_latitude:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "lng"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_longitude:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "city"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$loc_city:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "ssid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$cur_ssid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "terversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    sget v4, Lcom/iwifi/sdk/data/ConstantUtils;->ANDROID_OS_VERSION:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "appversion"

    .line 273
    const-string v3, "2.0"

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "tertype"

    const-string v3, "android"

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$androidpn_usrName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$androidpn_psw:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "appkey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$appkey:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "sign"

    invoke-direct {v1, v2, v14}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const/16 v16, 0x0

    .line 285
    .local v16, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    const-string v1, "http://app2c.51awifi.com/PubInfoWifiInterface/sdk/"

    .line 286
    const-string v2, "uppushinfo.html"

    .line 287
    const-string v3, ""

    .line 288
    const-string v4, ""

    .line 289
    const/4 v5, 0x0

    .line 290
    sget-object v6, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    .line 291
    const/4 v8, 0x0

    .line 284
    invoke-static/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncPostConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 297
    :goto_0
    if-eqz v16, :cond_0

    .line 298
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 299
    .local v18, "status_code":I
    const/16 v17, 0x0

    .line 301
    .local v17, "result":Ljava/lang/String;
    const/16 v1, 0xc8

    move/from16 v0, v18

    if-ne v0, v1, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->val$mcontext:Landroid/content/Context;

    .line 304
    const-string v2, "location_preferences"

    .line 305
    const/4 v3, 0x0

    .line 303
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 306
    .local v15, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 308
    const-string v2, "pushInfo_updated_flag"

    .line 309
    const/4 v3, 0x1

    .line 307
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 311
    const-string v2, "latest_authen_phoneNum"

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->this$0:Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    iget-object v3, v3, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->PhoneNum:Ljava/lang/String;

    .line 310
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 314
    const-string v2, "Location_Address"

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->this$0:Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    iget-object v3, v3, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Address:Ljava/lang/String;

    .line 313
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 315
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    :try_start_1
    const-string v1, "Content-type"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 320
    .local v12, "httpHeader":Lorg/apache/http/Header;
    if-eqz v12, :cond_2

    .line 321
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 322
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 323
    const-string v2, "text/html"

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 323
    if-eqz v1, :cond_2

    .line 325
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 326
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 329
    .local v13, "instream":Ljava/io/InputStream;
    invoke-static {v13}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->JSoupHTMLParse(Ljava/io/InputStream;)Lorg/jsoup/nodes/Document;

    move-result-object v9

    .line 331
    .local v9, "doc":Lorg/jsoup/nodes/Document;
    const-string v1, "body"

    invoke-virtual {v9, v1}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v11

    .line 332
    .local v11, "elements":Lorg/jsoup/select/Elements;
    if-eqz v11, :cond_1

    .line 333
    invoke-virtual {v11}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v17

    .line 365
    .end local v9    # "doc":Lorg/jsoup/nodes/Document;
    .end local v11    # "elements":Lorg/jsoup/select/Elements;
    .end local v12    # "httpHeader":Lorg/apache/http/Header;
    .end local v13    # "instream":Ljava/io/InputStream;
    .end local v15    # "pref":Landroid/content/SharedPreferences;
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "status_code":I
    :cond_0
    :goto_1
    return-void

    .line 292
    :catch_0
    move-exception v10

    .line 294
    .local v10, "e":Lorg/apache/http/conn/HttpHostConnectException;
    invoke-virtual {v10}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v10    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    .restart local v9    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v11    # "elements":Lorg/jsoup/select/Elements;
    .restart local v12    # "httpHeader":Lorg/apache/http/Header;
    .restart local v13    # "instream":Ljava/io/InputStream;
    .restart local v15    # "pref":Landroid/content/SharedPreferences;
    .restart local v17    # "result":Ljava/lang/String;
    .restart local v18    # "status_code":I
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"HTML\'s content cann\'t be recognized. That is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v9}, Lorg/jsoup/nodes/Document;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 338
    goto :goto_1

    .end local v9    # "doc":Lorg/jsoup/nodes/Document;
    .end local v11    # "elements":Lorg/jsoup/select/Elements;
    .end local v13    # "instream":Ljava/io/InputStream;
    :cond_2
    if-eqz v12, :cond_0

    .line 339
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v2, "application/json"

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 341
    if-eqz v1, :cond_0

    .line 344
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 343
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v17

    goto :goto_1

    .line 346
    .end local v12    # "httpHeader":Lorg/apache/http/Header;
    :catch_1
    move-exception v10

    .line 348
    .local v10, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 349
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v10

    .line 351
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 352
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 354
    .local v10, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v10}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_1
.end method
