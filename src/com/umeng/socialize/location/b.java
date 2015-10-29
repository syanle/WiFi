// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.location;

import android.location.Location;
import android.os.AsyncTask;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.location:
//            a

public class b extends AsyncTask
{

    private static final String b = "Location";
    private a a;

    public b(a a1)
    {
        a = a1;
    }

    private Location a()
    {
        Location location1 = a.b();
        Location location = location1;
        if (location1 == null)
        {
            Log.c("Location", "Fetch gps info from default failed,then fetch form network..");
            a.a("network");
            location = a.b();
            a.a(null);
        }
        return location;
    }

    protected transient Location a(Void avoid[])
    {
        int i = 0;
_L5:
        if (i < 20) goto _L2; else goto _L1
_L1:
        avoid = null;
_L4:
        return avoid;
_L2:
        Location location = a();
        avoid = location;
        if (location != null) goto _L4; else goto _L3
_L3:
        Thread.sleep(500L);
        i++;
          goto _L5
        avoid;
          goto _L1
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }
}
