.class public Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;
.super Landroid/database/ContentObserver;
.source "SMSCodeBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/util/SMSCodeBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsContentObserver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/cat/util/SMSCodeBroadcast;


# direct methods
.method public constructor <init>(Lcom/cat/util/SMSCodeBroadcast;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    .line 179
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 180
    iput-object p2, p0, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;->context:Landroid/content/Context;

    .line 181
    return-void
.end method


# virtual methods
.method public getSmsInPhone()Ljava/lang/String;
    .locals 20

    .prologue
    .line 198
    const-string v7, "content://sms/"

    .line 199
    .local v7, "SMS_URI_ALL":Ljava/lang/String;
    const-string v8, "content://sms/inbox"

    .line 201
    .local v8, "SMS_URI_INBOX":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v14, "smsBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "read"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "body"

    aput-object v5, v3, v4

    .line 206
    .local v3, "projection":[Ljava/lang/String;
    const-string v4, "content://sms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 207
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "body like \'\u60a8\u7684\u9a8c\u8bc1\u7801\u662f:%\' and read=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v18, "0"

    aput-object v18, v5, v6

    const-string v6, "date desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 209
    .local v9, "cur":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    const-string v4, "_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 215
    .local v11, "idColumn":I
    const-string v4, "address"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 216
    .local v13, "phoneNumberColumn":I
    const-string v4, "body"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 220
    .local v16, "smsbodyColumn":I
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, "id":Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 222
    .local v12, "phoneNumber":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 224
    .local v15, "smsbody":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    if-nez v15, :cond_0

    const-string v15, ""

    .line 227
    :cond_0
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v17, "values":Landroid/content/ContentValues;
    const-string v4, "read"

    const-string v5, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v4, "content://sms/inbox"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v18

    move-object/from16 v0, v17

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    # getter for: Lcom/cat/util/SMSCodeBroadcast;->smsContentObserver:Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;
    invoke-static {v5}, Lcom/cat/util/SMSCodeBroadcast;->access$2(Lcom/cat/util/SMSCodeBroadcast;)Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "idColumn":I
    .end local v12    # "phoneNumber":Ljava/lang/String;
    .end local v13    # "phoneNumberColumn":I
    .end local v15    # "smsbody":Ljava/lang/String;
    .end local v16    # "smsbodyColumn":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 235
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    const-string v4, "no result!"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v9    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 188
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 189
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;->getSmsInPhone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/cat/util/SMSCodeBroadcast$SmsContentObserver;->this$0:Lcom/cat/util/SMSCodeBroadcast;

    # getter for: Lcom/cat/util/SMSCodeBroadcast;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cat/util/SMSCodeBroadcast;->access$3(Lcom/cat/util/SMSCodeBroadcast;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method
