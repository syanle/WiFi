.class final Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
.super Ljava/lang/Object;
.source "LoginContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/login/LoginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Module"
.end annotation


# instance fields
.field entry:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

.field flag:I

.field klass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

.field final synthetic this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;)V
    .locals 2
    .param p2, "entry"    # Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    .prologue
    .line 497
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->entry:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    .line 499
    invoke-virtual {p2}, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->getControlFlag()Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    move-result-object v0

    .line 500
    .local v0, "flg":Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->OPTIONAL:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    if-ne v0, v1, :cond_0

    .line 501
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->flag:I

    .line 510
    :goto_0
    return-void

    .line 502
    :cond_0
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->REQUISITE:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    if-ne v0, v1, :cond_1

    .line 503
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->flag:I

    goto :goto_0

    .line 504
    :cond_1
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->SUFFICIENT:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    if-ne v0, v1, :cond_2

    .line 505
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->flag:I

    goto :goto_0

    .line 507
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->flag:I

    goto :goto_0
.end method


# virtual methods
.method create(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Ljava/util/Map;)V
    .locals 5
    .param p1, "subject"    # Lorg/apache/harmony/javax/security/auth/Subject;
    .param p2, "callbackHandler"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/security/auth/Subject;",
            "Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 522
    .local p3, "sharedState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->entry:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->getLoginModuleName()Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "klassName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 525
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    # getter for: Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;
    invoke-static {v3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$1(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    if-nez v2, :cond_1

    .line 534
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 544
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->entry:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    invoke-virtual {v3}, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, p2, p3, v3}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->initialize(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Ljava/util/Map;Ljava/util/Map;)V

    .line 546
    :cond_1
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "auth.39 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v2, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 527
    check-cast v2, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v2

    .line 535
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 536
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "auth.3A "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v2, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 536
    check-cast v2, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v2

    .line 539
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 540
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v2, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "auth.3A"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v2, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 540
    check-cast v2, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v2
.end method

.method getFlag()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->flag:I

    return v0
.end method
