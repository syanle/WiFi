// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.content.Context;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.ListView;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            e, b

public class SearchBox extends EditText
{
    public static interface SearchResultListener
    {

        public abstract void a(boolean flag);
    }


    private ListView mListView;
    private SearchResultListener mSearchResultListener;
    private TextWatcher mWatcher;

    public SearchBox(Context context)
    {
        super(context);
        mWatcher = new e(this);
        addTextChangedListener(mWatcher);
    }

    public SearchBox(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mWatcher = new e(this);
        addTextChangedListener(mWatcher);
    }

    private boolean isAllPinyin(String s)
    {
        s = s.toCharArray();
        int i = s.length - 1;
        do
        {
            if (i < 0)
            {
                return true;
            }
            if (s[i] > '\200' || s[i] < 0)
            {
                return false;
            }
            i--;
        } while (true);
    }

    private void searchText(String s)
    {
        ((b)mListView.getAdapter()).a(s, isAllPinyin(s));
        if (mSearchResultListener != null)
        {
            SearchResultListener searchresultlistener = mSearchResultListener;
            boolean flag;
            if (TextUtils.isEmpty(s))
            {
                flag = false;
            } else
            {
                flag = true;
            }
            searchresultlistener.a(flag);
        }
    }

    public void setListView(ListView listview)
    {
        mListView = listview;
    }

    public void setSearchResultListener(SearchResultListener searchresultlistener)
    {
        mSearchResultListener = searchresultlistener;
    }

}
