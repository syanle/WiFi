.class public final enum Lcn/sharesdk/yixin/utils/YXMessage$MessageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/yixin/utils/YXMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/sharesdk/yixin/utils/YXMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum CARD:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum FILE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum IMAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum MAP:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum MUSIC:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum TEXT:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum UNKNOWN:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum VIDEO:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

.field public static final enum WEB_PAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->UNKNOWN:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->TEXT:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v5}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->IMAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v6}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->MUSIC:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v7}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->VIDEO:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->FILE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "MAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->MAP:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "CARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->CARD:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const-string v1, "WEB_PAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->WEB_PAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    sget-object v1, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->UNKNOWN:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->TEXT:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->IMAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->MUSIC:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->VIDEO:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->FILE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->MAP:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->CARD:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->WEB_PAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->$VALUES:[Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/yixin/utils/YXMessage$MessageType;
    .locals 1

    const-class v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    return-object v0
.end method

.method public static values()[Lcn/sharesdk/yixin/utils/YXMessage$MessageType;
    .locals 1

    sget-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->$VALUES:[Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    invoke-virtual {v0}, [Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    return-object v0
.end method
