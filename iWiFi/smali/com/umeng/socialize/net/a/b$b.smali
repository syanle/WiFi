.class public enum Lcom/umeng/socialize/net/a/b$b;
.super Ljava/lang/Enum;
.source "SocializeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/net/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/net/a/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/socialize/net/a/b$b;

.field public static final enum b:Lcom/umeng/socialize/net/a/b$b;

.field private static final synthetic c:[Lcom/umeng/socialize/net/a/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/umeng/socialize/net/a/c;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/net/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/net/a/b$b;->a:Lcom/umeng/socialize/net/a/b$b;

    .line 58
    new-instance v0, Lcom/umeng/socialize/net/a/d;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/net/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/net/a/b$b;->b:Lcom/umeng/socialize/net/a/b$b;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socialize/net/a/b$b;

    sget-object v1, Lcom/umeng/socialize/net/a/b$b;->a:Lcom/umeng/socialize/net/a/b$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/net/a/b$b;->b:Lcom/umeng/socialize/net/a/b$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socialize/net/a/b$b;->c:[Lcom/umeng/socialize/net/a/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/net/a/b$b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/net/a/b$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/net/a/b$b;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socialize/net/a/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/a/b$b;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/net/a/b$b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socialize/net/a/b$b;->c:[Lcom/umeng/socialize/net/a/b$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socialize/net/a/b$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
