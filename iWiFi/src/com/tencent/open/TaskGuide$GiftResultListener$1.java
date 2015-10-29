// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;


// Referenced classes of package com.tencent.open:
//            TaskGuide

class val.e
    implements Runnable
{

    final is._cls0 this$1;
    final Exception val$e;

    public void run()
    {
        val.e e1 = val.e;
        if (dex == 0)
        {
            e1 = TaskGuide.access$200(_fld0);
        } else
        {
            e1 = TaskGuide.access$300(_fld0);
        }
        if (e1 == CK_REWARD)
        {
            TaskGuide.access$3600(_fld0, dex, dex);
            TaskGuide.access$3800(_fld0, (new StringBuilder()).append("\u9886\u53D6\u5931\u8D25 :").append(val$e.getClass().getName()).toString());
        }
        TaskGuide.access$600(_fld0, dex);
        TaskGuide.access$2400(_fld0, 2000);
    }

    ()
    {
        this$1 = final_;
        val$e = Exception.this;
        super();
    }
}
