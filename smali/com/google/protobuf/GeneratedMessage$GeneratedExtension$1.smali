.class Lcom/google/protobuf/GeneratedMessage$GeneratedExtension$1;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field final synthetic b:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;


# direct methods
.method constructor <init>(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension$1;->b:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension$1;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension$1;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object v0
.end method
