.class public Lcom/baidu/platform/comapi/c/c;
.super Ljava/lang/Object;


# static fields
.field static A:Ljava/lang/String;

.field static B:Ljava/lang/String;

.field public static C:Landroid/content/Context;

.field public static final D:I

.field public static E:F

.field public static F:Ljava/lang/String;

.field private static final G:Ljava/lang/String;

.field private static H:Z

.field private static I:I

.field private static J:I

.field static a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

.field static b:Lcom/baidu/platform/comjni/base/networkdetect/a;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Ljava/lang/String;

.field static h:I

.field static i:I

.field static j:I

.field static k:I

.field static l:I

.field static m:I

.field static n:Ljava/lang/String;

.field static o:Ljava/lang/String;

.field static p:Ljava/lang/String;

.field static q:Ljava/lang/String;

.field static r:Ljava/lang/String;

.field static s:Ljava/lang/String;

.field static t:Ljava/lang/String;

.field static u:Ljava/lang/String;

.field static v:Ljava/lang/String;

.field static w:Ljava/lang/String;

.field static x:Ljava/lang/String;

.field static y:Ljava/lang/String;

.field static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/baidu/platform/comapi/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->G:Ljava/lang/String;

    new-instance v0, Lcom/baidu/platform/comjni/map/commonmemcache/a;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    new-instance v0, Lcom/baidu/platform/comjni/base/networkdetect/a;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/base/networkdetect/a;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->b:Lcom/baidu/platform/comjni/base/networkdetect/a;

    const-string v0, "02"

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->c:Ljava/lang/String;

    const-string v0, "baidu"

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->t:Ljava/lang/String;

    const-string v0, "baidu"

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->w:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->x:Ljava/lang/String;

    const-string v0, "-1"

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->A:Ljava/lang/String;

    const-string v0, "-1"

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->B:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/platform/comapi/c/c;->D:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/baidu/platform/comapi/c/c;->E:F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/platform/comapi/c/c;->H:Z

    sput v1, Lcom/baidu/platform/comapi/c/c;->I:I

    sput v1, Lcom/baidu/platform/comapi/c/c;->J:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    const/16 v4, 0xa

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v2, "imei.dat"

    :try_start_0
    sget-boolean v0, Lcom/baidu/platform/comapi/c/c;->H:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const v1, 0x8000

    :try_start_1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v0, 0x7c

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/baidu/platform/comapi/c/c;->q:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->h()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/baidu/platform/comapi/c/c;->A:Ljava/lang/String;

    sput-object p0, Lcom/baidu/platform/comapi/c/c;->B:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->h()V

    return-void
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->f()V

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->d()V

    return-void
.end method

