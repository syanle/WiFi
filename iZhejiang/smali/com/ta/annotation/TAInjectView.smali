.class public interface abstract annotation Lcom/ta/annotation/TAInjectView;
.super Ljava/lang/Object;
.source "TAInjectView.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/ta/annotation/TAInjectView;
        Touch = ""
        click = ""
        focuschange = ""
        id = -0x1
        key = ""
        longClick = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract Touch()Ljava/lang/String;
.end method

.method public abstract click()Ljava/lang/String;
.end method

.method public abstract focuschange()Ljava/lang/String;
.end method

.method public abstract id()I
.end method

.method public abstract key()Ljava/lang/String;
.end method

.method public abstract longClick()Ljava/lang/String;
.end method
