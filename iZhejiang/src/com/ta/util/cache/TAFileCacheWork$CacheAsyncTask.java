// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import com.ta.common.AsyncTask;

// Referenced classes of package com.ta.util.cache:
//            TAFileCacheWork

protected class this._cls0 extends AsyncTask
{

    final TAFileCacheWork this$0;

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Object[])aobj);
    }

    protected transient Void doInBackground(Object aobj[])
    {
        ((Integer)aobj[0]).intValue();
        JVM INSTR tableswitch 0 3: default 40
    //                   0 42
    //                   1 52
    //                   2 62
    //                   3 72;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return null;
_L2:
        clearCacheInternal();
        continue; /* Loop/switch isn't completed */
_L3:
        initDiskCacheInternal();
        continue; /* Loop/switch isn't completed */
_L4:
        flushCacheInternal();
        continue; /* Loop/switch isn't completed */
_L5:
        closeCacheInternal();
        if (true) goto _L1; else goto _L6
_L6:
    }

    public ()
    {
        this$0 = TAFileCacheWork.this;
        super();
    }
}
