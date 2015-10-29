// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenuGroup, SlidingMenu, SlidingMenuItem

public abstract class MenuAdapter
{

    private ArrayList menus;

    public MenuAdapter(SlidingMenu slidingmenu)
    {
        menus = new ArrayList();
    }

    private SlidingMenuGroup findGroupById(int i)
    {
        if (menus == null)
        {
            return null;
        }
        Iterator iterator = menus.iterator();
        SlidingMenuGroup slidingmenugroup;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            slidingmenugroup = (SlidingMenuGroup)iterator.next();
        } while (slidingmenugroup == null || slidingmenugroup.id != i);
        return slidingmenugroup;
    }

    SlidingMenuGroup getGroup(int i)
    {
        return (SlidingMenuGroup)menus.get(i);
    }

    int getGroupCount()
    {
        if (menus == null)
        {
            return 0;
        } else
        {
            return menus.size();
        }
    }

    public abstract View getGroupView(int i, ViewGroup viewgroup);

    protected SlidingMenuItem getItem(int i, int j)
    {
        return ((SlidingMenuGroup)menus.get(i)).getItem(j);
    }

    public abstract View getItemView(SlidingMenuItem slidingmenuitem, ViewGroup viewgroup);

    public SlidingMenuItem getMenuItem(int i, int j)
    {
        SlidingMenuGroup slidingmenugroup = findGroupById(i);
        if (slidingmenugroup == null)
        {
            return null;
        } else
        {
            return slidingmenugroup.findItemById(j);
        }
    }

    public View getMenuTitle()
    {
        return null;
    }

    protected String getTitle(int i)
    {
        return ((SlidingMenuGroup)menus.get(i)).text;
    }

    public void notifyDataSetChanged(SlidingMenuItem slidingmenuitem)
    {
    }

    public boolean onItemTrigger(SlidingMenuItem slidingmenuitem)
    {
        return false;
    }

    public void onMenuSwitch(boolean flag)
    {
    }

    public void setGroup(int i, String s)
    {
        SlidingMenuGroup slidingmenugroup1 = findGroupById(i);
        SlidingMenuGroup slidingmenugroup = slidingmenugroup1;
        if (slidingmenugroup1 == null)
        {
            slidingmenugroup = new SlidingMenuGroup();
            slidingmenugroup.id = i;
            menus.add(slidingmenugroup);
        }
        slidingmenugroup.text = s;
    }

    void setGroup(SlidingMenuGroup slidingmenugroup)
    {
        if (slidingmenugroup == null)
        {
            return;
        }
        SlidingMenuGroup slidingmenugroup1 = findGroupById(slidingmenugroup.id);
        if (slidingmenugroup1 == null)
        {
            menus.add(slidingmenugroup);
            return;
        } else
        {
            int i = menus.indexOf(slidingmenugroup1);
            menus.remove(i);
            menus.add(i, slidingmenugroup);
            return;
        }
    }

    public void setItem(int i, SlidingMenuItem slidingmenuitem)
    {
        SlidingMenuGroup slidingmenugroup;
        if (slidingmenuitem != null)
        {
            if ((slidingmenugroup = findGroupById(i)) != null)
            {
                slidingmenugroup.setItem(slidingmenuitem);
                return;
            }
        }
    }
}
