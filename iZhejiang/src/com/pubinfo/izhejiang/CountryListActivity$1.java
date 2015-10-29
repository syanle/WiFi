// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.cat.data.Person;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            CountryListActivity

class this._cls0
    implements android.widget.kListener
{

    final CountryListActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (activity != null && !activity.equals(""))
        {
            if (activity.equals("RegistFirstActivity"))
            {
                adapterview = new Intent();
                adapterview.putExtra("code", ((Person)CountryListActivity.access$5(CountryListActivity.this).get(i)).getCode());
                adapterview.putExtra("countrycn", ((Person)CountryListActivity.access$5(CountryListActivity.this).get(i)).getCountrycn());
                setResult(2, adapterview);
                finish();
            } else
            if (activity.equals("LoginActivity"))
            {
                adapterview = new Intent();
                adapterview.putExtra("code", ((Person)CountryListActivity.access$5(CountryListActivity.this).get(i)).getCode());
                adapterview.putExtra("countrycn", ((Person)CountryListActivity.access$5(CountryListActivity.this).get(i)).getCountrycn());
                adapterview.putExtra("Activity", "CountryListActivity");
                setResult(1, adapterview);
                finish();
                return;
            }
        }
    }

    er()
    {
        this$0 = CountryListActivity.this;
        super();
    }
}
