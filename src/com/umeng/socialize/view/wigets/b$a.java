// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.widget.Filter;
import com.umeng.socialize.bean.UMFriend;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            b

final class b extends Filter
{

    final b a;
    private boolean b;

    public void a(boolean flag)
    {
        b = flag;
    }

    protected android.widget.er.FilterResults performFiltering(CharSequence charsequence)
    {
        android.widget.er.FilterResults filterresults = new android.widget.er.FilterResults();
        if (charsequence != null && charsequence.length() != 0) goto _L2; else goto _L1
_L1:
        charsequence = new ArrayList(com.umeng.socialize.view.wigets.b.a(a));
        charsequence.addAll(com.umeng.socialize.view.wigets.b.b(a));
_L4:
        filterresults.values = charsequence;
        filterresults.count = charsequence.size();
        return filterresults;
_L2:
        ArrayList arraylist = new ArrayList();
        charsequence = charsequence.toString().toLowerCase();
        int j = com.umeng.socialize.view.wigets.b.b(a).size();
        int i = 0;
        do
        {
label0:
            {
                if (i < j)
                {
                    break label0;
                }
                charsequence = arraylist;
            }
            if (true)
            {
                continue;
            }
            UMFriend umfriend = (UMFriend)com.umeng.socialize.view.wigets.b.b(a).get(i);
            if (a.a(umfriend, charsequence))
            {
                arraylist.add(umfriend);
            }
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void publishResults(CharSequence charsequence, android.widget.er.FilterResults filterresults)
    {
        com.umeng.socialize.view.wigets.b.a(a, (ArrayList)filterresults.values);
        if (filterresults.count > 0)
        {
            a.notifyDataSetChanged();
            return;
        } else
        {
            a.notifyDataSetInvalidated();
            return;
        }
    }

    public (b b1)
    {
        a = b1;
        super();
        b = true;
    }
}
