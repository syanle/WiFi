// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;


// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            MMHandlerThread

class aq
    implements Runnable
{

    final aitWorkThread aq;
    final MMHandlerThread ar;

    public void run()
    {
        aq.doInBackground();
        class _cls1
            implements Runnable
        {

            final MMHandlerThread._cls3 au;

            public void run()
            {
                au.aq.onPostExecute();
            }

            _cls1()
            {
                au = MMHandlerThread._cls3.this;
                super();
            }
        }

        MMHandlerThread.a(new _cls1());
    }

    aitWorkThread(MMHandlerThread mmhandlerthread, aitWorkThread aitworkthread)
    {
        ar = mmhandlerthread;
        aq = aitworkthread;
        super();
    }
}
