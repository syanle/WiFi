// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dv

public abstract class du
{

    public du()
    {
    }

    public abstract int a(byte abyte0[], int j, int k)
        throws dv;

    public void a(int j)
    {
    }

    public abstract boolean a();

    public abstract void b()
        throws dv;

    public void b(byte abyte0[])
        throws dv
    {
        b(abyte0, 0, abyte0.length);
    }

    public abstract void b(byte abyte0[], int j, int k)
        throws dv;

    public abstract void c();

    public int d(byte abyte0[], int j, int k)
        throws dv
    {
        int l;
        int i1;
        for (l = 0; l < k; l += i1)
        {
            i1 = a(abyte0, j + l, k - l);
            if (i1 <= 0)
            {
                throw new dv((new StringBuilder()).append("Cannot read. Remote side has closed. Tried to read ").append(k).append(" bytes, but only got ").append(l).append(" bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)").toString());
            }
        }

        return l;
    }

    public void d()
        throws dv
    {
    }

    public byte[] f()
    {
        return null;
    }

    public int g()
    {
        return 0;
    }

    public int h()
    {
        return -1;
    }

    public boolean i()
    {
        return a();
    }
}
