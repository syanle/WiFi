// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Bundle;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            YXMessage

public static interface 
{

    public abstract  dataType();

    public abstract void read(Bundle bundle);

    public abstract boolean verifyData();

    public abstract void write(Bundle bundle);
}
