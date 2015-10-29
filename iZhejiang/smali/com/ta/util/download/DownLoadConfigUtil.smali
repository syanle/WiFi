.class public Lcom/ta/util/download/DownLoadConfigUtil;
.super Ljava/lang/Object;
.source "DownLoadConfigUtil.java"


# static fields
.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "com.yyxu.download"

.field public static final URL_COUNT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearURL(I)V
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 37
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getCurrentConfig()Lcom/ta/util/config/TAIConfig;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ta/util/config/TAIConfig;->remove(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getCurrentConfig()Lcom/ta/util/config/TAIConfig;

    move-result-object v0

    .line 64
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Lcom/ta/util/config/TAIConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public static getURL(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 43
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getCurrentConfig()Lcom/ta/util/config/TAIConfig;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/ta/util/config/TAIConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method public static getURLArray()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 57
    return-object v1

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/ta/util/download/DownLoadConfigUtil;->getURL(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/util/download/DownLoadConfigUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static storeURL(ILjava/lang/String;)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getCurrentConfig()Lcom/ta/util/config/TAIConfig;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ta/util/config/TAIConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
