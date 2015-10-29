.class public final enum Lcom/ta/mvc/controller/NavigationDirection;
.super Ljava/lang/Enum;
.source "NavigationDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ta/mvc/controller/NavigationDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Backward:Lcom/ta/mvc/controller/NavigationDirection;

.field private static final synthetic ENUM$VALUES:[Lcom/ta/mvc/controller/NavigationDirection;

.field public static final enum Forward:Lcom/ta/mvc/controller/NavigationDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/ta/mvc/controller/NavigationDirection;

    const-string v1, "Forward"

    invoke-direct {v0, v1, v2}, Lcom/ta/mvc/controller/NavigationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ta/mvc/controller/NavigationDirection;->Forward:Lcom/ta/mvc/controller/NavigationDirection;

    new-instance v0, Lcom/ta/mvc/controller/NavigationDirection;

    const-string v1, "Backward"

    invoke-direct {v0, v1, v3}, Lcom/ta/mvc/controller/NavigationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ta/mvc/controller/NavigationDirection;->Backward:Lcom/ta/mvc/controller/NavigationDirection;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ta/mvc/controller/NavigationDirection;

    sget-object v1, Lcom/ta/mvc/controller/NavigationDirection;->Forward:Lcom/ta/mvc/controller/NavigationDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ta/mvc/controller/NavigationDirection;->Backward:Lcom/ta/mvc/controller/NavigationDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ta/mvc/controller/NavigationDirection;->ENUM$VALUES:[Lcom/ta/mvc/controller/NavigationDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ta/mvc/controller/NavigationDirection;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ta/mvc/controller/NavigationDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ta/mvc/controller/NavigationDirection;

    return-object v0
.end method

.method public static values()[Lcom/ta/mvc/controller/NavigationDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ta/mvc/controller/NavigationDirection;->ENUM$VALUES:[Lcom/ta/mvc/controller/NavigationDirection;

    array-length v1, v0

    new-array v2, v1, [Lcom/ta/mvc/controller/NavigationDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
