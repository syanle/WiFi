.class public Lorg/apache/harmony/javax/security/auth/login/CredentialException;
.super Lorg/apache/harmony/javax/security/auth/login/LoginException;
.source "CredentialException.java"


# static fields
.field private static final serialVersionUID:J = -0x423cb9b16deed583L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
