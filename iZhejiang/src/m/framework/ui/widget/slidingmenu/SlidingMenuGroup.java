// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenuItem

final class SlidingMenuGroup
{

    int id;
    private ArrayList items;
    String text;

    SlidingMenuGroup()
    {
        items = new ArrayList();
    }

    SlidingMenuItem findItemById(int i)
    {
        if (items == null)
        {
            return null;
        }
        Iterator iterator = items.iterator();
        SlidingMenuItem slidingmenuitem;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            slidingmenuitem = (SlidingMenuItem)iterator.next();
        } while (slidingmenuitem == null || slidingmenuitem.id != i);
        return slidingmenuitem;
    }

    int getCount()
    {
        if (items == null)
        {
            return 0;
        } else
        {
            return items.size();
        }
    }

    SlidingMenuItem getItem(int i)
    {
        return (SlidingMenuItem)items.get(i);
    }

    void setItem(SlidingMenuItem slidingmenuitem)
    {
        if (slidingmenuitem == null)
        {
            return;
        }
        SlidingMenuItem slidingmenuitem1 = findItemById(slidingmenuitem.id);
        slidingmenuitem.group = id;
        if (slidingmenuitem1 == null)
        {
            items.add(slidingmenuitem);
            return;
        } else
        {
            int i = items.indexOf(slidingmenuitem1);
            items.remove(i);
            items.add(i, slidingmenuitem);
            return;
        }
    }
}
