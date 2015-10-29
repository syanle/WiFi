.class Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;
.super Ljava/lang/Object;
.source "LoginContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/login/LoginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextedCallbackHandler"
.end annotation


# instance fields
.field private final hiddenHandlerRef:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field final synthetic this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 0
    .param p2, "handler"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->hiddenHandlerRef:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .line 460
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;)Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->hiddenHandlerRef:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    return-object v0
.end method


# virtual methods
.method public handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    .locals 3
    .param p1, "callbacks"    # [Lorg/apache/harmony/javax/security/auth/callback/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .prologue
    .line 465
    :try_start_0
    new-instance v1, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;[Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    .line 470
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    # getter for: Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;
    invoke-static {v2}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$0(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 465
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "ex":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    throw v1

    .line 475
    :cond_0
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method
