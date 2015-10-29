.class final Lcom/google/protobuf/GeneratedMessageLite$a;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
        "<",
        "Lcom/google/protobuf/GeneratedMessageLite$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lcom/google/protobuf/WireFormat$FieldType;

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 571
    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:I

    .line 572
    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/WireFormat$FieldType;

    .line 573
    iput-boolean p4, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->d:Z

    .line 574
    iput-boolean p5, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->e:Z

    .line 575
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZLcom/google/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    .prologue
    .line 561
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$a;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/protobuf/GeneratedMessageLite$a;)Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/protobuf/GeneratedMessageLite$a;)Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/GeneratedMessageLite$a;)I
    .locals 2

    .prologue
    .line 614
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:I

    iget v1, p1, Lcom/google/protobuf/GeneratedMessageLite$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 561
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$a;->a(Lcom/google/protobuf/GeneratedMessageLite$a;)I

    move-result v0

    return v0
.end method

.method public getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:I

    return v0
.end method

.method public internalMergeFrom(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 610
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isPacked()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->e:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->d:Z

    return v0
.end method
