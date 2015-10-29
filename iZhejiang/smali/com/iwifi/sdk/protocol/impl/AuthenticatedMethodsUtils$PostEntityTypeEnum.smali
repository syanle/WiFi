.class public final enum Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;
.super Ljava/lang/Enum;
.source "AuthenticatedMethodsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostEntityTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

.field public static final enum POST_ENTITY_TYPE_None:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

.field public static final enum POST_ENTITY_TYPE_StringEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

.field public static final enum POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    const-string v1, "POST_ENTITY_TYPE_None"

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_None:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    new-instance v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    const-string v1, "POST_ENTITY_TYPE_UrlEncodedFormEntity"

    invoke-direct {v0, v1, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    new-instance v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    const-string v1, "POST_ENTITY_TYPE_StringEntity"

    invoke-direct {v0, v1, v4}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_StringEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    sget-object v1, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_None:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_StringEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->ENUM$VALUES:[Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->ENUM$VALUES:[Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
