// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.controller:
//            UserCenterController

class e
    implements UserCenterController.OBListener
{

    final UserCenterController a;

    e(UserCenterController usercentercontroller)
    {
        a = usercentercontroller;
        super();
    }

    public void a(UserCenterController.a a1)
    {
        if (UserCenterController.a(a) == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = UserCenterController.a(a).iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ((UserCenterController.OBListener)iterator.next()).a(a1);
        if (true) goto _L5; else goto _L4
_L4:
    }
}
