.class public Lcom/laiwang/sdk/openapi/LwSecurity;
.super Ljava/lang/Object;
.source "LwSecurity.java"


# static fields
.field private static final LW_SIGNATURE_DEBUG:Ljava/lang/String; = "308201e53082014ea00302010202044e51feda300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303832323037303134365a170d3431303831343037303134365a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100d863f4f3100ca2bc9d15503284e09b64cad4008144bc48f0bc7e5d0e097f07041e5a2e29520dfbd4e0746401438cb20819de56dc9cf26cdc6c5d1a9da4b32ffa80bc960e7d01c7b067167c5df676d64d916d09d37f9ccad935275dd2e480c360cd95a045263a298b2718a03217ea822c5cef78035cd2b114baac552a104e48670203010001300d06092a864886f70d0101050500038181006d929e4f794c5849e13ae90c8803307778257a6d27be8a32bccee13b370888afefcffeeae52eb2eea985112f46301d3e386bb8dfe8560f1bce2c64e5744be5abbc6b73320c2f2a774a189574d2fafe7ec942455bcdcac51e4805e916321f06356e03b44e8e449c87fd33152ff9d294f3ae85da83fd880a5c4671da7c75d0da0d"

.field private static final LW_SIGNATURE_RELEASE:Ljava/lang/String; = "308201e730820150a00302010202044eca1289300d06092a864886f70d010105050030383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f301e170d3131313132313038353734355a170d3434313131323038353734355a30383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f30819f300d06092a864886f70d010101050003818d0030818902818100cb09f672e5ab59a06281794326367a90d306c123e4328536a215d9f0c7c021cf1b1b2a3a2a232ad0b8492e77181cef510bd3c008e0baea3094df301a2f11d90ae89cf6be8a811c66093622f5cf00952fdf53e5bb1d653b1664c839a3d47c3512f882d7c728e9f5f94f281ac5cdb9bd3fe3ffe33021f553c010e3313acf7008d70203010001300d06092a864886f70d010105050003818100ba4fde6c721b3cdf4aa27d0990cb3c764c78d2af888648f0b9593c5c82795b5df057cca2524ea6d38c2105894cc02af04ed2712950d4e3c30bb5f716aba72c012f6576669df95fa9fd0fd8e2559322d48f6c2c3796e1905aaa46f09acbc7755628061246f365301e22e85ca50e27682829d0ff89ba4700c2452d9a373bdab7eb"

.field public static sIsSecuritySahreSDK:Z

.field private static sLwSecurity:Lcom/laiwang/sdk/openapi/LwSecurity;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/sdk/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/laiwang/sdk/openapi/LwSecurity;->sLwSecurity:Lcom/laiwang/sdk/openapi/LwSecurity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LwSecurity;->mContext:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/LwSecurity;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/laiwang/sdk/openapi/LwSecurity;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/laiwang/sdk/openapi/LwSecurity;->sLwSecurity:Lcom/laiwang/sdk/openapi/LwSecurity;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/laiwang/sdk/openapi/LwSecurity;

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/sdk/openapi/LwSecurity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/laiwang/sdk/openapi/LwSecurity;->sLwSecurity:Lcom/laiwang/sdk/openapi/LwSecurity;

    .line 52
    :cond_0
    sget-object v0, Lcom/laiwang/sdk/openapi/LwSecurity;->sLwSecurity:Lcom/laiwang/sdk/openapi/LwSecurity;

    return-object v0
.end method

