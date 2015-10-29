.class public Lcom/ta/exception/TANoSuchCommandException;
.super Lcom/ta/exception/TAException;
.source "TANoSuchCommandException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ta/exception/TAException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ta/exception/TAException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
