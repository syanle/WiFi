.class public Lcom/umeng/socialize/net/a/a;
.super Lcom/umeng/socom/net/r;
.source "SocializeClient.java"


# static fields
.field public static final a:Ljava/lang/String; = "http://log.umsns.com/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/umeng/socom/net/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;
    .locals 2

    .prologue
    .line 21
    sget-boolean v0, Lcom/umeng/socialize/common/SocializeConstants;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 23
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_0
    :goto_0
    const-string v0, "http://log.umsns.com/"

    invoke-virtual {p1, v0}, Lcom/umeng/socialize/net/a/b;->a(Ljava/lang/String;)V

    .line 28
    iget-object v0, p1, Lcom/umeng/socialize/net/a/b;->c:Ljava/lang/Class;

    invoke-super {p0, p1, v0}, Lcom/umeng/socom/net/r;->a(Lcom/umeng/socom/net/s;Ljava/lang/Class;)Lcom/umeng/socom/net/t;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/a/e;

    return-object v0

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method
