// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.os.Looper;

// Referenced classes of package com.cat.picture:
//            ShowImageActivity

public class this._cls0 extends Thread
{

    final ShowImageActivity this$0;

    public void run()
    {
        try
        {
            Looper.prepare();
            ShowImageActivity.access$0(ShowImageActivity.this);
        }
        catch (Exception exception) { }
        Looper.loop();
    }

    public ()
    {
        this$0 = ShowImageActivity.this;
        super();
    }
}
