// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.view.View;
import android.widget.Button;

// Referenced classes of package com.tencent.open:
//            TaskGuide

class index
    implements android.view.ner
{

    int index;
    final TaskGuide this$0;

    public void onClick(View view)
    {
        view = (Button)view;
        if (TaskGuide.access$400(TaskGuide.this, index) == index)
        {
            TaskGuide.access$500(TaskGuide.this, index);
            TaskGuide.access$600(TaskGuide.this, index);
        }
        TaskGuide.access$700(TaskGuide.this);
    }

    public (int i)
    {
        this$0 = TaskGuide.this;
        super();
        index = i;
    }
}
