.class public final enum Lcom/umeng/socom/net/p$b;
.super Ljava/lang/Enum;
.source "ResUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socom/net/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socom/net/p$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/socom/net/p$b;

.field public static final enum b:Lcom/umeng/socom/net/p$b;

.field private static final synthetic c:[Lcom/umeng/socom/net/p$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 538
    new-instance v0, Lcom/umeng/socom/net/p$b;

    const-string v1, "BIND_FORM_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socom/net/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socom/net/p$b;->a:Lcom/umeng/socom/net/p$b;

    new-instance v0, Lcom/umeng/socom/net/p$b;

    const-string v1, "BIND_FROM_NET"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socom/net/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socom/net/p$b;->b:Lcom/umeng/socom/net/p$b;

    .line 537
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socom/net/p$b;

    sget-object v1, Lcom/umeng/socom/net/p$b;->a:Lcom/umeng/socom/net/p$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socom/net/p$b;->b:Lcom/umeng/socom/net/p$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socom/net/p$b;->c:[Lcom/umeng/socom/net/p$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socom/net/p$b;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socom/net/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/p$b;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socom/net/p$b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socom/net/p$b;->c:[Lcom/umeng/socom/net/p$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socom/net/p$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
