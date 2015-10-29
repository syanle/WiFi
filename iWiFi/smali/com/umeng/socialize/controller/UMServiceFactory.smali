.class public abstract Lcom/umeng/socialize/controller/UMServiceFactory;
.super Ljava/lang/Object;
.source "UMServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/controller/UMServiceFactory$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Lcom/umeng/socialize/controller/UMQQSsoHandler;

.field private static synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/controller/UMServiceFactory;->a:Z

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->b:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Lcom/umeng/socialize/bean/SocializeEntity;)Lcom/umeng/socialize/controller/UMSocialService;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/umeng/socialize/controller/UMSocialService;",
            ">;",
            "Lcom/umeng/socialize/bean/SocializeEntity;",
            ")",
            "Lcom/umeng/socialize/controller/UMSocialService;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    const-class v0, Lcom/umeng/socialize/controller/permission/Implement;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/permission/Implement;

    .line 150
    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/annotation/AnnotationFormatError;

    const-string v1, "\u8be5\u63a5\u53e3\u672a\u5b9a\u4e49\u5b9e\u73b0\u7c7b\u7684\u6ce8\u89e3"

    invoke-direct {v0, v1}, Ljava/lang/annotation/AnnotationFormatError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/umeng/socialize/controller/permission/Implement;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 158
    const-class v3, Lcom/umeng/socialize/bean/SocializeEntity;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 160
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/UMSocialService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const-class v1, Lcom/umeng/socialize/controller/UMServiceFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 167
    new-array v2, v5, [Ljava/lang/Class;

    .line 168
    const-class v3, Lcom/umeng/socialize/controller/UMSocialService;

    aput-object v3, v2, v4

    .line 170
    new-instance v3, Lcom/umeng/socialize/controller/UMServiceFactory$a;

    invoke-direct {v3, v0, p0}, Lcom/umeng/socialize/controller/UMServiceFactory$a;-><init>(Lcom/umeng/socialize/controller/UMSocialService;Ljava/lang/Class;)V

    .line 165
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u8be5\u63a5\u53e3\u6240\u5b9a\u4e49\u7684\u5b9e\u73b0\u7c7b\u4e0d\u80fd\u88ab\u5b9e\u4f8b\u5316"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/umeng/socialize/controller/UMServiceFactory;->a:Z

    return v0
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/socialize/controller/RequestType;->values()[Lcom/umeng/socialize/controller/RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->ANALYTICS:Lcom/umeng/socialize/controller/RequestType;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->API:Lcom/umeng/socialize/controller/RequestType;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static getUMQQHandler()Lcom/umeng/socialize/controller/UMQQSsoHandler;
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->b:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    if-nez v0, :cond_0

    .line 209
    const-string v0, ""

    .line 210
    const-string v1, "UMQQSsoHandler object is null, please call UMServiceFactory.getUMQQHandler(Activity activity, String appid) first."

    .line 209
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->b:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    return-object v0
.end method

.method public static getUMQQHandler(Landroid/app/Activity;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMQQSsoHandler;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->b:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    if-eqz p0, :cond_2

    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->b:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    .line 195
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->b:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    .line 200
    :cond_1
    :goto_0
    sget-object v0, Lcom/umeng/socialize/controller/UMServiceFactory;->b:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    return-object v0

    .line 197
    :cond_2
    const-string v0, ""

    const-string v1, "getUMQQHandler(Activity activity, String appid)\u4e2d\u7684activity\u4e3a\u7a7a."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;
    .locals 4

    .prologue
    .line 49
    sget-object v0, Lcom/umeng/socialize/controller/RequestType;->ANALYTICS:Lcom/umeng/socialize/controller/RequestType;

    if-ne v0, p1, :cond_2

    .line 50
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SocializeEntity;

    .line 69
    :goto_0
    const/4 v1, 0x0

    .line 70
    invoke-static {}, Lcom/umeng/socialize/controller/UMServiceFactory;->b()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/umeng/socialize/controller/RequestType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 83
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_4

    .line 85
    invoke-static {v1, v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->a(Ljava/lang/Class;Lcom/umeng/socialize/bean/SocializeEntity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    sget-object v2, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SocializeEntity;

    .line 55
    invoke-static {v0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->cloneNew(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;-><init>(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)V

    goto :goto_0

    .line 61
    :cond_2
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SocializeEntity;

    goto/16 :goto_0

    .line 64
    :cond_3
    new-instance v0, Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;-><init>(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)V

    goto/16 :goto_0

    .line 72
    :pswitch_1
    const-class v1, Lcom/umeng/socialize/controller/permission/a;

    goto/16 :goto_1

    .line 78
    :pswitch_2
    const-class v1, Lcom/umeng/socialize/controller/permission/b;

    goto/16 :goto_1

    .line 88
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestType ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is unusable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUMWXHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMWXHandler;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/umeng/socialize/controller/UMWXHandler;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/UMWXHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    return-object v0
.end method
