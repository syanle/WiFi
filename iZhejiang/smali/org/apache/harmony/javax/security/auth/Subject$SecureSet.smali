.class final Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TSST;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SET_Principal:I = 0x0

.field private static final SET_PrivCred:I = 0x1

.field private static final SET_PubCred:I = 0x2

.field private static final serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field private elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TSST;>;"
        }
    .end annotation
.end field

.field private transient permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

.field private setType:I

.field final synthetic this$0:Lorg/apache/harmony/javax/security/auth/Subject;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/AuthPermission;)V
    .locals 1
    .param p2, "perm"    # Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .prologue
    .line 560
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->this$0:Lorg/apache/harmony/javax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 561
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .line 562
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 563
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/AuthPermission;Ljava/util/Collection;)V
    .locals 4
    .param p2, "perm"    # Lorg/apache/harmony/javax/security/auth/AuthPermission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/security/auth/AuthPermission;",
            "Ljava/util/Collection",
            "<+TSST;>;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    .local p3, "s":Ljava/util/Collection;, "Ljava/util/Collection<+TSST;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;-><init>(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/AuthPermission;)V

    .line 572
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 574
    .local v2, "trust":Z
    :goto_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 575
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TSST;>;"
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 582
    return-void

    .line 572
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TSST;>;"
    .end local v2    # "trust":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 576
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TSST;>;"
    .restart local v2    # "trust":Z
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 577
    .local v1, "o":Ljava/lang/Object;, "TSST;"
    invoke-direct {p0, v1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    .line 578
    if-nez v2, :cond_3

    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic access$0(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;)Lorg/apache/harmony/javax/security/auth/AuthPermission;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;)Lorg/apache/harmony/javax/security/auth/Subject;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->this$0:Lorg/apache/harmony/javax/security/auth/Subject;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 716
    iget v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->setType:I

    packed-switch v1, :pswitch_data_0

    .line 727
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 718
    :pswitch_0
    # getter for: Lorg/apache/harmony/javax/security/auth/Subject;->_PRINCIPALS:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$2()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .line 730
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 731
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    return-void

    .line 721
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    :pswitch_1
    # getter for: Lorg/apache/harmony/javax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$3()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    goto :goto_0

    .line 724
    :pswitch_2
    # getter for: Lorg/apache/harmony/javax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$5()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    goto :goto_0

    .line 732
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyElement(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 587
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 590
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    # getter for: Lorg/apache/harmony/javax/security/auth/Subject;->_PRINCIPALS:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$2()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-class v0, Ljava/security/Principal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.0B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    # getter for: Lorg/apache/harmony/javax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$3()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 740
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->setType:I

    .line 750
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 751
    return-void

    .line 741
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 744
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    # getter for: Lorg/apache/harmony/javax/security/auth/Subject;->_PRINCIPALS:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$2()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 745
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_1

    .line 747
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSST;)Z"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "o":Ljava/lang/Object;, "TSST;"
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->this$0:Lorg/apache/harmony/javax/security/auth/Subject;

    # invokes: Lorg/apache/harmony/javax/security/auth/Subject;->checkState()V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject;->access$0(Lorg/apache/harmony/javax/security/auth/Subject;)V

    .line 605
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    # invokes: Lorg/apache/harmony/javax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject;->access$1(Ljava/security/Permission;)V

    .line 607
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 609
    const/4 v0, 0x1

    .line 611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final get(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-nez p1, :cond_0

    .line 661
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 664
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$2;

    invoke-direct {v2, p0, p1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$2;-><init>(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;Ljava/lang/Class;)V

    .line 703
    .local v2, "s":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 709
    return-object v2

    .line 704
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 705
    .local v1, "o":Ljava/lang/Object;, "TSST;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    # getter for: Lorg/apache/harmony/javax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Subject;->access$3()Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 623
    new-instance v0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$1;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$1;-><init>(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 637
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_0

    .line 644
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 646
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 651
    .local p0, "this":Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;, "Lorg/apache/harmony/javax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
