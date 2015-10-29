// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.baidu.location:
//            s, aw, az, Jni, 
//            ar, c, ad

class o extends s
{
    class a extends s
    {

        final o c6;
        int c7;
        boolean c8;
        String c9;

        void T()
        {
            cW = c9;
            cR = (new StringBuilder()).append(c._mthdo()).append("?&qt=state&trtm=").append(System.currentTimeMillis()).toString();
            c0 = 2;
        }

        public boolean aa()
        {
            if (c8)
            {
                return true;
            }
            c9 = com.baidu.location.ad.cM().cG();
            if (c9 == null)
            {
                return false;
            } else
            {
                c8 = true;
                R();
                return true;
            }
        }

        void _mthdo(boolean flag)
        {
            if (flag)
            {
                try
                {
                    (new File(c9)).delete();
                    c7 = 0;
                }
                catch (Exception exception) { }
            } else
            {
                c7 = c7 + 2;
            }
            c9 = null;
            c8 = false;
            o._mthdo(c6).sendEmptyMessageDelayed(1, 1500L);
        }

        a()
        {
            c6 = o.this;
            super();
            c9 = null;
            c7 = 0;
            c8 = false;
        }
    }


    public static final int db = 1;
    static o dd = null;
    private int da;
    private a dc;
    boolean de;
    int df;
    long dg;
    long dh;
    ArrayList di;
    private Handler dj;

    public o()
    {
        di = null;
        de = false;
        dg = 0L;
        dh = 0L;
        df = 0;
        dj = null;
        dc = null;
        da = 0;
        cT = new ArrayList();
        dc = new a();
        c0 = 2;
        dj = new _cls1();
    }

    public static o ac()
    {
        if (dd == null)
        {
            dd = new o();
        }
        return dd;
    }

    private void ad()
    {
        if (cY < 6 && da < 10 && aw._mthdo()._mthint())
        {
            da = da + 1;
            if (!ab())
            {
                da = 0;
            }
            return;
        } else
        {
            da = 0;
            return;
        }
    }

    static Handler _mthdo(o o1)
    {
        return o1.dj;
    }

    static void _mthif(o o1)
    {
        o1.ad();
    }

    void T()
    {
        cT.add(new BasicNameValuePair("qt", "cltr"));
        String s1;
        int i;
        try
        {
            cT.add(new BasicNameValuePair("info", Jni.i(az.cn().co())));
        }
        catch (Exception exception) { }
        for (i = 0; i < di.size(); i++)
        {
            cT.add(new BasicNameValuePair((new StringBuilder()).append("cltr[").append(i).append("]").toString(), (String)di.get(i)));
        }

        s1 = String.format(Locale.CHINA, "%d", new Object[] {
            Long.valueOf(System.currentTimeMillis())
        });
        cT.add(new BasicNameValuePair("trtm", s1));
    }

    public boolean ab()
    {
        boolean flag = true;
        if (!ar.bU())
        {
            flag = false;
        } else
        {
            if (dc.c7 > 2)
            {
                a a1 = dc;
                a1.c7 = a1.c7 - 1;
                return _mthfor(true);
            }
            if (!dc.aa())
            {
                return _mthfor(true);
            }
        }
        return flag;
    }

    public void _mthdo(int i)
    {
        dj.sendEmptyMessageDelayed(i, 500L);
    }

    void _mthdo(boolean flag)
    {
        if (flag && cS != null)
        {
            if (di != null)
            {
                di.clear();
            }
        } else
        {
            dg = 0L;
        }
        if (cT != null)
        {
            cT.clear();
        }
        de = false;
        dj.sendEmptyMessageDelayed(1, 1500L);
    }

    public boolean _mthfor(boolean flag)
    {
label0:
        {
label1:
            {
                if (de)
                {
                    return true;
                }
                if (System.currentTimeMillis() - dg < 0x6ddd00L)
                {
                    return false;
                }
                if (System.currentTimeMillis() - dh > 0x36ee80L)
                {
                    df = 0;
                }
                if (df > 5 && flag)
                {
                    return false;
                }
                if (!ar.bU())
                {
                    return false;
                }
                if (!aw._mthdo()._mthint() && flag)
                {
                    return false;
                }
                if (di != null && di.size() >= 1)
                {
                    break label1;
                }
                String s1 = c._mthbyte();
                if (s1 == null)
                {
                    break label0;
                }
                int i = 0;
                do
                {
                    if (i >= 2)
                    {
                        break label1;
                    }
                    String s2 = Jni.k(s1);
                    if (s2 == null)
                    {
                        break;
                    }
                    if (di == null)
                    {
                        di = new ArrayList();
                    }
                    di.add(s2);
                    i++;
                } while (true);
                dg = System.currentTimeMillis();
            }
            if (di != null && di.size() > 0)
            {
                df = df + 1;
                dh = System.currentTimeMillis();
                de = true;
                N();
                return true;
            } else
            {
                return false;
            }
        }
        return false;
    }


    private class _cls1 extends Handler
    {

        final o a;

        public void handleMessage(Message message)
        {
            if (!ab.gv)
            {
                return;
            }
            switch (message.what)
            {
            default:
                return;

            case 1: // '\001'
                o._mthif(a);
                break;
            }
        }

        _cls1()
        {
            a = o.this;
            super();
        }
    }

}
