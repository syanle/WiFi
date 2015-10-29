// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.location;

import android.app.Activity;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socom.DeviceConfig;

// Referenced classes of package com.umeng.socialize.location:
//            SocializeLocationProvider, d, c

public class a
    implements SocializeLocationProvider
{

    private static final String a = com/umeng/socialize/location/a.getName();
    private Location b;
    private Context c;
    private d d;
    private c e;
    private String f;

    public a()
    {
        e = null;
    }

    private void a(Context context, int i)
    {
        Object obj = new Criteria();
        ((Criteria) (obj)).setAccuracy(i);
        obj = d.a(((Criteria) (obj)), true);
        if (obj != null)
        {
            f = ((String) (obj));
        }
        Log.d(a, (new StringBuilder("Get location from ")).append(f).toString());
        Location location;
        if (TextUtils.isEmpty(f))
        {
            break MISSING_BLOCK_LABEL_141;
        }
        location = d.a(f);
        if (location != null)
        {
            try
            {
                b = location;
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
            break MISSING_BLOCK_LABEL_141;
        }
        if (d.b(f) && e != null && (context instanceof Activity))
        {
            d.a((Activity)context, f, 1L, 0.0F, e);
            return;
        }
    }

    public void a()
    {
        if (d != null && e != null)
        {
            d.a(e);
        }
    }

    public void a(Context context)
    {
        c = context;
        e = new c();
        b();
    }

    protected void a(Location location)
    {
        b = location;
    }

    public void a(d d1)
    {
        d = d1;
    }

    public void a(String s)
    {
        f = s;
    }

    public Location b()
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        if (!DeviceConfig.checkPermission(c, "android.permission.ACCESS_FINE_LOCATION")) goto _L4; else goto _L3
_L3:
        a(c, 1);
_L2:
        return b;
_L4:
        if (DeviceConfig.checkPermission(c, "android.permission.ACCESS_COARSE_LOCATION"))
        {
            a(c, 2);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    protected d c()
    {
        return d;
    }

}
