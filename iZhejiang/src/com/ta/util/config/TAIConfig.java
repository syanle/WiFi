// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.config;


public interface TAIConfig
{

    public abstract void clear();

    public abstract void close();

    public abstract boolean getBoolean(int i, Boolean boolean1);

    public abstract boolean getBoolean(String s, Boolean boolean1);

    public abstract byte[] getByte(int i, byte abyte0[]);

    public abstract byte[] getByte(String s, byte abyte0[]);

    public abstract Object getConfig(Class class1);

    public abstract double getDouble(int i, Double double1);

    public abstract double getDouble(String s, Double double1);

    public abstract float getFloat(int i, Float float1);

    public abstract float getFloat(String s, Float float1);

    public abstract int getInt(int i, int j);

    public abstract int getInt(String s, int i);

    public abstract long getLong(int i, Long long1);

    public abstract long getLong(String s, Long long1);

    public abstract short getShort(int i, Short short1);

    public abstract short getShort(String s, Short short1);

    public abstract String getString(int i, String s);

    public abstract String getString(String s, String s1);

    public abstract boolean isClosed();

    public abstract Boolean isLoadConfig();

    public abstract void loadConfig();

    public abstract void open();

    public abstract void remove(String s);

    public transient abstract void remove(String as[]);

    public abstract void setBoolean(int i, Boolean boolean1);

    public abstract void setBoolean(String s, Boolean boolean1);

    public abstract void setByte(int i, byte abyte0[]);

    public abstract void setByte(String s, byte abyte0[]);

    public abstract void setConfig(Object obj);

    public abstract void setDouble(int i, double d);

    public abstract void setDouble(String s, double d);

    public abstract void setFloat(int i, float f);

    public abstract void setFloat(String s, float f);

    public abstract void setInt(int i, int j);

    public abstract void setInt(String s, int i);

    public abstract void setLong(int i, long l);

    public abstract void setLong(String s, long l);

    public abstract void setShort(int i, short word0);

    public abstract void setShort(String s, short word0);

    public abstract void setString(int i, String s);

    public abstract void setString(String s, String s1);
}