.method public static b(Landroid/content/Context;)[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cpu"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resid"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "glr"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "glv"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mb"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sv"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dpi_x"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpi_y"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "net"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "im"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/platform/comapi/c/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imrand"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/platform/comapi/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cuid"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/platform/comapi/c/c;->b(Landroid/content/Context;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "pcn"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screen_x"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "screen_y"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-object p0, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->y:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->z:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->e(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->f(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->g(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->h(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->i(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->l(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    :goto_0
    sput v3, Lcom/baidu/platform/comapi/c/c;->I:I

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput v0, Lcom/baidu/platform/comapi/c/c;->J:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->b:Lcom/baidu/platform/comjni/base/networkdetect/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->b:Lcom/baidu/platform/comjni/base/networkdetect/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/base/networkdetect/a;->a()I

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/baidu/platform/comapi/c/c;->y:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/16 v1, 0xe

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "CMRequire.dat"

    aput-object v1, v4, v0

    const-string v1, "VerDatset.dat"

    aput-object v1, v4, v2

    const-string v1, "cfg/a/ResPack.cfg"

    aput-object v1, v4, v6

    const-string v1, "cfg/h/DVHotcity.cfg"

    aput-object v1, v4, v8

    const/4 v1, 0x4

    const-string v5, "cfg/l/DVHotcity.cfg"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "cfg/h/DVHotMap.cfg"

    aput-object v5, v4, v1

    const-string v1, "cfg/l/DVHotMap.cfg"

    aput-object v1, v4, v7

    const/4 v1, 0x7

    const-string v5, "cfg/l/DVDirectory.cfg"

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string v5, "cfg/l/DVVersion.cfg"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    const-string v5, "cfg/h/DVDirectory.cfg"

    aput-object v5, v4, v1

    const/16 v1, 0xa

    const-string v5, "cfg/h/DVVersion.cfg"

    aput-object v5, v4, v1

    const/16 v1, 0xb

    const-string v5, "cfg/a/mapstyle.sty"

    aput-object v5, v4, v1

    const/16 v1, 0xc

    const-string v5, "cfg/a/satellitestyle.sty"

    aput-object v5, v4, v1

    const/16 v1, 0xd

    const-string v5, "cfg/a/trafficstyle.sty"

    aput-object v5, v4, v1

    const/16 v1, 0xe

    new-array v5, v1, [Ljava/lang/String;

    const-string v1, "CMRequire.dat"

    aput-object v1, v5, v0

    const-string v1, "VerDatset.dat"

    aput-object v1, v5, v2

    const-string v1, "cfg/a/ResPack.rs"

    aput-object v1, v5, v6

    const-string v1, "cfg/h/DVHotcity.cfg"

    aput-object v1, v5, v8

    const/4 v1, 0x4

    const-string v6, "cfg/l/DVHotcity.cfg"

    aput-object v6, v5, v1

    const/4 v1, 0x5

    const-string v6, "cfg/h/DVHotMap.cfg"

    aput-object v6, v5, v1

    const-string v1, "cfg/l/DVHotMap.cfg"

    aput-object v1, v5, v7

    const/4 v1, 0x7

    const-string v6, "cfg/l/DVDirectory.cfg"

    aput-object v6, v5, v1

    const/16 v1, 0x8

    const-string v6, "cfg/l/DVVersion.cfg"

    aput-object v6, v5, v1

    const/16 v1, 0x9

    const-string v6, "cfg/h/DVDirectory.cfg"

    aput-object v6, v5, v1

    const/16 v1, 0xa

    const-string v6, "cfg/h/DVVersion.cfg"

    aput-object v6, v5, v1

    const/16 v1, 0xb

    const-string v6, "cfg/a/mapstyle.sty"

    aput-object v6, v5, v1

    const/16 v1, 0xc

    const-string v6, "cfg/a/satellitestyle.sty"

    aput-object v6, v5, v1

    const/16 v1, 0xd

    const-string v6, "cfg/a/trafficstyle.sty"

    aput-object v6, v5, v1

    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/platform/comapi/c/c;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ver.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {v7, v8}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    invoke-static {v8, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v0

    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/platform/comapi/c/c;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cfg/a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/platform/comapi/c/c;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cfg/h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/platform/comapi/c/c;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cfg/l"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_0
    if-eqz v2, :cond_7

    :goto_1
    array-length v1, v5

    if-ge v0, v1, :cond_7

    :try_start_2
    aget-object v1, v4, v0

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/platform/comapi/c/c;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x2t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;->a()I

    :cond_0
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/platform/comapi/c/c;->g:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/baidu/platform/comapi/c/c;->h:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "1.0.0"

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->g:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/baidu/platform/comapi/c/c;->h:I

    goto :goto_0
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;->b()I

    :cond_0
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0xa0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/baidu/platform/comapi/c/c;->i:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/baidu/platform/comapi/c/c;->j:I

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/baidu/platform/comapi/c/c;->E:F

    iget v0, v2, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v0, v0

    sput v0, Lcom/baidu/platform/comapi/c/c;->k:I

    iget v0, v2, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v0, v0

    sput v0, Lcom/baidu/platform/comapi/c/c;->l:I

    sget v0, Lcom/baidu/platform/comapi/c/c;->D:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/baidu/platform/comapi/c/c;->m:I

    :goto_1
    sget v0, Lcom/baidu/platform/comapi/c/c;->m:I

    if-nez v0, :cond_1

    sput v3, Lcom/baidu/platform/comapi/c/c;->m:I

    :cond_1
    return-void

    :cond_2
    sput v3, Lcom/baidu/platform/comapi/c/c;->m:I

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/platform/comapi/c/c;->n:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static h()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cpu"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resid"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "glr"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "glv"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mb"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sv"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dpi_x"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpi_y"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "net"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "im"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/platform/comapi/c/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imrand"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/platform/comapi/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cuid"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pcn"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screen_x"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "screen_y"

    invoke-static {}, Lcom/baidu/platform/comapi/c/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token"

    sget-object v2, Lcom/baidu/platform/comapi/c/c;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/c/c;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/platform/comapi/c/c;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private static h(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->r:Ljava/lang/String;

    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->s:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static j()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/c/c;->i:I

    return v0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v2, "imei.dat"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/platform/comapi/c/c;->H:Z

    invoke-static {p0}, Lcom/baidu/platform/comapi/c/c;->k(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const v1, 0x8000

    :try_start_1
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/baidu/platform/comapi/c/c;->H:Z

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v0, 0x7c

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "000000000000000"

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static l()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/c/c;->j:I

    return v0
.end method

.method private static l(Landroid/content/Context;)V
    .locals 1

    const-string v0, "0"

    sput-object v0, Lcom/baidu/platform/comapi/c/c;->q:Ljava/lang/String;

    return-void
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static n()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/c/c;->m:I

    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/c/c;->C:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/CommonParam;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
