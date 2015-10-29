// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


public interface ParseLog
{

    public abstract void error(String s, String s1, int i);

    public abstract void note(String s, String s1, int i);

    public abstract void warning(String s, String s1, int i);
}
