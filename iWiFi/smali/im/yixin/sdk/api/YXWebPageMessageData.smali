.class public Lim/yixin/sdk/api/YXWebPageMessageData;
.super Ljava/lang/Object;

# interfaces
.implements Lim/yixin/sdk/api/YXMessage$YXMessageData;


# instance fields
.field public webPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dataType()Lim/yixin/sdk/api/YXMessage$MessageType;
    .locals 1

    sget-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->WEB_PAGE:Lim/yixin/sdk/api/YXMessage$MessageType;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_yxWebPageMessageData_webPageUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    return-void
.end method

.method public verifyData()Z
    .locals 4

    iget-object v0, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_3

    :cond_0
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v2, Lim/yixin/sdk/api/YXWebPageMessageData;

    iget-object v0, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "webPageUrl is blank"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webPageUrl.length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">10240"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public write(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_yxWebPageMessageData_webPageUrl"

    iget-object v1, p0, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
