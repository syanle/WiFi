// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.location.Location;
import android.widget.Toast;
import com.umeng.socialize.location.a;
import com.umeng.socialize.location.b;

// Referenced classes of package com.umeng.socialize.view:
//            q

class y extends b
{

    final q a;

    y(q q1, a a1)
    {
        a = q1;
        super(a1);
    }

    protected void a(Location location)
    {
        super.onPostExecute(location);
        com.umeng.socialize.view.q.a(a, location);
        com.umeng.socialize.view.q.a(a, false);
        if (location == null)
        {
            Toast.makeText(q.g(a), "\u83B7\u53D6\u5730\u7406\u4F4D\u7F6E\u5931\u8D25\uFF0C\u8BF7\u7A0D\u5019\u91CD\u8BD5.", 0).show();
        }
    }

    protected void onPostExecute(Object obj)
    {
        a((Location)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        com.umeng.socialize.view.q.a(a, true);
    }
}
