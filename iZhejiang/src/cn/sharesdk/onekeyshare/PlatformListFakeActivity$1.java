// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import com.mob.tools.FakeActivity;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.onekeyshare:
//            PlatformListFakeActivity, ThemeShareCallback

class this._cls0 extends FakeActivity
{

    final PlatformListFakeActivity this$0;

    public void onResult(HashMap hashmap)
    {
        while (hashmap == null || !hashmap.containsKey("editRes")) 
        {
            return;
        }
        hashmap = (HashMap)hashmap.get("editRes");
        themeShareCallback.doShare(hashmap);
    }

    ()
    {
        this$0 = PlatformListFakeActivity.this;
        super();
    }
}
