// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


public class db
{

    public final String a;
    public final byte b;
    public final short c;

    public db()
    {
        this("", (byte)0, (short)0);
    }

    public db(String s, byte byte0, short word0)
    {
        a = s;
        b = byte0;
        c = word0;
    }

    public boolean a(db db1)
    {
        return b == db1.b && c == db1.c;
    }

    public String toString()
    {
        return (new StringBuilder()).append("<TField name:'").append(a).append("' type:").append(b).append(" field-id:").append(c).append(">").toString();
    }
}
