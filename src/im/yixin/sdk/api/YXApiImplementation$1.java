// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.widget.Toast;

// Referenced classes of package im.yixin.sdk.api:
//            YXApiImplementation

class this._cls0
    implements Runnable
{

    final YXApiImplementation this$0;

    public void run()
    {
        Toast.makeText(YXApiImplementation.access$000(YXApiImplementation.this), "\u60A8\u7684\u6613\u4FE1\u7248\u672C\u8FC7\u4F4E\uFF0C\u8BF7\u5148\u5347\u7EA7!", 0).show();
        YXApiImplementation.access$100(YXApiImplementation.this);
    }

    ()
    {
        this$0 = YXApiImplementation.this;
        super();
    }
}
