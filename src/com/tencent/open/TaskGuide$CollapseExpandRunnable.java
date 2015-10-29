// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.WindowManager;
import android.view.animation.Interpolator;

// Referenced classes of package com.tencent.open:
//            TaskGuide

class expand
    implements Runnable
{

    boolean expand;
    float index;
    final TaskGuide this$0;

    public void run()
    {
        boolean flag1 = true;
        SystemClock.currentThreadTimeMillis();
        index = (float)((double)index + 0.10000000000000001D);
        float f1 = index;
        float f = f1;
        if (f1 > 1.0F)
        {
            f = 1.0F;
        }
        boolean flag;
        int i;
        if (f >= 1.0F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = (int)(TaskGuide.access$2600(TaskGuide.this).getInterpolation(f) * (float)TaskGuide.access$2700(TaskGuide.this));
        if (expand)
        {
            TaskGuide.access$1000(TaskGuide.this)._fld0 = TaskGuide.access$2800(TaskGuide.this) + i;
        } else
        {
            TaskGuide.access$1000(TaskGuide.this)._fld0 = TaskGuide.access$2800(TaskGuide.this) - i;
        }
        Log.d("TAG", (new StringBuilder()).append("mWinParams.y = ").append(TaskGuide.access$1000(TaskGuide.this)._fld0).append("deltaDistence = ").append(i).toString());
        if (!TaskGuide.access$000(TaskGuide.this))
        {
            flag = flag1;
        } else
        {
            TaskGuide.access$2900(TaskGuide.this).updateViewLayout(TaskGuide.access$100(TaskGuide.this), TaskGuide.access$1000(TaskGuide.this));
        }
        if (flag)
        {
            TaskGuide.access$3000(TaskGuide.this);
            return;
        } else
        {
            TaskGuide.access$3200(TaskGuide.this).postDelayed(TaskGuide.access$3100(TaskGuide.this), 5L);
            return;
        }
    }

    public (boolean flag)
    {
        this$0 = TaskGuide.this;
        super();
        expand = false;
        index = 0.0F;
        expand = flag;
    }
}
