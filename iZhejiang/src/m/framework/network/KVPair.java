// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.network;


public class KVPair
{

    public final String name;
    public final Object value;

    public KVPair(String s, Object obj)
    {
        name = s;
        value = obj;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(name))).append(" = ").append(value).toString();
    }
}
