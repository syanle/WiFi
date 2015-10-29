.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field protected final parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;, "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.KeySet<TK;TV;>;"
    .local p1, "parent":Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;, "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 892
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    .line 893
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 900
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;, "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.KeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->clear()V

    .line 901
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 904
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;, "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.KeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;, "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.KeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->createKeySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 908
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;, "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.KeySet<TK;TV;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 909
    .local v0, "result":Z
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 896
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;, "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.KeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method
