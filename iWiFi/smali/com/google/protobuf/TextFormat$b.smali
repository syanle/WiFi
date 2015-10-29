.class final Lcom/google/protobuf/TextFormat$b;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    .line 223
    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/protobuf/TextFormat$1;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$b;-><init>(Z)V

    return-void
.end method

.method private a(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/protobuf/TextFormat$c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 403
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 404
    const-string v2, ": "

    invoke-virtual {p4, v2}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 405
    # invokes: Lcom/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    invoke-static {p2, v0, p4}, Lcom/google/protobuf/TextFormat;->access$800(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    .line 406
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, " "

    :goto_1
    invoke-virtual {p4, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    goto :goto_1

    .line 408
    :cond_1
    return-void
.end method

.method private a(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 239
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/TextFormat$b;->b(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$b;->b(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    .line 244
    :cond_1
    return-void
.end method

.method private a(Lcom/google/protobuf/Message;Lcom/google/protobuf/TextFormat$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/google/protobuf/TextFormat$b;->a(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/TextFormat$b;->a(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$c;)V

    .line 232
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/TextFormat$b;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$b;->a(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/TextFormat$b;Lcom/google/protobuf/Message;Lcom/google/protobuf/TextFormat$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->a(Lcom/google/protobuf/Message;Lcom/google/protobuf/TextFormat$c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/TextFormat$b;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->a(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$c;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 370
    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/google/protobuf/TextFormat$b;->a(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V

    .line 372
    const/4 v4, 0x5

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/google/protobuf/TextFormat$b;->a(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V

    .line 374
    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/google/protobuf/TextFormat$b;->a(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V

    .line 376
    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/google/protobuf/TextFormat$b;->a(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V

    .line 378
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet;

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 380
    iget-boolean v2, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    if-eqz v2, :cond_1

    .line 381
    const-string v2, " { "

    invoke-virtual {p2, v2}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 386
    :goto_1
    invoke-direct {p0, v1, p2}, Lcom/google/protobuf/TextFormat$b;->a(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$c;)V

    .line 387
    iget-boolean v1, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    if-eqz v1, :cond_2

    .line 388
    const-string v1, "} "

    invoke-virtual {p2, v1}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_1
    const-string v2, " {\n"

    invoke-virtual {p2, v2}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->a()V

    goto :goto_1

    .line 390
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->b()V

    .line 391
    const-string v1, "}\n"

    invoke-virtual {p2, v1}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_3
    return-void
.end method

.method private b(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 262
    :goto_0
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 272
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    .line 273
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    if-eqz v0, :cond_3

    .line 274
    const-string v0, " { "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 283
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$b;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    .line 285
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_6

    .line 286
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    if-eqz v0, :cond_5

    .line 287
    const-string v0, "} "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 299
    :goto_3
    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_2

    .line 266
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 276
    :cond_3
    const-string v0, " {\n"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$c;->a()V

    goto :goto_2

    .line 280
    :cond_4
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 289
    :cond_5
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$c;->b()V

    .line 290
    const-string v0, "}\n"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 293
    :cond_6
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    if-eqz v0, :cond_7

    .line 294
    const-string v0, " "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 296
    :cond_7
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/google/protobuf/TextFormat$b;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$b;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    return-void
.end method

.method private c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/google/protobuf/TextFormat$1;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 309
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :pswitch_3
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 327
    :pswitch_4
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/google/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->access$600(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    # invokes: Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat;->access$700(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    :pswitch_7
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 342
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 343
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :pswitch_8
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 348
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    .line 349
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    :pswitch_9
    check-cast p2, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :pswitch_a
    check-cast p2, Lcom/google/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/TextFormat$b;->a(Lcom/google/protobuf/Message;Lcom/google/protobuf/TextFormat$c;)V

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
