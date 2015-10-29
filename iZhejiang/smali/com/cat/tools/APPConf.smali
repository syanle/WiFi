.class public Lcom/cat/tools/APPConf;
.super Ljava/lang/Object;
.source "APPConf.java"


# static fields
.field public static FirstFolder:Ljava/lang/String;

.field public static PHOTO_AFTERCUT_PATH:Ljava/lang/String;

.field public static PHOTO_BEFORECUT_PATH:Ljava/lang/String;

.field public static PHOTO_FILE_NAME:Ljava/lang/String;

.field public static final PHOTO_SAVE2_PATH:Ljava/lang/String;

.field public static final PHOTO_SAVE_PATH:Ljava/lang/String;

.field public static SecondPictureFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "AWifi"

    sput-object v0, Lcom/cat/tools/APPConf;->FirstFolder:Ljava/lang/String;

    .line 13
    const-string v0, "Picture"

    sput-object v0, Lcom/cat/tools/APPConf;->SecondPictureFolder:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/cat/tools/APPConf;->FirstFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/APPConf;->PHOTO_SAVE_PATH:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/APPConf;->PHOTO_SAVE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cat/tools/APPConf;->SecondPictureFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    .line 38
    const-string v0, "photo_user.jpg"

    sput-object v0, Lcom/cat/tools/APPConf;->PHOTO_FILE_NAME:Ljava/lang/String;

    .line 43
    const-string v0, "aftercut.jpg"

    sput-object v0, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    .line 47
    const-string v0, "beforecut.jpg"

    sput-object v0, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
