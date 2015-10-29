// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.exception.SocializeException;

class aq
    implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
{

    final c.a a;

    aq(c.a a1)
    {
        a = a1;
        super();
    }

    public void onComplete(int i, SocializeEntity socializeentity)
    {
label0:
        {
            if (a.b != null)
            {
                if (i != 200)
                {
                    break label0;
                }
                a.b.onComplete(a.e, a.a);
            }
            return;
        }
        a.b.onError(new SocializeException(i, "upload platform appkey failed."), a.a);
    }

    public void onStart()
    {
    }
}
