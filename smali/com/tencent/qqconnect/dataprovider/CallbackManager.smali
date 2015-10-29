.class public final Lcom/tencent/qqconnect/dataprovider/CallbackManager;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final HTTP_PREFIX:Ljava/lang/String; = "http://"


# instance fields
.field private mAppid:Ljava/lang/String;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Landroid/net/Uri;

.field private mFromActivityClassName:Ljava/lang/String;

.field private mFromPackageName:Ljava/lang/String;

.field private mIsCallFromTencentApp:Z

.field private mRequestDataTypeFlag:I

.field private mSrcAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mIsCallFromTencentApp:Z

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mData:Landroid/net/Uri;

    .line 38
    const-string v1, "srcPackageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mFromPackageName:Ljava/lang/String;

    .line 39
    const-string v1, "srcClassName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mFromActivityClassName:Ljava/lang/String;

    .line 40
    const-string v1, "srcAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mSrcAction:Ljava/lang/String;

    .line 41
    const-string v1, "requestDataTypeFlag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mRequestDataTypeFlag:I

    .line 42
    const-string v1, "params_appid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mAppid:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mFromActivityClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mIsCallFromTencentApp:Z

    .line 47
    :cond_0
    return-void
.end method

.method private BackToTencentApp(Landroid/os/Bundle;)I
    .locals 3

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mIsCallFromTencentApp:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, -0x2

    .line 64
    :goto_0
    return v0

    .line 57
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mFromPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mFromActivityClassName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mSrcAction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v0, "params_appid"

    iget-object v2, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mAppid:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkFilePath(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_1

    .line 132
    const/4 v0, -0x7

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 143
    if-eqz v2, :cond_2

    .line 144
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    const/4 v0, -0x5

    goto :goto_0

    .line 146
    :cond_2
    const/16 v0, -0xa

    goto :goto_0

    .line 154
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    :cond_4
    const/4 v0, -0x8

    goto :goto_0

    .line 159
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 160
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_6

    .line 161
    const/16 v0, -0x9

    goto :goto_0

    .line 162
    :cond_6
    const-wide/32 v3, 0x40000000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 163
    const/4 v0, -0x6

    goto :goto_0
.end method


# virtual methods
.method public getRequestDateTypeFlag()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mRequestDataTypeFlag:I

    return v0
.end method

.method public isCallFromTencentApp()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->mIsCallFromTencentApp:Z

    return v0
.end method

.method public isSupportType(I)Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->getRequestDateTypeFlag()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendTextAndImagePath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-virtual {p0, v3}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->isSupportType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const/4 v0, -0x1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->checkFilePath(Ljava/lang/String;)I

    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string v2, "contentDataType"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v2, "contentData"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-direct {p0, v1}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->BackToTencentApp(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0
.end method

.method public sendTextAndVideoPath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 100
    invoke-virtual {p0, v3}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->isSupportType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const/4 v0, -0x1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->checkFilePath(Ljava/lang/String;)I

    move-result v0

    .line 105
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string v2, "contentDataType"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v2, "contentData"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    invoke-direct {p0, v1}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->BackToTencentApp(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0
.end method

.method public sendTextOnly(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 118
    invoke-virtual {p0, v3}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->isSupportType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    .line 122
    :cond_0
    new-instance v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly;

    invoke-direct {v0, p1}, Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    const-string v2, "contentDataType"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v2, "contentData"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    invoke-direct {p0, v1}, Lcom/tencent/qqconnect/dataprovider/CallbackManager;->BackToTencentApp(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0
.end method
