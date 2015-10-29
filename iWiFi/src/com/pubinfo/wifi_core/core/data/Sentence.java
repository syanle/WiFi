// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.data;


public class Sentence
{

    private int index;
    private String name;

    public Sentence(int i, String s)
    {
        name = s;
        index = i;
    }

    public int getIndex()
    {
        return index;
    }

    public String getName()
    {
        return name;
    }

    public void setIndex(int i)
    {
        index = i;
    }

    public void setName(String s)
    {
        name = s;
    }
}
