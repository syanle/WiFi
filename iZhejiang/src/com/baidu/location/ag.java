// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.baidu.location:
//            ax, n, t, c, 
//            ar, x, k, q, 
//            s, Jni, ab, ak, 
//            f, v, j, g, 
//            BDLocation, af

abstract class ag
    implements ax, n
{
    class a extends s
    {

        final ag dw;
        String dx;
        String dy;

        void T()
        {
            cR = c._mthfor();
            Object obj = Jni.i(dx);
            if (ab.gE)
            {
                Log.i("baidu_location_service", ((String) (obj)));
            }
            ak.a().a(((String) (obj)));
            dx = null;
            if (dy == null)
            {
                dy = q.B();
            }
            cT.add(new BasicNameValuePair("bloc", ((String) (obj))));
            if (dy != null)
            {
                cT.add(new BasicNameValuePair("up", dy));
            }
            obj = new StringBuffer(512);
            ((StringBuffer) (obj)).append(String.format(Locale.CHINA, "&ki=%s&sn=%s", new Object[] {
                v.a(f.getServiceContext()), v._mthif(f.getServiceContext())
            }));
            String s1 = j.cZ().cY();
            if (s1 != null)
            {
                ((StringBuffer) (obj)).append(s1);
            }
            if (((StringBuffer) (obj)).length() > 0)
            {
                cT.add(new BasicNameValuePair("ext", Jni.i(((StringBuffer) (obj)).toString())));
            }
            obj = String.format(Locale.CHINA, "%d", new Object[] {
                Long.valueOf(System.currentTimeMillis())
            });
            cT.add(new BasicNameValuePair("trtm", ((String) (obj))));
            g.e().h();
        }

        public void d(String s1)
        {
            dx = s1;
            N();
        }

        void _mthdo(boolean flag)
        {
            if (!flag || cS == null)
            {
                break MISSING_BLOCK_LABEL_186;
            }
            Object obj;
            obj = EntityUtils.toString(cS, "utf-8");
            ag.ee = ((String) (obj));
            ak.a()._mthif(((String) (obj)));
            BDLocation bdlocation = new BDLocation(((String) (obj)));
            obj = bdlocation;
            if (bdlocation.getLocType() != 161)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            g.e()._mthtry(bdlocation.getTime());
            bdlocation._mthbyte(t.an().aq());
            obj = bdlocation;
            if (!af.bw().by())
            {
                break MISSING_BLOCK_LABEL_96;
            }
            bdlocation.setDirection(af.bw().bu());
            obj = bdlocation;
_L1:
            Exception exception;
            try
            {
                Message message2 = dw.eg.obtainMessage(21);
                message2.obj = obj;
                message2.sendToTarget();
                dy = null;
            }
            catch (Exception exception1)
            {
                Message message = dw.eg.obtainMessage(63);
                message.obj = "HttpStatus error";
                message.sendToTarget();
            }
_L2:
            if (cT != null)
            {
                cT.clear();
            }
            return;
            exception;
            exception = new BDLocation();
            exception.setLocType(63);
              goto _L1
            ak.a()._mthif("network exception");
            Message message1 = dw.eg.obtainMessage(63);
            message1.obj = "HttpStatus error";
            message1.sendToTarget();
              goto _L2
        }

        public a()
        {
            dw = ag.this;
            super();
            dy = null;
            dx = null;
            cT = new ArrayList();
        }
    }

    public class b extends Handler
    {

        final ag a;

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

            case 21: // '\025'
                a._mthbyte(message);
                return;

            case 62: // '>'
            case 63: // '?'
                a.at();
                break;
            }
        }

        public b()
        {
            a = ag.this;
            super();
        }
    }


    public static String ee = null;
    private boolean ed;
    private boolean ef;
    final Handler eg = new b();
    public t.a eh;
    private boolean ei;
    private boolean ej;
    public ar.b ek;

    ag()
    {
        ek = null;
        eh = null;
        ef = true;
        ej = false;
        ei = false;
        ed = false;
    }

    abstract void at();

    abstract void _mthbyte(Message message);

    public String e(String s)
    {
        String s1;
        String s4;
        if (eh == null || !eh._mthdo())
        {
            eh = t.an().ak();
        }
        String s2;
        android.location.Location location;
        String s5;
        if (eh != null)
        {
            c._mthif("baidu_location_service", eh._mthif());
        } else
        {
            c._mthif("baidu_location_service", "cellInfo null...");
        }
        if (ek == null || !ek._mthfor())
        {
            ek = ar.bW().b1();
        }
        if (ek != null)
        {
            c._mthif("baidu_location_service", ek._mthelse());
        } else
        {
            c._mthif("baidu_location_service", "wifi list null");
        }
        location = null;
        if (x.a4().aR())
        {
            location = x.a4().aS();
        }
        s5 = k.p().o();
        if (ar.bU())
        {
            s1 = "&cn=32";
        } else
        {
            s1 = String.format(Locale.CHINA, "&cn=%d", new Object[] {
                Integer.valueOf(t.an().ap())
            });
        }
        if (!ef) goto _L2; else goto _L1
_L1:
        ef = false;
        s4 = s1;
_L4:
        s2 = (new StringBuilder()).append(s4).append(s5).toString();
        s1 = s2;
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s).append(s2).toString();
        }
        return c._mthif(eh, ek, location, s1, 0);
_L2:
        s4 = s1;
        if (!ed)
        {
            s4 = q.y();
            String s3 = s1;
            if (s4 != null)
            {
                s3 = (new StringBuilder()).append(s1).append(s4).toString();
            }
            s1 = ar.bW().b0();
            s4 = s3;
            if (!TextUtils.isEmpty(s1))
            {
                s1 = s1.replace(":", "");
                s4 = String.format(Locale.CHINA, "%s&mac=%s", new Object[] {
                    s3, s1
                });
                ed = true;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
