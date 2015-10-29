// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;

public class GroupListView extends ListView
{
    public static abstract class GroupListAdapter
    {

        private BaseAdapter adapter;

        private void setInnerAdapter(BaseAdapter baseadapter)
        {
            adapter = baseadapter;
        }

        public abstract Object getChild(int i, int j);

        public abstract View getChildView(int i, int j, View view, ViewGroup viewgroup);

        public abstract int getChildrenCount(int i);

        public abstract int getGroupCount();

        public abstract String getGroupTitle(int i);

        public abstract View getGroupTitleView(int i, View view, ViewGroup viewgroup);

        public void notifyDataSetChanged()
        {
            adapter.notifyDataSetChanged();
        }


        public GroupListAdapter()
        {
        }
    }

    private static class ItemHolder
    {

        public View child;
        public LinearLayout llItem;
        public View title;

        private ItemHolder()
        {
        }

        ItemHolder(ItemHolder itemholder)
        {
            this();
        }
    }


    public GroupListView(Context context)
    {
        super(context);
    }

    public GroupListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public GroupListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void setAdapter(final GroupListAdapter adapter)
    {
        BaseAdapter baseadapter = new BaseAdapter() {

            final GroupListView this$0;
            private final GroupListAdapter val$adapter;

            private int[] getItemIndex(int i)
            {
                int ai[] = new int[2];
                int[] _tmp = ai;
                ai[0] = -1;
                ai[1] = -2;
                int k = 0;
                int l = adapter.getGroupCount();
                int j = 0;
                do
                {
                    if (j >= l)
                    {
                        return ai;
                    }
                    int i1 = adapter.getChildrenCount(j) + 1;
                    if (k + i1 > i)
                    {
                        ai[0] = j;
                        ai[1] = i - k - 1;
                        return ai;
                    }
                    k += i1;
                    j++;
                } while (true);
            }

            public int getCount()
            {
                int j = 0;
                int i = 0;
                int k = adapter.getGroupCount();
                do
                {
                    if (i >= k)
                    {
                        return j;
                    }
                    j += adapter.getChildrenCount(i) + 1;
                    i++;
                } while (true);
            }

            public Object getItem(int i)
            {
                int ai[] = getItemIndex(i);
                i = ai[0];
                int j = ai[1];
                if (i > -1)
                {
                    if (j == -1)
                    {
                        return adapter.getGroupTitle(j);
                    }
                    if (j > -1)
                    {
                        return adapter.getChild(i, j);
                    }
                }
                return null;
            }

            public long getItemId(int i)
            {
                return (long)i;
            }

            public View getView(int i, View view, ViewGroup viewgroup)
            {
                int j;
                int ai[] = getItemIndex(i);
                i = ai[0];
                j = ai[1];
                if (view != null) goto _L2; else goto _L1
_L1:
                view = new ItemHolder(null);
                view.llItem = new LinearLayout(viewgroup.getContext());
                ((ItemHolder) (view)).llItem.setOrientation(1);
                ((ItemHolder) (view)).llItem.setTag(view);
                if (i <= -1) goto _L4; else goto _L3
_L3:
                if (j != -1) goto _L6; else goto _L5
_L5:
                view.title = adapter.getGroupTitleView(i, ((ItemHolder) (view)).title, ((ItemHolder) (view)).llItem);
                ((ItemHolder) (view)).llItem.addView(((ItemHolder) (view)).title);
_L4:
                viewgroup = ((ItemHolder) (view)).llItem;
_L8:
                return viewgroup;
_L6:
                if (j > -1)
                {
                    view.child = adapter.getChildView(i, j, ((ItemHolder) (view)).child, ((ItemHolder) (view)).llItem);
                    ((ItemHolder) (view)).llItem.addView(((ItemHolder) (view)).child);
                }
                continue; /* Loop/switch isn't completed */
_L2:
                ItemHolder itemholder;
                itemholder = (ItemHolder)view.getTag();
                viewgroup = view;
                if (i <= -1)
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (j != -1)
                {
                    break; /* Loop/switch isn't completed */
                }
                itemholder.title = adapter.getGroupTitleView(i, itemholder.title, itemholder.llItem);
                viewgroup = view;
                if (itemholder.child != null)
                {
                    itemholder.llItem.removeView(itemholder.child);
                    return view;
                }
                if (true) goto _L8; else goto _L7
_L7:
                viewgroup = view;
                if (j <= -1) goto _L8; else goto _L9
_L9:
                itemholder.child = adapter.getChildView(i, j, itemholder.child, itemholder.llItem);
                viewgroup = view;
                if (itemholder.title == null) goto _L8; else goto _L10
_L10:
                itemholder.llItem.removeView(itemholder.title);
                return view;
                if (true) goto _L4; else goto _L11
_L11:
            }

            
            {
                this$0 = GroupListView.this;
                adapter = grouplistadapter;
                super();
            }
        };
        adapter.setInnerAdapter(baseadapter);
        super.setAdapter(baseadapter);
    }
}
