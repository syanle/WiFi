// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.log;


public interface ILogger
{

    public abstract void close();

    public abstract void d(String s, String s1);

    public abstract void e(String s, String s1);

    public abstract void i(String s, String s1);

    public abstract void open();

    public abstract void println(int j, String s, String s1);

    public abstract void v(String s, String s1);

    public abstract void w(String s, String s1);
}
