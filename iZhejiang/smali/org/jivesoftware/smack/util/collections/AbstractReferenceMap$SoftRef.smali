.class Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;
.super Ljava/lang/ref/SoftReference;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private hash:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "hash"    # I
    .param p3, "q"    # Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/ref/ReferenceQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 927
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;, "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.SoftRef<TT;>;"
    .local p2, "r":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 928
    iput p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;->hash:I

    .line 929
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 932
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;, "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.SoftRef<TT;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;->hash:I

    return v0
.end method
