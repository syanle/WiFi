.class public interface abstract Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponseOrBuilder;
.super Ljava/lang/Object;
.source "RGCProtoBuf.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/RGCProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RGCResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getRgcItem(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
.end method

.method public abstract getRgcItemCount()I
.end method

.method public abstract getRgcItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRgcItemOrBuilder(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;
.end method

.method public abstract getRgcItemOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method
