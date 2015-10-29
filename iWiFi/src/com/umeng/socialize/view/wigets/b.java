// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socom.net.p;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            SectionListView

public class b extends BaseAdapter
    implements android.widget.AbsListView.OnScrollListener, Filterable
{
    final class a extends Filter
    {

        final b a;
        private boolean b;

        public void a(boolean flag)
        {
            b = flag;
        }

        protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
        {
            android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
            if (charsequence != null && charsequence.length() != 0) goto _L2; else goto _L1
_L1:
            charsequence = new ArrayList(b.a(a));
            charsequence.addAll(b.b(a));
_L4:
            filterresults.values = charsequence;
            filterresults.count = charsequence.size();
            return filterresults;
_L2:
            ArrayList arraylist = new ArrayList();
            charsequence = charsequence.toString().toLowerCase();
            int l = b.b(a).size();
            int k = 0;
            do
            {
label0:
                {
                    if (k < l)
                    {
                        break label0;
                    }
                    charsequence = arraylist;
                }
                if (true)
                {
                    continue;
                }
                UMFriend umfriend = (UMFriend)b.b(a).get(k);
                if (a.a(umfriend, charsequence))
                {
                    arraylist.add(umfriend);
                }
                k++;
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
        }

        protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
        {
            b.a(a, (ArrayList)filterresults.values);
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

        public a()
        {
            a = b.this;
            super();
            b = true;
        }
    }


    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    private int d;
    private Context e;
    private List f;
    private List g;
    private List h;
    private int i;
    private a j;

    public b(Context context, List list, List list1)
    {
        d = 0;
        e = context;
        a(list, list1);
        j = new a();
        i = ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_default_avatar");
    }

    static List a(b b1)
    {
        return b1.g;
    }

    static void a(b b1, List list)
    {
        b1.h = list;
    }

    private char b(int k)
    {
        return ((UMFriend)h.get(k)).upGroup();
    }

    static List b(b b1)
    {
        return b1.f;
    }

    public int a(int k)
    {
        return d;
    }

    public int a(String s)
    {
        int k;
        int l;
        k = 0;
        l = 0;
_L6:
        if (k < h.size()) goto _L2; else goto _L1
_L1:
        l = -1;
_L4:
        return l;
_L2:
        UMFriend umfriend;
        byte byte0;
        umfriend = (UMFriend)h.get(k);
        byte0 = l;
        if (umfriend.getPinyin() != null)
        {
            byte0 = l;
            if (umfriend.isEquals(s))
            {
                byte0 = 1;
            }
        }
        if (byte0 == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        l = k;
        if (!umfriend.isEquals(s)) goto _L4; else goto _L3
_L3:
        k++;
        l = byte0;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public List a()
    {
        ArrayList arraylist = new ArrayList(g);
        arraylist.addAll(f);
        return arraylist;
    }

    public void a(View view, int k, int l)
    {
        UMFriend umfriend = (UMFriend)h.get(k);
        ((TextView)view).setText(String.valueOf(umfriend.upGroup()));
    }

    public void a(String s, boolean flag)
    {
        j.a(flag);
        j.filter(s);
    }

    public void a(List list, List list1)
    {
        f = list;
        g = list1;
        h = new ArrayList(g);
        h.addAll(f);
    }

    public boolean a(UMFriend umfriend, String s)
    {
        return umfriend.getName().toLowerCase().contains(s.toLowerCase());
    }

    public Object[] b()
    {
        return null;
    }

    public int getCount()
    {
        return h.size();
    }

    public Filter getFilter()
    {
        if (j == null)
        {
            j = new a();
        }
        return j;
    }

    public Object getItem(int k)
    {
        return h.get(k);
    }

    public long getItemId(int k)
    {
        return 0L;
    }

    public View getView(int k, View view, ViewGroup viewgroup)
    {
        Object obj = "456";
        UMFriend umfriend = (UMFriend)h.get(k);
        char c1;
        char c2;
        if (k > 0)
        {
            c2 = ((UMFriend)h.get(k - 1)).upGroup();
        } else
        {
            c2 = '\0';
        }
        c1 = umfriend.upGroup();
        if (k == 0 || c1 != c2)
        {
            obj = "123";
        }
        viewgroup = view;
        if (view == null)
        {
            viewgroup = ((Activity)e).getLayoutInflater().inflate(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_at_item"), null);
        }
        if (((String) (obj)).equals("123"))
        {
            view = (TextView)viewgroup.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.ID, "section"));
            view.setText(String.valueOf(c1));
            view.setVisibility(0);
        } else
        if (((String) (obj)).equals("456"))
        {
            ((TextView)viewgroup.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.ID, "section"))).setVisibility(8);
        }
        view = (TextView)viewgroup.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_text_view"));
        obj = (ImageView)viewgroup.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_avatar_imv"));
        ((ImageView) (obj)).setImageResource(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_default_avatar"));
        view.setText(umfriend.getName());
        if (!TextUtils.isEmpty(umfriend.getIcon()))
        {
            p.a(e, ((ImageView) (obj)), umfriend.getIcon(), false, null, null, SocializeConstants.ROUNDER_ICON);
            return viewgroup;
        } else
        {
            ((ImageView) (obj)).setImageResource(i);
            return viewgroup;
        }
    }

    public void onScroll(AbsListView abslistview, int k, int l, int i1)
    {
        if (k < 0 || i1 == 0)
        {
            d = 0;
            return;
        }
        if (a(String.valueOf(b(k))) == k + 1)
        {
            d = 2;
        } else
        {
            d = 1;
        }
        ((SectionListView)abslistview).configureHeaderView(k);
    }

    public void onScrollStateChanged(AbsListView abslistview, int k)
    {
    }
}
