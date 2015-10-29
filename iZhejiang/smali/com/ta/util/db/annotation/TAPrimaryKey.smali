.class public interface abstract annotation Lcom/ta/util/db/annotation/TAPrimaryKey;
.super Ljava/lang/Object;
.source "TAPrimaryKey.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/ta/util/db/annotation/TAPrimaryKey;
        autoIncrement = false
        defaultValue = ""
        name = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract autoIncrement()Z
.end method

.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method
