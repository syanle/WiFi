// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.listener;

import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SocializeEntity;

// Referenced classes of package com.umeng.socialize.controller.listener:
//            SocializeListeners

public static interface 
    extends com.umeng.socialize.bean.StatusListener
{

    public abstract void onComplete(MultiStatus multistatus, int i, SocializeEntity socializeentity);

    public abstract void onStart();
}
