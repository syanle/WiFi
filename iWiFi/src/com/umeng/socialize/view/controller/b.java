// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import android.os.Handler;
import android.text.TextUtils;
import com.umeng.socialize.bean.StatusCode;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socom.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view.controller:
//            ShareAtController

class b
    implements com.umeng.socialize.controller.listener.SocializeListeners.FetchFriendsListener
{

    final ShareAtController a;

    b(ShareAtController shareatcontroller)
    {
        a = shareatcontroller;
        super();
    }

    public void onComplete(int i, List list)
    {
        if (i != 200 || list == null)
        {
            break MISSING_BLOCK_LABEL_249;
        }
        HashSet hashset;
        Object obj;
        Object obj1;
        obj = ShareAtController.e(a).a(ShareAtController.c(a));
        hashset = new HashSet();
        obj1 = list.iterator();
_L4:
        if (((Iterator) (obj1)).hasNext()) goto _L2; else goto _L1
_L1:
        obj = ((List) (obj)).iterator();
_L6:
        if (!((Iterator) (obj)).hasNext())
        {
            ShareAtController.e(a).a(list);
            ShareAtController.d(a).sendEmptyMessage(2);
            return;
        }
          goto _L3
_L2:
        try
        {
            hashset.add(((UMFriend)((Iterator) (obj1)).next()).getFid());
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            ShareAtController.d(a).sendEmptyMessage(3);
            Log.e(ShareAtController.c(), (new StringBuilder("update friends failed ")).append(list.toString()).toString());
            return;
        }
          goto _L4
_L3:
        String s;
        obj1 = (UMFriend)((Iterator) (obj)).next();
        s = ((UMFriend) (obj1)).getFid();
        if (!TextUtils.isEmpty(s) && !hashset.contains(s))
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i == 0) goto _L6; else goto _L5
_L5:
        ((UMFriend) (obj1)).setAlive(false);
        list.add(obj1);
        Log.c(ShareAtController.c(), (new StringBuilder("unlive ")).append(((UMFriend) (obj1)).getName()).toString());
          goto _L6
        ShareAtController.d(a).sendEmptyMessage(3);
        StatusCode.showErrMsg(ShareAtController.f(a), i, null);
        return;
          goto _L4
    }

    public void onStart()
    {
        ShareAtController.d(a).sendEmptyMessage(1);
    }
}
