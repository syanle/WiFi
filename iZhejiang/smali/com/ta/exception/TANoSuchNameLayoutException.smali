.class public Lcom/ta/exception/TANoSuchNameLayoutException;
.super Lcom/ta/exception/TAException;
.source "TANoSuchNameLayoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x269514d7e080996dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ta/exception/TAException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ta/exception/TAException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
