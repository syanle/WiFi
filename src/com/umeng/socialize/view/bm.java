// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.location.Location;
import android.widget.Toast;
import com.umeng.socialize.location.a;
import com.umeng.socialize.location.b;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class bm extends b
{

    final ShareActivity a;

    bm(ShareActivity shareactivity, a a1)
    {
        a = shareactivity;
        super(a1);
    }

    protected void a(Location location)
    {
        super.onPostExecute(location);
        com.umeng.socialize.view.ShareActivity.a(a, location);
        com.umeng.socialize.view.ShareActivity.b(a, false);
        if (location == null && !a.isFinishing())
        {
            Toast.makeText(ShareActivity.q(a), "\u83B7\u53D6\u5730\u7406\u4F4D\u7F6E\u5931\u8D25\uFF0C\u8BF7\u7A0D\u5019\u91CD\u8BD5.", 0).show();
        }
    }

    protected void onPostExecute(Object obj)
    {
        a((Location)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        com.umeng.socialize.view.ShareActivity.b(a, true);
    }
}
