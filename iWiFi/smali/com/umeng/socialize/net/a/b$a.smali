.class public final enum Lcom/umeng/socialize/net/a/b$a;
.super Ljava/lang/Enum;
.source "SocializeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/net/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/net/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/socialize/net/a/b$a;

.field public static final enum b:Lcom/umeng/socialize/net/a/b$a;

.field private static final synthetic c:[Lcom/umeng/socialize/net/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/umeng/socialize/net/a/b$a;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/net/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/net/a/b$a;->a:Lcom/umeng/socialize/net/a/b$a;

    new-instance v0, Lcom/umeng/socialize/net/a/b$a;

    const-string v1, "VEDIO"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/net/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/net/a/b$a;->b:Lcom/umeng/socialize/net/a/b$a;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socialize/net/a/b$a;

    sget-object v1, Lcom/umeng/socialize/net/a/b$a;->a:Lcom/umeng/socialize/net/a/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/net/a/b$a;->b:Lcom/umeng/socialize/net/a/b$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socialize/net/a/b$a;->c:[Lcom/umeng/socialize/net/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/net/a/b$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socialize/net/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/a/b$a;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/net/a/b$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socialize/net/a/b$a;->c:[Lcom/umeng/socialize/net/a/b$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socialize/net/a/b$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
