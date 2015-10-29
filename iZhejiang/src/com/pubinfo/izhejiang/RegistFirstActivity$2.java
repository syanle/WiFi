// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.view.View;
import android.widget.ImageButton;

// Referenced classes of package com.pubinfo.izhejiang:
//            RegistFirstActivity, CountryListActivity, Faq

class this._cls0
    implements android.view.tivity._cls2
{

    final RegistFirstActivity this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131361903: 
            view = new Intent(RegistFirstActivity.this, com/pubinfo/izhejiang/CountryListActivity);
            view.putExtra("activity", "RegistFirstActivity");
            startActivityForResult(view, 2);
            return;

        case 2131361836: 
            finish();
            return;

        case 2131361838: 
            if (drawable_dfu.equals(ib_radioButton.getBackground()))
            {
                if (RegistFirstActivity.access$0(RegistFirstActivity.this))
                {
                    RegistFirstActivity.access$1(RegistFirstActivity.this);
                    return;
                } else
                {
                    RegistFirstActivity.access$2(RegistFirstActivity.this);
                    return;
                }
            } else
            {
                showMsgToast(getString(0x7f06004d));
                return;
            }

        case 2131361983: 
            if (drawable_dfu.equals(ib_radioButton.getBackground()))
            {
                ib_radioButton.setBackgroundResource(0x7f020019);
                return;
            } else
            {
                ib_radioButton.setBackgroundDrawable(drawable_dfu);
                return;
            }

        case 2131361987: 
            view = new Intent(RegistFirstActivity.this, com/pubinfo/izhejiang/Faq);
            view.putExtra("tag", "\u4F7F\u7528\u534F\u8BAE");
            startActivity(view);
            return;

        case 2131361988: 
            view = new Intent(RegistFirstActivity.this, com/pubinfo/izhejiang/Faq);
            view.putExtra("tag", "\u9690\u79C1\u6761\u6B3E");
            startActivity(view);
            return;
        }
    }

    ()
    {
        this$0 = RegistFirstActivity.this;
        super();
    }
}
