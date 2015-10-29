// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.b;

// Referenced classes of package u.aly:
//            cc, x, bq, bp, 
//            cq

public class c
{

    private final byte a[] = {
        0, 0, 0, 0, 0, 0, 0, 0
    };
    private final int b = 1;
    private final int c = 0;
    private String d;
    private String e;
    private byte f[];
    private byte g[];
    private byte h[];
    private int i;
    private int j;
    private int k;
    private byte l[];
    private byte m[];
    private boolean n;

    private c(byte abyte0[], String s, byte abyte1[])
        throws Exception
    {
        d = "1.0";
        e = null;
        f = null;
        g = null;
        h = null;
        i = 0;
        j = 0;
        k = 0;
        l = null;
        m = null;
        n = false;
        if (abyte0 == null || abyte0.length == 0)
        {
            throw new Exception("entity is null or empty");
        } else
        {
            e = s;
            k = abyte0.length;
            l = cc.a(abyte0);
            j = (int)(System.currentTimeMillis() / 1000L);
            m = abyte1;
            return;
        }
    }

    public static String a(Context context)
    {
        context = x.a(context);
        if (context == null)
        {
            return null;
        } else
        {
            return context.getString("signature", null);
        }
    }

    public static c a(Context context, String s, byte abyte0[])
    {
        try
        {
            String s1 = bq.p(context);
            String s2 = bq.f(context);
            context = x.a(context);
            String s3 = context.getString("signature", null);
            int i1 = context.getInt("serial", 1);
            s = new c(abyte0, s, (new StringBuilder()).append(s2).append(s1).toString().getBytes());
            s.a(s3);
            s.a(i1);
            s.b();
            context.edit().putInt("serial", i1 + 1).putString("signature", s.a()).commit();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return null;
        }
        return s;
    }

    private byte[] a(byte abyte0[], int i1)
    {
        boolean flag = false;
        byte abyte1[] = com.umeng.analytics.b.b(m);
        byte abyte2[] = com.umeng.analytics.b.b(l);
        int l1 = abyte1.length;
        byte abyte3[] = new byte[l1 * 2];
        for (int j1 = 0; j1 < l1; j1++)
        {
            abyte3[j1 * 2] = abyte2[j1];
            abyte3[j1 * 2 + 1] = abyte1[j1];
        }

        for (int k1 = 0; k1 < 2; k1++)
        {
            abyte3[k1] = abyte0[k1];
            abyte3[abyte3.length - k1 - 1] = abyte0[abyte0.length - k1 - 1];
        }

        byte byte0 = (byte)(i1 & 0xff);
        byte byte1 = (byte)(i1 >> 8 & 0xff);
        byte byte2 = (byte)(i1 >> 16 & 0xff);
        byte byte3 = (byte)(i1 >>> 24);
        for (i1 = ((flag) ? 1 : 0); i1 < abyte3.length; i1++)
        {
            abyte3[i1] = (byte)(abyte3[i1] ^ (new byte[] {
                byte0, byte1, byte2, byte3
            })[i1 % 4]);
        }

        return abyte3;
    }

    public static c b(Context context, String s, byte abyte0[])
    {
        try
        {
            String s1 = bq.p(context);
            String s2 = bq.f(context);
            context = x.a(context);
            String s3 = context.getString("signature", null);
            int i1 = context.getInt("serial", 1);
            s = new c(abyte0, s, (new StringBuilder()).append(s2).append(s1).toString().getBytes());
            s.a(true);
            s.a(s3);
            s.a(i1);
            s.b();
            context.edit().putInt("serial", i1 + 1).putString("signature", s.a()).commit();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return null;
        }
        return s;
    }

    private byte[] d()
    {
        return a(a, (int)(System.currentTimeMillis() / 1000L));
    }

    private byte[] e()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(com.umeng.analytics.b.a(f));
        stringbuilder.append(i);
        stringbuilder.append(j);
        stringbuilder.append(k);
        stringbuilder.append(com.umeng.analytics.b.a(g));
        return com.umeng.analytics.b.b(stringbuilder.toString().getBytes());
    }

    public String a()
    {
        return com.umeng.analytics.b.a(f);
    }

    public void a(int i1)
    {
        i = i1;
    }

    public void a(String s)
    {
        f = com.umeng.analytics.b.a(s);
    }

    public void a(boolean flag)
    {
        n = flag;
    }

    public void b()
    {
        if (f == null)
        {
            f = d();
        }
        if (n)
        {
            byte abyte0[] = new byte[16];
            try
            {
                System.arraycopy(f, 1, abyte0, 0, 16);
                l = com.umeng.analytics.b.a(l, abyte0);
            }
            catch (Exception exception) { }
        }
        g = a(f, j);
        h = e();
    }

    public byte[] c()
    {
        bp bp1 = new bp();
        bp1.a(d);
        bp1.b(e);
        bp1.c(com.umeng.analytics.b.a(f));
        bp1.a(i);
        bp1.c(j);
        bp1.d(k);
        bp1.a(l);
        byte abyte0[];
        int i1;
        if (n)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        bp1.e(i1);
        bp1.d(com.umeng.analytics.b.a(g));
        bp1.e(com.umeng.analytics.b.a(h));
        try
        {
            abyte0 = (new cq()).a(bp1);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return abyte0;
    }

    public String toString()
    {
        int i1 = 1;
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(String.format("version : %s\n", new Object[] {
            d
        }));
        stringbuilder.append(String.format("address : %s\n", new Object[] {
            e
        }));
        stringbuilder.append(String.format("signature : %s\n", new Object[] {
            com.umeng.analytics.b.a(f)
        }));
        stringbuilder.append(String.format("serial : %s\n", new Object[] {
            Integer.valueOf(i)
        }));
        stringbuilder.append(String.format("timestamp : %d\n", new Object[] {
            Integer.valueOf(j)
        }));
        stringbuilder.append(String.format("length : %d\n", new Object[] {
            Integer.valueOf(k)
        }));
        stringbuilder.append(String.format("guid : %s\n", new Object[] {
            com.umeng.analytics.b.a(g)
        }));
        stringbuilder.append(String.format("checksum : %s ", new Object[] {
            com.umeng.analytics.b.a(h)
        }));
        if (!n)
        {
            i1 = 0;
        }
        stringbuilder.append(String.format("codex : %d", new Object[] {
            Integer.valueOf(i1)
        }));
        return stringbuilder.toString();
    }
}