.method private getPackageNameByPID(I)[Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v4, p0, Lcom/laiwang/sdk/openapi/LwSecurity;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 58
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, "runningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 60
    :cond_0
    const-string v4, "LWAPI"

    const-string v5, "runningProcess err"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    :goto_0
    return-object v3

    .line 63
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 64
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_3

    .line 65
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 160
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 168
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 163
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 164
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static isLWAPPImpl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/laiwang/sdk/openapi/LwSecurity;->getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "strSignture":Ljava/lang/String;
    const-string v1, "308201e53082014ea00302010202044e51feda300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303832323037303134365a170d3431303831343037303134365a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100d863f4f3100ca2bc9d15503284e09b64cad4008144bc48f0bc7e5d0e097f07041e5a2e29520dfbd4e0746401438cb20819de56dc9cf26cdc6c5d1a9da4b32ffa80bc960e7d01c7b067167c5df676d64d916d09d37f9ccad935275dd2e480c360cd95a045263a298b2718a03217ea822c5cef78035cd2b114baac552a104e48670203010001300d06092a864886f70d0101050500038181006d929e4f794c5849e13ae90c8803307778257a6d27be8a32bccee13b370888afefcffeeae52eb2eea985112f46301d3e386bb8dfe8560f1bce2c64e5744be5abbc6b73320c2f2a774a189574d2fafe7ec942455bcdcac51e4805e916321f06356e03b44e8e449c87fd33152ff9d294f3ae85da83fd880a5c4671da7c75d0da0d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "308201e730820150a00302010202044eca1289300d06092a864886f70d010105050030383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f301e170d3131313132313038353734355a170d3434313131323038353734355a30383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f30819f300d06092a864886f70d010101050003818d0030818902818100cb09f672e5ab59a06281794326367a90d306c123e4328536a215d9f0c7c021cf1b1b2a3a2a232ad0b8492e77181cef510bd3c008e0baea3094df301a2f11d90ae89cf6be8a811c66093622f5cf00952fdf53e5bb1d653b1664c839a3d47c3512f882d7c728e9f5f94f281ac5cdb9bd3fe3ffe33021f553c010e3313acf7008d70203010001300d06092a864886f70d010105050003818100ba4fde6c721b3cdf4aa27d0990cb3c764c78d2af888648f0b9593c5c82795b5df057cca2524ea6d38c2105894cc02af04ed2712950d4e3c30bb5f716aba72c012f6576669df95fa9fd0fd8e2559322d48f6c2c3796e1905aaa46f09acbc7755628061246f365301e22e85ca50e27682829d0ff89ba4700c2452d9a373bdab7eb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static load()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    :try_start_0
    const-string v2, "LwUtils"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v1, 0x1

    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 29
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 30
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 31
    sput-boolean v1, Lcom/laiwang/sdk/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    goto :goto_0
.end method


# virtual methods
.method public native checkCertificate(Ljava/lang/String;)Z
.end method

.method public checkCertificateByPID(I)Z
    .locals 7
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    sget-boolean v4, Lcom/laiwang/sdk/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    if-nez v4, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/laiwang/sdk/openapi/LwSecurity;->getPackageNameByPID(I)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "packageNames":[Ljava/lang/String;
    if-nez v2, :cond_2

    move v0, v3

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    .line 107
    .local v0, "isOK":Z
    array-length v5, v2

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 108
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v3

    .line 109
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0, v1}, Lcom/laiwang/sdk/openapi/LwSecurity;->checkCertificate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public checkCertificateByUID(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 127
    sget-boolean v4, Lcom/laiwang/sdk/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    if-nez v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Lcom/laiwang/sdk/openapi/LwSecurity;->getPackageNameByUID(I)[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "isOK":Z
    array-length v5, v2

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 139
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v3

    .line 140
    goto :goto_0

    .line 142
    :cond_2
    const-string v6, "LWAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "packageName:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, v1}, Lcom/laiwang/sdk/openapi/LwSecurity;->checkCertificate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getPackageNameByUID(I)[Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v4, p0, Lcom/laiwang/sdk/openapi/LwSecurity;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 74
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, "runningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 76
    :cond_0
    const-string v4, "LWAPI"

    const-string v5, "runningProcess err"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    :goto_0
    return-object v3

    .line 79
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 80
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_3

    .line 81
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    goto :goto_0
.end method
