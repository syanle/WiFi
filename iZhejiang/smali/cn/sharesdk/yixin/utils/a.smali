.class public Lcn/sharesdk/yixin/utils/a;
.super Lcn/sharesdk/yixin/utils/f;


# instance fields
.field public a:Lcn/sharesdk/yixin/utils/YXMessage;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/sharesdk/yixin/utils/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/sharesdk/yixin/utils/f;->a(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcn/sharesdk/yixin/utils/YXMessage$a;->a(Landroid/os/Bundle;)Lcn/sharesdk/yixin/utils/YXMessage;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/a;->a:Lcn/sharesdk/yixin/utils/YXMessage;

    const-string v0, "_yxapi_sendmessagetoyx_req_scene"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/yixin/utils/a;->b:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/sharesdk/yixin/utils/f;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/a;->a:Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-static {v0}, Lcn/sharesdk/yixin/utils/YXMessage$a;->a(Lcn/sharesdk/yixin/utils/YXMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "_yxapi_sendmessagetoyx_req_scene"

    iget v1, p0, Lcn/sharesdk/yixin/utils/a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/a;->a:Lcn/sharesdk/yixin/utils/YXMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/a;->a:Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-virtual {v0}, Lcn/sharesdk/yixin/utils/YXMessage;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
