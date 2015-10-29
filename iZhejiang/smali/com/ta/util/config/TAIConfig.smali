.class public interface abstract Lcom/ta/util/config/TAIConfig;
.super Ljava/lang/Object;
.source "TAIConfig.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract close()V
.end method

.method public abstract getBoolean(ILjava/lang/Boolean;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
.end method

.method public abstract getByte(I[B)[B
.end method

.method public abstract getByte(Ljava/lang/String;[B)[B
.end method

.method public abstract getConfig(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getDouble(ILjava/lang/Double;)D
.end method

.method public abstract getDouble(Ljava/lang/String;Ljava/lang/Double;)D
.end method

.method public abstract getFloat(ILjava/lang/Float;)F
.end method

.method public abstract getFloat(Ljava/lang/String;Ljava/lang/Float;)F
.end method

.method public abstract getInt(II)I
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(ILjava/lang/Long;)J
.end method

.method public abstract getLong(Ljava/lang/String;Ljava/lang/Long;)J
.end method

.method public abstract getShort(ILjava/lang/Short;)S
.end method

.method public abstract getShort(Ljava/lang/String;Ljava/lang/Short;)S
.end method

.method public abstract getString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isLoadConfig()Ljava/lang/Boolean;
.end method

.method public abstract loadConfig()V
.end method

.method public abstract open()V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public varargs abstract remove([Ljava/lang/String;)V
.end method

.method public abstract setBoolean(ILjava/lang/Boolean;)V
.end method

.method public abstract setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract setByte(I[B)V
.end method

.method public abstract setByte(Ljava/lang/String;[B)V
.end method

.method public abstract setConfig(Ljava/lang/Object;)V
.end method

.method public abstract setDouble(ID)V
.end method

.method public abstract setDouble(Ljava/lang/String;D)V
.end method

.method public abstract setFloat(IF)V
.end method

.method public abstract setFloat(Ljava/lang/String;F)V
.end method

.method public abstract setInt(II)V
.end method

.method public abstract setInt(Ljava/lang/String;I)V
.end method

.method public abstract setLong(IJ)V
.end method

.method public abstract setLong(Ljava/lang/String;J)V
.end method

.method public abstract setShort(IS)V
.end method

.method public abstract setShort(Ljava/lang/String;S)V
.end method

.method public abstract setString(ILjava/lang/String;)V
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;)V
.end method
