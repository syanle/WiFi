.class public interface abstract Lcom/ta/util/layoutloader/TAILayoutLoader;
.super Ljava/lang/Object;
.source "TAILayoutLoader.java"


# virtual methods
.method public abstract getLayoutID(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Lcom/ta/exception/TANoSuchNameLayoutException;
        }
    .end annotation
.end method
