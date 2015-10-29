.class public Lcn/sharesdk/yixin/utils/YixinHandlerActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/sharesdk/yixin/utils/YixinImpl;->a()Lcn/sharesdk/yixin/utils/YixinImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;)Z

    invoke-virtual {p0}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->setIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcn/sharesdk/yixin/utils/YixinImpl;->a()Lcn/sharesdk/yixin/utils/YixinImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;)Z

    invoke-virtual {p0}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->finish()V

    return-void
.end method

.method public onReceiveMessageFromYX(Lcn/sharesdk/yixin/utils/YXMessage;)V
    .locals 0

    return-void
.end method
