// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.baidu.location:
//            s, c, Jni, x

class ak
{
    class a extends s
    {

        String dA;
        Messenger dB;
        boolean dC;
        final ak dz;

        void T()
        {
            cR = c._mthtry();
            if (ak.a(dz) == null)
            {
                ak._mthif(dz, Jni.i("none"));
            }
            cT.add(new BasicNameValuePair("erpt[0]", ak.a(dz)));
            if (ak._mthif(dz) == null)
            {
                ak.a(dz, "none");
            }
            cT.add(new BasicNameValuePair("erpt[1]", Jni.i(ak._mthif(dz))));
            if (dA == null)
            {
                dA = "none";
            }
            cT.add(new BasicNameValuePair("erpt[2]", Jni.i(dA)));
            StringBuffer stringbuffer = new StringBuffer(512);
            stringbuffer.append("&t1=");
            stringbuffer.append(ak._mthdo(dz));
            stringbuffer.append("&t2=");
            stringbuffer.append(ak._mthfor(dz));
            String s1 = x.a4().aY();
            if (s1 != null)
            {
                stringbuffer.append(s1);
            }
            cT.add(new BasicNameValuePair("erpt[3]", Jni.i(stringbuffer.toString())));
            ak._mthif(dz, null);
            ak.a(dz, null);
            ak.a(dz, 0L);
        }

        void _mthdo(boolean flag)
        {
            if (cT != null)
            {
                cT.clear();
            }
            Message message;
            if (flag)
            {
                message = Message.obtain(null, 205);
            } else
            {
                message = Message.obtain(null, 204);
            }
            try
            {
                dB.send(message);
            }
            catch (Exception exception) { }
            dC = false;
        }

        public void _mthtry(Message message)
        {
            dB = message.replyTo;
            if (dC)
            {
                message = Message.obtain(null, 204);
                try
                {
                    dB.send(message);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Message message)
                {
                    return;
                }
            } else
            {
                dC = true;
                dA = message.getData().getString("errInfo");
                N();
                return;
            }
        }

        public a()
        {
            dz = ak.this;
            super();
            dC = false;
            dA = null;
            dB = null;
            cT = new ArrayList();
        }
    }


    private static ak _fldgoto;
    private boolean a;
    private String _fldbyte;
    private String _fldcase;
    private long _fldchar;
    private String _flddo;
    private String _fldelse;
    private long _fldfor;
    private long _fldif;
    private String _fldint;
    public String _fldnew;
    private a _fldtry;

    private ak()
    {
        _fldint = null;
        _fldbyte = null;
        _fldelse = null;
        _fldnew = null;
        a = false;
        _fldcase = null;
        _flddo = null;
        _fldtry = null;
        _fldchar = 0L;
        _fldfor = 0L;
        _fldif = 0L;
        _fldtry = new a();
    }

    static long a(ak ak1, long l)
    {
        ak1._fldchar = l;
        return l;
    }

    public static ak a()
    {
        if (_fldgoto == null)
        {
            _fldgoto = new ak();
        }
        return _fldgoto;
    }

    static String a(ak ak1)
    {
        return ak1._fldcase;
    }

    static String a(ak ak1, String s)
    {
        ak1._flddo = s;
        return s;
    }

    static long _mthdo(ak ak1)
    {
        return ak1._fldif;
    }

    static long _mthfor(ak ak1)
    {
        return ak1._fldchar;
    }

    static String _mthif(ak ak1)
    {
        return ak1._flddo;
    }

    static String _mthif(ak ak1, String s)
    {
        ak1._fldcase = s;
        return s;
    }

    public void a(Message message)
    {
        if (_fldcase == null || _flddo == null)
        {
            _fldcase = _fldint;
            _flddo = _fldbyte;
        }
        _fldtry._mthtry(message);
    }

    public void a(String s)
    {
        _fldelse = s;
        a = true;
        _fldfor = System.currentTimeMillis();
    }

    public void _mthdo()
    {
        _fldcase = _fldint;
        _flddo = _fldbyte;
        _fldchar = System.currentTimeMillis();
    }

    public void _mthif()
    {
        _fldcase = null;
        _flddo = null;
        _fldchar = 0L;
    }

    public void _mthif(String s)
    {
        if (a)
        {
            _fldint = _fldelse;
            a = false;
            _fldif = _fldfor;
        }
        _fldbyte = s;
    }
}
