// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Bundle;
import java.util.Locale;

public abstract class BDErrorReport
{

    private String a;

    public BDErrorReport()
    {
        a = null;
    }

    public BDErrorReport(BDErrorReport bderrorreport)
    {
        a = null;
        a = bderrorreport.a;
    }

    public Bundle getErrorInfo()
    {
        if (a == null)
        {
            return null;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putString("errInfo", a);
            return bundle;
        }
    }

    public abstract void onReportResult(boolean flag);

    public int setErrorInfo(boolean flag, double d, double d1, boolean flag1, String s, 
            double d2, double d3, String s1, String s2)
    {
label0:
        {
            StringBuffer stringbuffer = new StringBuffer(1024);
            stringbuffer.append("&report=1");
            if (flag)
            {
                stringbuffer.append(String.format(Locale.CHINA, "&ell=%.5f|%.5f", new Object[] {
                    Double.valueOf(d), Double.valueOf(d1)
                }));
            }
            if (flag1)
            {
                if (s == null || !s.equals("gcj02") && !s.equals("bd09") && !s.equals("bd09ll") && !s.equals("gps"))
                {
                    break label0;
                }
                stringbuffer.append(String.format(Locale.CHINA, "&ugc=%.5f|%.5f", new Object[] {
                    Double.valueOf(d2), Double.valueOf(d3)
                }));
                stringbuffer.append("&ucoord=");
                stringbuffer.append(s);
            }
            if (s1 != null)
            {
                s = s1;
                if (s1.length() > 60)
                {
                    s = s1.substring(0, 60);
                }
                stringbuffer.append("&ver=");
                stringbuffer.append(s);
            }
            if (s2 != null)
            {
                s = s2;
                if (s2.length() > 512)
                {
                    s = s2.substring(0, 512);
                }
                stringbuffer.append("&erInfo=");
                stringbuffer.append(s);
            }
            a = stringbuffer.toString();
            return 0;
        }
        return 1;
    }
}
