.class public Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
.super Ljava/lang/Object;
.source "AppConfigurationEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    }
.end annotation


# instance fields
.field private final controlFlag:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

.field private final loginModuleName:Ljava/lang/String;

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;Ljava/util/Map;)V
    .locals 2
    .param p1, "loginModuleName"    # Ljava/lang/String;
    .param p2, "controlFlag"    # Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.26"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    if-nez p2, :cond_2

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.27"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    if-nez p3, :cond_3

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->loginModuleName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->controlFlag:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    .line 53
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->options:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public getControlFlag()Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->controlFlag:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    return-object v0
.end method

.method public getLoginModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->loginModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;->options:Ljava/util/Map;

    return-object v0
.end method
