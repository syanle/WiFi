// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Looper;
import com.cat.data.Person;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            CountryListActivity

public class this._cls0 extends Thread
{

    final CountryListActivity this$0;

    public void run()
    {
        Looper.prepare();
        CountryListActivity.access$0(CountryListActivity.this);
        String as[] = sortIndex(CountryListActivity.access$1(CountryListActivity.this));
        CountryListActivity.access$2(CountryListActivity.this, as);
        CountryListActivity.access$3(CountryListActivity.this, new HashMap());
        int i = 0;
_L3:
        int j = CountryListActivity.access$4(CountryListActivity.this).length;
        if (i < j) goto _L2; else goto _L1
_L1:
        Looper.loop();
        return;
_L2:
        j = 0;
_L4:
        if (j < CountryListActivity.access$5(CountryListActivity.this).size())
        {
            break MISSING_BLOCK_LABEL_92;
        }
        i++;
          goto _L3
        if (((Person)CountryListActivity.access$5(CountryListActivity.this).get(j)).getCountrycn().equals(CountryListActivity.access$4(CountryListActivity.this)[i]))
        {
            CountryListActivity.access$6(CountryListActivity.this).put(CountryListActivity.access$4(CountryListActivity.this)[i], Integer.valueOf(j));
        }
        j++;
          goto _L4
        Exception exception;
        exception;
          goto _L1
    }

    public ()
    {
        this$0 = CountryListActivity.this;
        super();
    }
}
