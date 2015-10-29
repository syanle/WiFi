// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;

// Referenced classes of package im.yixin.sdk.api:
//            YXMessage

public static interface 
{

    public abstract  dataType();

    public abstract void read(Bundle bundle);

    public abstract boolean verifyData();

    public abstract void write(Bundle bundle);
}
