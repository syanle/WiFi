.class public final Lcom/mapabc/mapapi/core/RGCProtoBuf;
.super Ljava/lang/Object;
.source "RGCProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;,
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;,
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;,
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponseOrBuilder;,
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;,
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_RGCItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_RGCItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_RGCRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_RGCRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_RGCResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_RGCResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2548
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\n\trgc.proto\u001a\u000ccommon.proto\"\u00a3\u0001\n\nRGCRequest\u0012\u0017\n\u0006common\u0018\u0001 \u0002(\u000b2\u0007.Common\u0012\n\n\u0002x1\u0018\u0002 \u0001(\t\u0012\n\n\u0002y1\u0018\u0003 \u0001(\t\u0012\n\n\u0002x2\u0018\u0004 \u0001(\t\u0012\n\n\u0002y2\u0018\u0005 \u0001(\t\u0012\r\n\u0005coors\u0018\u0006 \u0001(\t\u0012\n\n\u0002cr\u0018\u0007 \u0001(\t\u0012\u000c\n\u0004flag\u0018\u0008 \u0001(\t\u0012\u000c\n\u0004type\u0018\t \u0001(\t\u0012\t\n\u0001z\u0018\n \u0001(\t\u0012\n\n\u0002ts\u0018\u000b \u0001(\t\"(\n\u000bRGCResponse\u0012\u0019\n\u0007rgcItem\u0018\u0001 \u0003(\u000b2\u0008.RGCItem\"1\n\u0007RGCItem\u0012\t\n\u0001x\u0018\u0001 \u0001(\t\u0012\t\n\u0001y\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008gridcode\u0018\u0003 \u0002(\tB%\n\u0016com.mapabc.mapapi.coreB\u000bRGCProtoBuf"

    aput-object v1, v0, v4

    .line 2559
    new-instance v1, Lcom/mapabc/mapapi/core/v;

    invoke-direct {v1}, Lcom/mapabc/mapapi/core/v;-><init>()V

    .line 2591
    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2596
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2543
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
