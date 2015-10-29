.class public Lorg/apache/harmony/javax/security/auth/login/LoginContext;
.super Ljava/lang/Object;
.source "LoginContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;,
        Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALLBACK_HANDLER_PROPERTY:Ljava/lang/String; = "auth.login.defaultCallbackHandler"

.field private static final OPTIONAL:I = 0x0

.field private static final REQUIRED:I = 0x1

.field private static final REQUISITE:I = 0x2

.field private static final SUFFICIENT:I = 0x3


# instance fields
.field private callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private contextClassLoader:Ljava/lang/ClassLoader;

.field private loggedIn:Z

.field private modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

.field private sharedState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private subject:Lorg/apache/harmony/javax/security/auth/Subject;

.field private userContext:Ljava/security/AccessControlContext;

.field private userProvidedConfig:Z

.field private userProvidedSubject:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subject"    # Lorg/apache/harmony/javax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-nez p2, :cond_0

    .line 110
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.03"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subject"    # Lorg/apache/harmony/javax/security/auth/Subject;
    .param p3, "cbHandler"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.03"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-nez p3, :cond_1

    .line 122
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.34"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subject"    # Lorg/apache/harmony/javax/security/auth/Subject;
    .param p3, "cbHandler"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .param p4, "config"    # Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cbHandler"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p2, :cond_0

    .line 102
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.34"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 105
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/security/AccessControlContext;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method static synthetic access$3(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    return-void
.end method

.method static synthetic access$4(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loginImpl()V

    return-void
.end method

.method static synthetic access$5(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->logoutImpl()V

    return-void
.end method

.method private init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subject"    # Lorg/apache/harmony/javax/security/auth/Subject;
    .param p3, "cbHandler"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .param p4, "config"    # Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 136
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-eqz p2, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedSubject:Z

    .line 141
    if-nez p1, :cond_1

    .line 142
    new-instance v5, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v6, "auth.00"

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 145
    :cond_1
    if-nez p4, :cond_4

    .line 146
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAccessibleConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object p4

    .line 151
    :goto_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 153
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_2

    iget-boolean v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-nez v5, :cond_2

    .line 154
    new-instance v5, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createLoginContext."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 157
    :cond_2
    invoke-virtual {p4, p1}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v1

    .line 158
    .local v1, "entries":[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    if-nez v1, :cond_5

    .line 159
    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-nez v5, :cond_3

    .line 160
    new-instance v5, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    const-string v6, "createLoginContext.other"

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 162
    :cond_3
    const-string v5, "other"

    invoke-virtual {p4, v5}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v1

    .line 163
    if-nez v1, :cond_5

    .line 164
    new-instance v5, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "auth.35 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    .end local v1    # "entries":[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_4
    iput-boolean v6, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    goto :goto_1

    .line 168
    .restart local v1    # "entries":[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_5
    array-length v5, v1

    new-array v5, v5, [Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    iput-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    .line 169
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v5, v5

    if-lt v3, v5, :cond_7

    .line 182
    :try_start_0
    new-instance v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;

    invoke-direct {v5, p0, p3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    iget-boolean v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v5, :cond_8

    .line 211
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    .line 216
    :cond_6
    :goto_3
    return-void

    .line 170
    :cond_7
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    new-instance v6, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    aget-object v7, v1, v3

    invoke-direct {v6, p0, v7}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;)V

    aput-object v6, v5, v3

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "ex":Ljava/security/PrivilegedActionException;
    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 207
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v5, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v6, "auth.36"

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v5

    .line 212
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/security/PrivilegedActionException;
    :cond_8
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    if-eqz v5, :cond_6

    .line 213
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    .line 214
    new-instance v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;

    iget-object v6, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-direct {v5, p0, v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    iput-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    goto :goto_3
.end method

.method private loginImpl()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-nez v7, :cond_0

    .line 253
    new-instance v7, Lorg/apache/harmony/javax/security/auth/Subject;

    invoke-direct {v7}, Lorg/apache/harmony/javax/security/auth/Subject;-><init>()V

    iput-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    .line 256
    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    if-nez v7, :cond_1

    .line 257
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    .line 261
    :cond_1
    const/4 v3, 0x0

    .line 263
    .local v3, "firstProblem":Ljava/lang/Throwable;
    const/4 v7, 0x4

    new-array v4, v7, [I

    .line 264
    .local v4, "logged":[I
    const/4 v7, 0x4

    new-array v6, v7, [I

    .line 266
    .local v6, "total":[I
    iget-object v8, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v9, :cond_9

    .line 304
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 316
    .local v2, "fail":Z
    const/4 v7, 0x1

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    if-ne v7, v8, :cond_4

    const/4 v7, 0x2

    aget v7, v4, v7

    const/4 v8, 0x2

    aget v8, v6, v8

    if-ne v7, v8, :cond_4

    .line 319
    const/4 v7, 0x1

    aget v7, v6, v7

    if-nez v7, :cond_d

    const/4 v7, 0x2

    aget v7, v6, v7

    if-nez v7, :cond_d

    .line 322
    const/4 v7, 0x0

    aget v7, v4, v7

    if-nez v7, :cond_3

    const/4 v7, 0x3

    aget v7, v4, v7

    if-eqz v7, :cond_4

    .line 323
    :cond_3
    const/4 v2, 0x0

    .line 331
    :cond_4
    :goto_2
    const/4 v7, 0x4

    new-array v0, v7, [I

    .line 333
    .local v0, "commited":[I
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v6, v10

    aput v11, v6, v9

    aput v11, v6, v8

    aput v11, v6, v7

    .line 334
    if-nez v2, :cond_5

    .line 337
    iget-object v8, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_3
    if-lt v7, v9, :cond_e

    .line 353
    :cond_5
    const/4 v2, 0x1

    .line 354
    const/4 v7, 0x1

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    if-ne v7, v8, :cond_7

    const/4 v7, 0x2

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v6, v8

    if-ne v7, v8, :cond_7

    .line 357
    const/4 v7, 0x1

    aget v7, v6, v7

    if-nez v7, :cond_10

    const/4 v7, 0x2

    aget v7, v6, v7

    if-nez v7, :cond_10

    .line 362
    const/4 v7, 0x0

    aget v7, v0, v7

    if-nez v7, :cond_6

    const/4 v7, 0x3

    aget v7, v0, v7

    if-eqz v7, :cond_7

    .line 363
    :cond_6
    const/4 v2, 0x0

    .line 372
    :cond_7
    :goto_4
    if-eqz v2, :cond_14

    .line 375
    iget-object v8, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_5
    if-lt v7, v9, :cond_11

    .line 384
    instance-of v7, v3, Ljava/security/PrivilegedActionException;

    if-eqz v7, :cond_8

    .line 385
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 386
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 388
    :cond_8
    instance-of v7, v3, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    if-eqz v7, :cond_13

    .line 389
    check-cast v3, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    .end local v3    # "firstProblem":Ljava/lang/Throwable;
    throw v3

    .line 266
    .end local v0    # "commited":[I
    .end local v2    # "fail":Z
    .restart local v3    # "firstProblem":Ljava/lang/Throwable;
    :cond_9
    aget-object v5, v8, v7

    .line 270
    .local v5, "module":Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :try_start_0
    iget-object v10, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    iget-object v11, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    iget-object v12, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    invoke-virtual {v5, v10, v11, v12}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->create(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Ljava/util/Map;)V

    .line 272
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v10}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->login()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 273
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v6, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v6, v10

    .line 274
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v4, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v4, v10

    .line 275
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_2

    .line 266
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v3, :cond_b

    .line 281
    move-object v3, v1

    .line 283
    :cond_b
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-nez v10, :cond_c

    .line 290
    const/4 v7, 0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    goto/16 :goto_1

    .line 293
    :cond_c
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v6, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v6, v10

    .line 295
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    goto/16 :goto_1

    .line 327
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v5    # "module":Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    .restart local v2    # "fail":Z
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 337
    .restart local v0    # "commited":[I
    :cond_e
    aget-object v5, v8, v7

    .line 338
    .restart local v5    # "module":Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-eqz v10, :cond_f

    .line 339
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v6, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v6, v10

    .line 341
    :try_start_1
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v10}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->commit()Z

    .line 342
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v0, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v0, v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    :cond_f
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 343
    :catch_1
    move-exception v1

    .line 344
    .restart local v1    # "ex":Ljava/lang/Throwable;
    if-nez v3, :cond_f

    .line 345
    move-object v3, v1

    goto :goto_6

    .line 368
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v5    # "module":Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 375
    :cond_11
    aget-object v5, v8, v7

    .line 377
    .restart local v5    # "module":Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :try_start_2
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v10}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->abort()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 375
    :cond_12
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 378
    :catch_2
    move-exception v1

    .line 379
    .restart local v1    # "ex":Ljava/lang/Throwable;
    if-nez v3, :cond_12

    .line 380
    move-object v3, v1

    goto :goto_7

    .line 391
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v5    # "module":Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :cond_13
    new-instance v7, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v8, "auth.37"

    invoke-direct {v7, v8}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v7

    .line 393
    :cond_14
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    .line 394
    return-void
.end method

.method private logoutImpl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 419
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-nez v5, :cond_0

    .line 420
    new-instance v4, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v5, "auth.38"

    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 422
    :cond_0
    iput-boolean v4, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, "firstProblem":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 425
    .local v3, "total":I
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v6, v5

    :goto_0
    if-lt v4, v6, :cond_3

    .line 435
    if-nez v1, :cond_1

    if-nez v3, :cond_6

    .line 436
    :cond_1
    instance-of v4, v1, Ljava/security/PrivilegedActionException;

    if-eqz v4, :cond_2

    .line 437
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 438
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 440
    :cond_2
    instance-of v4, v1, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    if-eqz v4, :cond_5

    .line 441
    check-cast v1, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    .end local v1    # "firstProblem":Ljava/lang/Throwable;
    throw v1

    .line 425
    .restart local v1    # "firstProblem":Ljava/lang/Throwable;
    :cond_3
    aget-object v2, v5, v4

    .line 427
    .local v2, "module":Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :try_start_0
    iget-object v7, v2, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v7}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->logout()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    add-int/lit8 v3, v3, 0x1

    .line 425
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_4

    .line 431
    move-object v1, v0

    goto :goto_1

    .line 443
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v2    # "module":Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :cond_5
    new-instance v4, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v5, "auth.37"

    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v4

    .line 445
    :cond_6
    return-void
.end method


# virtual methods
.method public getSubject()Lorg/apache/harmony/javax/security/auth/Subject;
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedSubject:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    .line 222
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    .line 237
    .local v0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/lang/Void;>;"
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "ex":Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v2
.end method

.method public logout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$3;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$3;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    .line 404
    .local v0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/lang/Void;>;"
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v2, :cond_0

    .line 405
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "ex":Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v2
.end method
