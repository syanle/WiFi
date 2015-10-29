// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.skyblue;

import android.os.AsyncTask;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.skyblue:
//            PlatformListPage, PlatformGridViewAdapter

class this._cls0 extends AsyncTask
{

    final PlatformListPage this$0;

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient Platform[] doInBackground(Void avoid[])
    {
        return ShareSDK.getPlatformList();
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Platform[])obj);
    }

    protected void onPostExecute(Platform aplatform[])
    {
        PlatformListPage.access$0(PlatformListPage.this).setData(aplatform, PlatformListPage.access$1(PlatformListPage.this));
    }

    pter()
    {
        this$0 = PlatformListPage.this;
        super();
    }
}
