.class public Lcn/sharesdk/yixin/friends/Yixin$ShareParams;
.super Lcn/sharesdk/yixin/utils/YixinImpl$ShareParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/yixin/friends/Yixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/sharesdk/yixin/utils/YixinImpl$ShareParams;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/yixin/friends/Yixin$ShareParams;->scene:I

    return-void
.end method
