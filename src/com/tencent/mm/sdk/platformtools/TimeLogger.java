// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.SystemClock;
import java.util.ArrayList;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public class TimeLogger
{

    private String bm;
    private String bn;
    private boolean bo;
    ArrayList bp;
    ArrayList bq;

    public TimeLogger(String s, String s1)
    {
        reset(s, s1);
    }

    public void addSplit(String s)
    {
        if (bo)
        {
            return;
        } else
        {
            long l = SystemClock.elapsedRealtime();
            bp.add(Long.valueOf(l));
            bq.add(s);
            return;
        }
    }

    public void dumpToLog()
    {
        if (bo)
        {
            return;
        }
        Log.d(bm, (new StringBuilder()).append(bn).append(": begin").toString());
        long l1 = ((Long)bp.get(0)).longValue();
        int i = 1;
        long l = l1;
        for (; i < bp.size(); i++)
        {
            l = ((Long)bp.get(i)).longValue();
            String s = (String)bq.get(i);
            long l2 = ((Long)bp.get(i - 1)).longValue();
            Log.d(bm, (new StringBuilder()).append(bn).append(":      ").append(l - l2).append(" ms, ").append(s).toString());
        }

        Log.d(bm, (new StringBuilder()).append(bn).append(": end, ").append(l - l1).append(" ms").toString());
    }

    public void reset()
    {
        bo = false;
        if (bo)
        {
            return;
        }
        if (bp == null)
        {
            bp = new ArrayList();
            bq = new ArrayList();
        } else
        {
            bp.clear();
            bq.clear();
        }
        addSplit(null);
    }

    public void reset(String s, String s1)
    {
        bm = s;
        bn = s1;
        reset();
    }
}
