.class public Lcom/ta/common/MobileFormat;
.super Ljava/lang/Object;
.source "MobileFormat.java"


# static fields
.field private static regMobile3GStr:Ljava/lang/String;

.field private static regMobileStr:Ljava/lang/String;

.field private static regPhoneString:Ljava/lang/String;

.field private static regTelecomStr:Ljava/lang/String;

.field private static regTelocom3GStr:Ljava/lang/String;

.field private static regUnicom3GStr:Ljava/lang/String;

.field private static regUnicomStr:Ljava/lang/String;


# instance fields
.field private facilitatorType:I

.field private is3G:Z

.field private isLawful:Z

.field private mobile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "^1(([3][456789])|([5][01789])|([8][78]))[0-9]{8}$"

    sput-object v0, Lcom/ta/common/MobileFormat;->regMobileStr:Ljava/lang/String;

    .line 34
    const-string v0, "^((157)|(18[78]))[0-9]{8}$"

    sput-object v0, Lcom/ta/common/MobileFormat;->regMobile3GStr:Ljava/lang/String;

    .line 35
    const-string v0, "^1(([3][012])|([5][6])|([8][56]))[0-9]{8}$"

    sput-object v0, Lcom/ta/common/MobileFormat;->regUnicomStr:Ljava/lang/String;

    .line 36
    const-string v0, "^((156)|(18[56]))[0-9]{8}$"

    sput-object v0, Lcom/ta/common/MobileFormat;->regUnicom3GStr:Ljava/lang/String;

    .line 37
    const-string v0, "^1(([3][3])|([5][3])|([8][09]))[0-9]{8}$"

    sput-object v0, Lcom/ta/common/MobileFormat;->regTelecomStr:Ljava/lang/String;

    .line 38
    const-string v0, "^(18[09])[0-9]{8}$"

    sput-object v0, Lcom/ta/common/MobileFormat;->regTelocom3GStr:Ljava/lang/String;

    .line 39
    const-string v0, "^(?:13\\d|15\\d)\\d{5}(\\d{3}|\\*{3})$"

    sput-object v0, Lcom/ta/common/MobileFormat;->regPhoneString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/common/MobileFormat;->mobile:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/ta/common/MobileFormat;->facilitatorType:I

    .line 43
    iput-boolean v1, p0, Lcom/ta/common/MobileFormat;->isLawful:Z

    .line 44
    iput-boolean v1, p0, Lcom/ta/common/MobileFormat;->is3G:Z

    .line 48
    invoke-virtual {p0, p1}, Lcom/ta/common/MobileFormat;->setMobile(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private setFacilitatorType(I)V
    .locals 0
    .param p1, "facilitatorType"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/ta/common/MobileFormat;->facilitatorType:I

    .line 130
    return-void
.end method

.method private setIs3G(Z)V
    .locals 0
    .param p1, "is3G"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/ta/common/MobileFormat;->is3G:Z

    .line 140
    return-void
.end method

.method private setLawful(Z)V
    .locals 0
    .param p1, "isLawful"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/ta/common/MobileFormat;->isLawful:Z

    .line 135
    return-void
.end method


# virtual methods
.method public getFacilitatorType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/ta/common/MobileFormat;->facilitatorType:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ta/common/MobileFormat;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public isIs3G()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/ta/common/MobileFormat;->is3G:Z

    return v0
.end method

.method public isLawful()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/ta/common/MobileFormat;->isLawful:Z

    return v0
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 3
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sget-object v0, Lcom/ta/common/MobileFormat;->regMobileStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iput-object p1, p0, Lcom/ta/common/MobileFormat;->mobile:Ljava/lang/String;

    .line 62
    invoke-direct {p0, v2}, Lcom/ta/common/MobileFormat;->setFacilitatorType(I)V

    .line 63
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setLawful(Z)V

    .line 64
    sget-object v0, Lcom/ta/common/MobileFormat;->regMobile3GStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setIs3G(Z)V

    .line 95
    :cond_2
    :goto_1
    sget-object v0, Lcom/ta/common/MobileFormat;->regPhoneString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/ta/common/MobileFormat;->mobile:Ljava/lang/String;

    .line 98
    invoke-direct {p0, v2}, Lcom/ta/common/MobileFormat;->setFacilitatorType(I)V

    .line 99
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setLawful(Z)V

    .line 100
    sget-object v0, Lcom/ta/common/MobileFormat;->regMobile3GStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setIs3G(Z)V

    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Lcom/ta/common/MobileFormat;->regUnicomStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iput-object p1, p0, Lcom/ta/common/MobileFormat;->mobile:Ljava/lang/String;

    .line 74
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setFacilitatorType(I)V

    .line 75
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setLawful(Z)V

    .line 76
    sget-object v0, Lcom/ta/common/MobileFormat;->regUnicom3GStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setIs3G(Z)V

    goto :goto_1

    .line 83
    :cond_4
    sget-object v0, Lcom/ta/common/MobileFormat;->regTelecomStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iput-object p1, p0, Lcom/ta/common/MobileFormat;->mobile:Ljava/lang/String;

    .line 86
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ta/common/MobileFormat;->setFacilitatorType(I)V

    .line 87
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setLawful(Z)V

    .line 88
    sget-object v0, Lcom/ta/common/MobileFormat;->regTelocom3GStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-direct {p0, v1}, Lcom/ta/common/MobileFormat;->setIs3G(Z)V

    goto :goto_1
.end method
