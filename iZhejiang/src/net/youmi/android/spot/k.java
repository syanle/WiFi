// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.util.Log;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.j;
import net.youmi.android.a.c.c.a;
import net.youmi.android.c.a.b;
import net.youmi.android.c.a.f;

// Referenced classes of package net.youmi.android.spot:
//            SpotManager, SpotDialogListener

public class k extends AsyncTask
{

    boolean a;
    Context b;
    SpotManager c;
    SpotDialogListener d;
    boolean e;

    k(SpotManager spotmanager, Context context, boolean flag, SpotDialogListener spotdialoglistener, boolean flag1)
    {
        a = false;
        e = false;
        c = spotmanager;
        b = context;
        a = flag;
        d = spotdialoglistener;
        e = flag1;
    }

    protected transient String a(Void avoid[])
    {
        String s;
        s = "";
        avoid = s;
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        avoid = s;
        c.setLoading(true);
        avoid = s;
        Object obj = j.a((new StringBuilder()).append("scid=").append(net.youmi.android.a.c.c.a.h(b)).toString());
        avoid = s;
        s = net.youmi.android.c.a.b.a(b, ((String) (obj)), e);
        avoid = s;
        if (!e)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        avoid = s;
        if (s.length() >= 20)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        avoid = s;
        Log.d("SDKChecking", "ad resource request failed");
        avoid = s;
        int i = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(s), "c", -1);
        avoid = s;
        if (net.youmi.android.a.b.b.e.a(s) || i != 0) goto _L2; else goto _L1
_L1:
        avoid = s;
        net.youmi.android.a.c.b.a.d("Ad request succeed");
        avoid = s;
        obj = b.getSharedPreferences(SpotManager.d, 0).edit();
        avoid = s;
        ((android.content.SharedPreferences.Editor) (obj)).putLong("lastRequestTime", System.currentTimeMillis());
        avoid = s;
        ((android.content.SharedPreferences.Editor) (obj)).commit();
        avoid = s;
        c.a(b, s);
        avoid = s;
_L4:
        if (c != null)
        {
            c.setLoading(false);
        }
        return avoid;
_L2:
        avoid = s;
        net.youmi.android.a.c.b.a.c("Ad request result code:%d, %s", new Object[] {
            Integer.valueOf(i), f.a(i)
        });
        avoid = s;
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void a(String s)
    {
        super.onPostExecute(s);
        if (s == null || s.equals(""))
        {
            if (d != null)
            {
                d.onShowFailed();
            }
        } else
        {
            c.e = s;
            if (a)
            {
                try
                {
                    c.a(100);
                    c.a(b, d);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    return;
                }
            }
        }
    }

    protected void b(String s)
    {
        if (c != null)
        {
            c.setLoading(false);
        }
        super.onCancelled(s);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onCancelled(Object obj)
    {
        b((String)obj);
    }

    protected void onPostExecute(Object obj)
    {
        a((String)obj);
    }
}
