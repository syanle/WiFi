// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


public final class de
{

    public final String a;
    public final byte b;
    public final int c;

    public de()
    {
        this("", (byte)0, 0);
    }

    public de(String s, byte byte0, int i)
    {
        a = s;
        b = byte0;
        c = i;
    }

    public boolean a(de de1)
    {
        return a.equals(de1.a) && b == de1.b && c == de1.c;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof de)
        {
            return a((de)obj);
        } else
        {
            return false;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("<TMessage name:'").append(a).append("' type: ").append(b).append(" seqid:").append(c).append(">").toString();
    }
}
