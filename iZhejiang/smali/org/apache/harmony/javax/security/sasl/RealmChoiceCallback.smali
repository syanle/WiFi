.class public Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;
.super Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;
.source "RealmChoiceCallback.java"


# static fields
.field private static final serialVersionUID:J = -0x772f350e0ad3a274L


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "choices"    # [Ljava/lang/String;
    .param p3, "defaultChoice"    # I
    .param p4, "multiple"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;-><init>(Ljava/lang/String;[Ljava/lang/String;IZ)V

    .line 29
    return-void
.end method
