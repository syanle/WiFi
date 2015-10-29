// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.os.Message;

// Referenced classes of package com.mob.tools.utils:
//            UIHandler

private static final class callback
{

    public final android.os.InnerObj callback;
    public final Message msg;

    public (Message message, android.os.InnerObj innerobj)
    {
        msg = message;
        callback = innerobj;
    }
}
