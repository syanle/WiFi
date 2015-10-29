.class public final Lcom/mapabc/mapapi/core/CommonProtoBuf;
.super Ljava/lang/Object;
.source "CommonProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;,
        Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;,
        Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;,
        Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;,
        Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;,
        Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_Common_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Common_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_POI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_POI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Spellcorrect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Spellcorrect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3493
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\u000ccommon.proto\"C\n\u0006Common\u0012\u000e\n\u0006config\u0018\u0001 \u0002(\t\u0012\u000b\n\u0003a_k\u0018\u0002 \u0002(\t\u0012\u000f\n\u0007resType\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003enc\u0018\u0004 \u0001(\t\"\u00e1\u0002\n\u0003POI\u0012\r\n\u0005pguid\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004name\u0018\u0002 \u0002(\t\u0012\u000c\n\u0004type\u0018\u0003 \u0002(\t\u0012\t\n\u0001x\u0018\u0004 \u0002(\t\u0012\t\n\u0001y\u0018\u0005 \u0002(\t\u0012\u000f\n\u0007srctype\u0018\u0006 \u0002(\t\u0012\u000f\n\u0007address\u0018\u0007 \u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0008 \u0001(\t\u0012\r\n\u0005match\u0018\t \u0001(\t\u0012\u000c\n\u0004code\u0018\n \u0001(\t\u0012\u000f\n\u0007newtype\u0018\u000b \u0001(\t\u0012\u0010\n\u0008citycode\u0018\u000c \u0001(\t\u0012\u0010\n\u0008typecode\u0018\r \u0001(\t\u0012\u0010\n\u0008gridcode\u0018\u000e \u0001(\t\u0012\u000f\n\u0007buscode\u0018\u000f \u0001(\t\u0012\u000b\n\u0003url\u0018\u0010 \u0001(\t\u0012\u000b\n\u0003xml\u0018\u0011 \u0001(\t\u0012\u000f\n\u0007imageid\u0018\u0012 \u0001(\t\u0012\u000b\n\u0003tel\u0018\u0013 \u0001(\t\u0012\u000e\n\u0006linkid\u0018\u0014 \u0001(\t\u0012\u0010"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\n\u0008distance\u0018\u0015 \u0001(\t\u0012\u0015\n\rdrivedistance\u0018\u0016 \u0001(\t\"\u001c\n\u000cSpellcorrect\u0012\u000c\n\u0004data\u0018\u0001 \u0003(\tB(\n\u0016com.mapabc.mapapi.coreB\u000eCommonProtoBuf"

    aput-object v2, v0, v1

    .line 3508
    new-instance v1, Lcom/mapabc/mapapi/core/b;

    invoke-direct {v1}, Lcom/mapabc/mapapi/core/b;-><init>()V

    .line 3540
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3544
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
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 3488
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
