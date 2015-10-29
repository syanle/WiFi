.class public Lcn/sharesdk/yixin/utils/YXWebPageMessageData;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;


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

    iput-object p1, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dataType()Lcn/sharesdk/yixin/utils/YXMessage$MessageType;
    .locals 1

    sget-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->WEB_PAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_yxWebPageMessageData_webPageUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    return-void
.end method

.method public verifyData()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "webPageUrl is blank"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webPageUrl.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">10240"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_yxWebPageMessageData_webPageUrl"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
