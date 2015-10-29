.class public final Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;
.super Ljava/security/Permission;
.source "PrivateCredentialPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;
    }
.end annotation


# static fields
.field private static final READ:Ljava/lang/String; = "read"

.field private static final serialVersionUID:J = 0x4955dc777b507f4cL


# instance fields
.field private credentialClass:Ljava/lang/String;

.field private transient offset:I

.field private transient set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v0, "read"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->initTargetName(Ljava/lang/String;)V

    .line 84
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.11"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .param p1, "credentialClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    .line 99
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iput-object v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 100
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    return-void

    .line 100
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Principal;

    .line 101
    .local v3, "p":Ljava/security/Principal;
    new-instance v0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, "element":Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;
    const/4 v1, 0x0

    .line 104
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_1
    iget v5, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-lt v2, v5, :cond_2

    .line 110
    :goto_2
    if-nez v1, :cond_0

    .line 111
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v6, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    aput-object v0, v5, v6

    goto :goto_0

    .line 105
    :cond_2
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    const/4 v1, 0x1

    .line 107
    goto :goto_2

    .line 104
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private initTargetName(Ljava/lang/String;)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "auth.0E"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 130
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "auth.0F"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 134
    :cond_1
    const/16 v11, 0x20

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 135
    .local v0, "beg":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_2

    .line 136
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "auth.10"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 138
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "count":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 144
    .local v8, "nameLength":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-lt v0, v8, :cond_3

    .line 154
    const/4 v11, 0x1

    if-ge v1, v11, :cond_6

    .line 155
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "auth.10"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 145
    :cond_3
    const/16 v11, 0x20

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 146
    .local v4, "i":I
    const/16 v11, 0x22

    add-int/lit8 v12, v4, 0x2

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 148
    const/4 v11, -0x1

    if-eq v4, v11, :cond_4

    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_5

    .line 149
    :cond_4
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "auth.10"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 144
    :cond_5
    add-int/lit8 v0, v7, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v4    # "i":I
    :cond_6
    const/16 v11, 0x20

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 165
    new-array v11, v1, [Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iput-object v11, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 166
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-lt v6, v1, :cond_7

    .line 186
    return-void

    .line 167
    :cond_7
    const/16 v11, 0x20

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 168
    .restart local v4    # "i":I
    const/16 v11, 0x22

    add-int/lit8 v12, v4, 0x2

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 170
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, "principalClass":Ljava/lang/String;
    add-int/lit8 v11, v4, 0x2

    invoke-virtual {p1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "principalName":Ljava/lang/String;
    new-instance v2, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    invoke-direct {v2, v9, v10}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v2, "element":Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;
    const/4 v3, 0x0

    .line 176
    .local v3, "found":Z
    const/4 v5, 0x0

    .local v5, "ii":I
    :goto_2
    iget v11, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-lt v5, v11, :cond_9

    .line 182
    :goto_3
    if-nez v3, :cond_8

    .line 183
    iget-object v11, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v12, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    aput-object v2, v11, v12

    .line 166
    :cond_8
    add-int/lit8 v0, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 177
    :cond_9
    iget-object v11, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v11, v11, v5

    invoke-virtual {v11, v2}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 178
    const/4 v3, 0x1

    .line 179
    goto :goto_3

    .line 176
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 190
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->initTargetName(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private sameMembers([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 7
    .param p1, "ar1"    # [Ljava/lang/Object;
    .param p2, "ar2"    # [Ljava/lang/Object;
    .param p3, "length"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 304
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v3

    .line 307
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v3, v4

    .line 308
    goto :goto_0

    .line 311
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-lt v2, p3, :cond_4

    .line 319
    :goto_3
    if-nez v0, :cond_6

    move v3, v4

    .line 320
    goto :goto_0

    .line 314
    :cond_4
    aget-object v5, p1, v1

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 315
    const/4 v0, 0x1

    .line 316
    goto :goto_3

    .line 313
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 311
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-ne p1, p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 250
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 253
    check-cast v0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;

    .line 255
    .local v0, "that":Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    iget v4, v0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-ne v3, v4, :cond_4

    .line 256
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget-object v4, v0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v5, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->sameMembers([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 255
    goto :goto_0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "read"

    return-object v0
.end method

.method public getCredentialClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipals()[[Ljava/lang/String;
    .locals 5

    .prologue
    .line 211
    iget v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    .line 213
    .local v1, "s":[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 217
    return-object v1

    .line 214
    :cond_0
    aget-object v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 215
    aget-object v2, v1, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-lt v1, v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->getCredentialClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 238
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 11
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v2, p1

    .line 266
    check-cast v2, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;

    .line 268
    .local v2, "that":Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;
    const-string v9, "*"

    iget-object v10, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    .line 269
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->getCredentialClass()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 273
    :cond_2
    iget v9, v2, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    if-nez v9, :cond_3

    move v7, v8

    .line 274
    goto :goto_0

    .line 277
    :cond_3
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 278
    .local v5, "thisCo":[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;
    iget-object v3, v2, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->set:[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 279
    .local v3, "thatCo":[Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;
    iget v6, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    .line 280
    .local v6, "thisPrincipalsSize":I
    iget v4, v2, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;->offset:I

    .line 281
    .local v4, "thatPrincipalsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v6, :cond_4

    move v7, v8

    .line 291
    goto :goto_0

    .line 282
    :cond_4
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-lt v1, v4, :cond_6

    .line 287
    :cond_5
    array-length v9, v3

    if-eq v1, v9, :cond_0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_6
    aget-object v9, v5, v0

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->implies(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return-object v0
.end method
