.class public abstract Lcom/umeng/socom/net/s;
.super Ljava/lang/Object;
.source "URequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socom/net/s$a;
    }
.end annotation


# static fields
.field protected static g:Ljava/lang/String;

.field protected static h:Ljava/lang/String;


# instance fields
.field protected i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "POST"

    sput-object v0, Lcom/umeng/socom/net/s;->g:Ljava/lang/String;

    .line 28
    const-string v0, "GET"

    sput-object v0, Lcom/umeng/socom/net/s;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/umeng/socom/net/s;->i:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/umeng/socom/net/s;->i:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socom/net/s$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d()Lorg/json/JSONObject;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/umeng/socom/net/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/umeng/socom/net/s;->i:Ljava/lang/String;

    return-object v0
.end method
