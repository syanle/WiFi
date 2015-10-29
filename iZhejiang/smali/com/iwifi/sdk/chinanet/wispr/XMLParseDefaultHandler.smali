.class public Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLParseDefaultHandler.java"


# instance fields
.field private final ITEM_AUTHENTI_KEEP_ALIVE:I

.field private final ITEM_AUTHENTI_LOGIN_RES_URL:I

.field private final ITEM_AUTHENTI_LOGOFF_URL:I

.field private final ITEM_AUTHENTI_MSG_TYPE:I

.field private final ITEM_AUTHENTI_REPLY_MSG:I

.field private final ITEM_AUTHENTI_RSP_CODE:I

.field private final ITEM_LOGOFF_MESSAGE_TYPE:I

.field private final ITEM_LOGOFF_RESPONSE_CODE:I

.field private final ITEM_REDIRECT_ABORT_LOGIN_URL:I

.field private final ITEM_REDIRECT_ACESS_PROCEDURE:I

.field private final ITEM_REDIRECT_LOCAL_INDENTY:I

.field private final ITEM_REDIRECT_LOCAL_NAME:I

.field private final ITEM_REDIRECT_LOGIN_URL:I

.field private final ITEM_REDIRECT_MESSAGE_TYPE:I

.field private final ITEM_REDIRECT_RESPONSE:I

.field public b_isAuthenticationReply:Z

.field public b_isLogoffReply:Z

.field public b_isRedirect:Z

.field private cur_parse_item:I

.field public http_response_type:I

.field public mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

.field public mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

