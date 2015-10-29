.class public final Lim/yixin/sdk/api/YXAPIFactory;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lim/yixin/sdk/api/IYXAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lim/yixin/sdk/api/YXAPIFactory;->instance:Lim/yixin/sdk/api/IYXAPI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createYXAPI(Landroid/content/Context;Ljava/lang/String;)Lim/yixin/sdk/api/IYXAPI;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p1}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Lim/yixin/sdk/api/YXAPIFactory;

    const-string v1, "Error param: paramContext == null || YXMessageUtil.isBlank(paramAppId)"

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lim/yixin/sdk/api/YXAPIFactory;->instance:Lim/yixin/sdk/api/IYXAPI;

    if-nez v0, :cond_2

    new-instance v0, Lim/yixin/sdk/api/YXApiImplementation;

    invoke-direct {v0, p0, p1}, Lim/yixin/sdk/api/YXApiImplementation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lim/yixin/sdk/api/YXAPIFactory;->instance:Lim/yixin/sdk/api/IYXAPI;

    const-class v0, Lim/yixin/sdk/api/YXAPIFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createYXAPI called: PackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",paramAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lim/yixin/sdk/api/YXAPIFactory;->instance:Lim/yixin/sdk/api/IYXAPI;

    goto :goto_0
.end method

.method public static getInstance()Lim/yixin/sdk/api/IYXAPI;
    .locals 1

    sget-object v0, Lim/yixin/sdk/api/YXAPIFactory;->instance:Lim/yixin/sdk/api/IYXAPI;

    return-object v0
.end method
