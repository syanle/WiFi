.class public Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;
.super Ljava/lang/Object;
.source "SubjectDomainCombiner.java"

# interfaces
.implements Ljava/security/DomainCombiner;


# static fields
.field private static final _GET:Lorg/apache/harmony/javax/security/auth/AuthPermission;


# instance fields
.field private subject:Lorg/apache/harmony/javax/security/auth/Subject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .line 36
    const-string v1, "getSubjectFromDomainCombiner"

    .line 35
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;->_GET:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/security/auth/Subject;)V
    .locals 1
    .param p1, "subject"    # Lorg/apache/harmony/javax/security/auth/Subject;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    .line 50
    return-void
.end method


# virtual methods
.method public combine([Ljava/security/ProtectionDomain;[Ljava/security/ProtectionDomain;)[Ljava/security/ProtectionDomain;
    .locals 9
    .param p1, "currentDomains"    # [Ljava/security/ProtectionDomain;
    .param p2, "assignedDomains"    # [Ljava/security/ProtectionDomain;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "len":I
    if-eqz p1, :cond_0

    .line 87
    array-length v6, p1

    add-int/2addr v1, v6

    .line 89
    :cond_0
    if-eqz p2, :cond_1

    .line 90
    array-length v6, p2

    add-int/2addr v1, v6

    .line 92
    :cond_1
    if-nez v1, :cond_3

    .line 93
    const/4 v4, 0x0

    .line 121
    :cond_2
    :goto_0
    return-object v4

    .line 96
    :cond_3
    new-array v4, v1, [Ljava/security/ProtectionDomain;

    .line 99
    .local v4, "pd":[Ljava/security/ProtectionDomain;
    const/4 v0, 0x0

    .line 100
    .local v0, "cur":I
    if-eqz p1, :cond_4

    .line 102
    iget-object v6, p0, Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    invoke-virtual {v6}, Lorg/apache/harmony/javax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    .line 103
    .local v5, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/Principal;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    .line 105
    .local v3, "p":[Ljava/security/Principal;
    const/4 v0, 0x0

    :goto_1
    array-length v6, p1

    if-lt v0, v6, :cond_5

    .line 117
    .end local v3    # "p":[Ljava/security/Principal;
    .end local v5    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_4
    if-eqz p2, :cond_2

    .line 118
    const/4 v6, 0x0

    array-length v7, p2

    invoke-static {p2, v6, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 106
    .restart local v3    # "p":[Ljava/security/Principal;
    .restart local v5    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_5
    aget-object v6, p1, v0

    if-eqz v6, :cond_6

    .line 108
    new-instance v2, Ljava/security/ProtectionDomain;

    aget-object v6, p1, v0

    invoke-virtual {v6}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v6

    .line 109
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/security/ProtectionDomain;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v7

    aget-object v8, p1, v0

    .line 110
    invoke-virtual {v8}, Ljava/security/ProtectionDomain;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 108
    invoke-direct {v2, v6, v7, v8, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V

    .line 111
    .local v2, "newPD":Ljava/security/ProtectionDomain;
    aput-object v2, v4, v0

    .line 105
    .end local v2    # "newPD":Ljava/security/ProtectionDomain;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSubject()Lorg/apache/harmony/javax/security/auth/Subject;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 59
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;->_GET:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    return-object v1
.end method
