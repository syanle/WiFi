.class public Lcom/umeng/socom/net/o;
.super Lcom/umeng/socom/net/t;
.source "ReportResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socom/net/o$a;
    }
.end annotation


# instance fields
.field public a:Lcom/umeng/socom/net/o$a;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/umeng/socom/net/t;-><init>(Lorg/json/JSONObject;)V

    .line 29
    const-string v0, "ok"

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const-string v0, "ok"

    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    sget-object v0, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    iput-object v0, p0, Lcom/umeng/socom/net/o;->a:Lcom/umeng/socom/net/o$a;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    iput-object v0, p0, Lcom/umeng/socom/net/o;->a:Lcom/umeng/socom/net/o$a;

    goto :goto_0
.end method
