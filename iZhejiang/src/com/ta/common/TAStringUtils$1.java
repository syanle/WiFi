// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.common;

import java.text.SimpleDateFormat;

// Referenced classes of package com.ta.common:
//            TAStringUtils

class  extends ThreadLocal
{

    protected volatile Object initialValue()
    {
        return initialValue();
    }

    protected SimpleDateFormat initialValue()
    {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    ()
    {
    }
}
