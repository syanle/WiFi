.class public Lcom/cat/list/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static flag:I

.field private static util:Lcom/cat/list/Util;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Lcom/cat/list/Util;->flag:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/cat/list/Util;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/cat/list/Util;->util:Lcom/cat/list/Util;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/cat/list/Util;

    invoke-direct {v0}, Lcom/cat/list/Util;-><init>()V

    sput-object v0, Lcom/cat/list/Util;->util:Lcom/cat/list/Util;

    .line 19
    :cond_0
    sget-object v0, Lcom/cat/list/Util;->util:Lcom/cat/list/Util;

    return-object v0
.end method

.method private static getSubStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "num"    # I

    .prologue
    .line 97
    const-string v2, ""

    .line 98
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 99
    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 105
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 100
    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 101
    .local v1, "lastFirst":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getExtPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v0, ""

    .line 43
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    return-object v0
.end method

.method public getImageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, ""

    .line 71
    .local v0, "imageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 72
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_0
    return-object v0
.end method

.method public getImageName2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, ""

    .line 86
    .local v0, "imageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 88
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/cat/list/Util;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    return-object v0
.end method

.method public getPackagePath(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagePath2(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "mActivity"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSDCard()Z
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "b":Z
    const-string v1, "mounted"

    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 33
    :cond_0
    return v0
.end method
