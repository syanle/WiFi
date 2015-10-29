// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import com.cat.data.BottomData;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            AroundMoreActivity

class val.Btn
    implements android.view.tivity._cls2
{

    final AroundMoreActivity this$0;
    private final Button val$Btn[];

    public void onClick(View view)
    {
        int i = 0;
        do
        {
            if (i >= bd.size())
            {
                i = ((Integer)view.getTag()).intValue();
                val$Btn[i].setTextColor(getResources().getColorStateList(0x7f080000));
                showLoading();
                AroundMoreActivity.access$0(AroundMoreActivity.this, ((BottomData)bd.get(i)).getName());
                return;
            }
            val$Btn[i].setTextColor(getResources().getColorStateList(0x7f080006));
            i++;
        } while (true);
    }

    ()
    {
        this$0 = final_aroundmoreactivity;
        val$Btn = _5B_Landroid.widget.Button_3B_.this;
        super();
    }
}
