.class Lcom/ta/util/cache/TAFileCache$1;
.super Lcom/ta/util/cache/LruCache;
.source "TAFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/util/cache/TAFileCache;->init(Lcom/ta/util/cache/TAFileCache$TACacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ta/util/cache/LruCache",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/util/cache/TAFileCache;


# direct methods
.method constructor <init>(Lcom/ta/util/cache/TAFileCache;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/util/cache/TAFileCache$1;->this$0:Lcom/ta/util/cache/TAFileCache;

    .line 86
    invoke-direct {p0, p2}, Lcom/ta/util/cache/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/ta/util/cache/TAFileCache$1;->sizeOf(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "buffer"    # [B

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCache$1;->this$0:Lcom/ta/util/cache/TAFileCache;

    # invokes: Lcom/ta/util/cache/TAFileCache;->getSize(Ljava/lang/String;[B)I
    invoke-static {v0, p1, p2}, Lcom/ta/util/cache/TAFileCache;->access$0(Lcom/ta/util/cache/TAFileCache;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method