.field public mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 9
    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    .line 10
    iput-boolean v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isRedirect:Z

    .line 11
    iput-boolean v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isAuthenticationReply:Z

    .line 12
    iput-boolean v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isLogoffReply:Z

    .line 13
    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    .line 14
    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    .line 15
    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    .line 16
    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_REDIRECT_LOCAL_INDENTY:I

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_REDIRECT_LOCAL_NAME:I

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_REDIRECT_LOGIN_URL:I

    .line 20
    const/4 v0, 0x4

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_REDIRECT_ABORT_LOGIN_URL:I

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_REDIRECT_MESSAGE_TYPE:I

    .line 22
    const/4 v0, 0x6

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_REDIRECT_ACESS_PROCEDURE:I

    .line 23
    const/4 v0, 0x7

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_REDIRECT_RESPONSE:I

    .line 25
    const/16 v0, 0x8

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_LOGOFF_MESSAGE_TYPE:I

    .line 26
    const/16 v0, 0x9

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_LOGOFF_RESPONSE_CODE:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_AUTHENTI_REPLY_MSG:I

    .line 29
    const/16 v0, 0xb

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_AUTHENTI_LOGIN_RES_URL:I

    .line 30
    const/16 v0, 0xc

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_AUTHENTI_LOGOFF_URL:I

    .line 31
    const/16 v0, 0xd

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_AUTHENTI_MSG_TYPE:I

    .line 32
    const/16 v0, 0xe

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_AUTHENTI_RSP_CODE:I

    .line 33
    const/16 v0, 0xf

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->ITEM_AUTHENTI_KEEP_ALIVE:I

    .line 37
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 227
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 228
    .local v0, "targetStr":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isRedirect:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v1, :cond_2

    .line 230
    iget v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    packed-switch v1, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iput-object v0, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->location_indentifier:Ljava/lang/String;

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iput-object v0, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->location_name:Ljava/lang/String;

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iget-object v1, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->login_url:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iput-object v0, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->login_url:Ljava/lang/String;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iget-object v2, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->login_url:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->login_url:Ljava/lang/String;

    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iput-object v0, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->abort_login_url:Ljava/lang/String;

    goto :goto_0

    .line 248
    :pswitch_4
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->messageType:I

    goto :goto_0

    .line 251
    :pswitch_5
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->accessProcedure:F

    goto :goto_0

    .line 254
    :pswitch_6
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->response:I

    goto :goto_0

    .line 260
    :cond_2
    iget-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isAuthenticationReply:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v1, :cond_3

    .line 262
    iget v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 265
    :pswitch_7
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    iput-object v0, v1, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->reply_message:Ljava/lang/String;

    goto :goto_0

    .line 268
    :pswitch_8
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    iput-object v0, v1, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->loginResult_url:Ljava/lang/String;

    goto :goto_0

    .line 271
    :pswitch_9
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    iput-object v0, v1, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->logoff_url:Ljava/lang/String;

    goto :goto_0

    .line 274
    :pswitch_a
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->messageType:I

    goto :goto_0

    .line 277
    :pswitch_b
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->responseCode:I

    goto :goto_0

    .line 280
    :pswitch_c
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->keepAlive:I

    goto/16 :goto_0

    .line 286
    :cond_3
    iget-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isLogoffReply:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    if-eqz v1, :cond_0

    .line 288
    iget v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 291
    :pswitch_d
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;->messageType:I

    goto/16 :goto_0

    .line 294
    :pswitch_e
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;->responseCode:I

    goto/16 :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 262
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 288
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 43
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v0, "Redirect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    .line 51
    iput-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isRedirect:Z

    .line 106
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 53
    :cond_1
    const-string v0, "AuthenticationReply"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    .line 55
    iput-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isAuthenticationReply:Z

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "LogoffReply"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    .line 59
    iput-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isLogoffReply:Z

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "AccessProcedure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 64
    :cond_4
    const-string v0, "AccessLocation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 67
    :cond_5
    const-string v0, "LocationName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 70
    :cond_6
    const-string v0, "LoginURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 73
    :cond_7
    const-string v0, "AbortLoginURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 76
    :cond_8
    const-string v0, "MessageType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 79
    :cond_9
    const-string v0, "ResponseCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 82
    :cond_a
    const-string v0, "MessageType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 85
    :cond_b
    const-string v0, "ResponseCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 86
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 88
    :cond_c
    const-string v0, "MessageType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 91
    :cond_d
    const-string v0, "ResponseCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 92
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 94
    :cond_e
    const-string v0, "ReplyMessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 95
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 97
    :cond_f
    const-string v0, "LoginResultsURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 98
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 100
    :cond_10
    const-string v0, "LogoffURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 101
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 103
    :cond_11
    const-string v0, "KeepAlive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 113
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 121
    const-string v0, "Redirect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    .line 123
    iput-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isRedirect:Z

    .line 124
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    invoke-direct {v0}, Lcom/iwifi/sdk/chinanet/wispr/Redirect;-><init>()V

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v0, "AuthenticationReply"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    invoke-direct {v0}, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;-><init>()V

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    .line 128
    iput-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isAuthenticationReply:Z

    .line 129
    iput v2, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    goto :goto_0

    .line 131
    :cond_2
    const-string v0, "LogoffReply"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iput v3, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    .line 133
    iput-boolean v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->b_isLogoffReply:Z

    .line 134
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    invoke-direct {v0}, Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;-><init>()V

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    goto :goto_0

    .line 136
    :cond_3
    const-string v0, "AccessProcedure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x6

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 142
    :cond_4
    const-string v0, "AccessLocation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v0, :cond_0

    .line 145
    iput v1, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 148
    :cond_5
    const-string v0, "LocationName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v0, :cond_0

    .line 151
    iput v2, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 155
    :cond_6
    const-string v0, "LoginURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v0, :cond_0

    .line 158
    iput v3, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto :goto_0

    .line 161
    :cond_7
    const-string v0, "AbortLoginURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x4

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 167
    :cond_8
    const-string v0, "MessageType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v0, :cond_9

    .line 170
    const/4 v0, 0x5

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    .line 172
    :cond_9
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v0, :cond_a

    .line 174
    const/16 v0, 0xd

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    .line 176
    :cond_a
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    if-eqz v0, :cond_0

    .line 178
    const/16 v0, 0x8

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 181
    :cond_b
    const-string v0, "ResponseCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v0, :cond_c

    .line 184
    const/4 v0, 0x7

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    .line 186
    :cond_c
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v0, :cond_d

    .line 188
    const/16 v0, 0xe

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    .line 190
    :cond_d
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    if-eqz v0, :cond_0

    .line 192
    const/16 v0, 0x9

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 195
    :cond_e
    const-string v0, "ReplyMessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 196
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v0, :cond_0

    .line 198
    const/16 v0, 0xa

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 201
    :cond_f
    const-string v0, "LoginResultsURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 202
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v0, :cond_0

    .line 204
    const/16 v0, 0xb

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 207
    :cond_10
    const-string v0, "LogoffURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 208
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v0, :cond_0

    .line 210
    const/16 v0, 0xc

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0

    .line 213
    :cond_11
    const-string v0, "KeepAlive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->http_response_type:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v0, :cond_0

    .line 216
    const/16 v0, 0xf

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->cur_parse_item:I

    goto/16 :goto_0
.end method
