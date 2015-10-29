// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.listener;

import com.umeng.socialize.bean.SocializeEntity;
import java.util.List;

// Referenced classes of package com.umeng.socialize.controller.listener:
//            SocializeListeners

public static interface 
{

    public abstract void onComplete(int i, List list, SocializeEntity socializeentity);

    public abstract void onStart();
}
