.class Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;
.super Ljava/lang/Object;
.source "LoginContext.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

.field private final synthetic val$cbHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->val$cbHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$2(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljava/lang/ClassLoader;)V

    .line 186
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    # getter for: Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;
    invoke-static {v2}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$1(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    .line 187
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$2(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljava/lang/ClassLoader;)V

    .line 190
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->val$cbHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    if-nez v2, :cond_3

    .line 193
    const-string v2, "auth.login.defaultCallbackHandler"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "klassName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 202
    .end local v1    # "klassName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 197
    .restart local v1    # "klassName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    # getter for: Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;
    invoke-static {v3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$1(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 198
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-static {v3, v2}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$3(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    goto :goto_0

    .line 200
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "klassName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;->val$cbHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-static {v2, v3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$3(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    goto :goto_0
.end method
