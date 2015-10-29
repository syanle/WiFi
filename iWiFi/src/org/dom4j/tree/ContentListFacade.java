// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.tree:
//            AbstractBranch

public class ContentListFacade extends AbstractList
{

    private AbstractBranch branch;
    private List branchContent;

    public ContentListFacade(AbstractBranch abstractbranch, List list)
    {
        branch = abstractbranch;
        branchContent = list;
    }

    public void add(int i, Object obj)
    {
        branch.childAdded(asNode(obj));
        branchContent.add(i, obj);
    }

    public boolean add(Object obj)
    {
        branch.childAdded(asNode(obj));
        return branchContent.add(obj);
    }

    public boolean addAll(int i, Collection collection)
    {
        int j = branchContent.size();
        for (collection = collection.iterator(); collection.hasNext();)
        {
            add(i, collection.next());
            j--;
            i++;
        }

        return j == branchContent.size();
    }

    public boolean addAll(Collection collection)
    {
        int i = branchContent.size();
        for (collection = collection.iterator(); collection.hasNext();)
        {
            add(collection.next());
            i++;
        }

        return i == branchContent.size();
    }

    protected Node asNode(Object obj)
    {
        if (obj instanceof Node)
        {
            return (Node)obj;
        } else
        {
            throw new IllegalAddException("This list must contain instances of Node. Invalid type: " + obj);
        }
    }

    public void clear()
    {
        Object obj;
        for (Iterator iterator = iterator(); iterator.hasNext(); branch.childRemoved(asNode(obj)))
        {
            obj = iterator.next();
        }

        branchContent.clear();
    }

    public boolean contains(Object obj)
    {
        return branchContent.contains(obj);
    }

    public boolean containsAll(Collection collection)
    {
        return branchContent.containsAll(collection);
    }

    public Object get(int i)
    {
        return branchContent.get(i);
    }

    protected List getBackingList()
    {
        return branchContent;
    }

    public int indexOf(Object obj)
    {
        return branchContent.indexOf(obj);
    }

    public boolean isEmpty()
    {
        return branchContent.isEmpty();
    }

    public int lastIndexOf(Object obj)
    {
        return branchContent.lastIndexOf(obj);
    }

    public Object remove(int i)
    {
        Object obj = branchContent.remove(i);
        if (obj != null)
        {
            branch.childRemoved(asNode(obj));
        }
        return obj;
    }

    public boolean remove(Object obj)
    {
        branch.childRemoved(asNode(obj));
        return branchContent.remove(obj);
    }

    public boolean removeAll(Collection collection)
    {
        Object obj;
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); branch.childRemoved(asNode(obj)))
        {
            obj = iterator.next();
        }

        return branchContent.removeAll(collection);
    }

    public Object set(int i, Object obj)
    {
        branch.childAdded(asNode(obj));
        return branchContent.set(i, obj);
    }

    public int size()
    {
        return branchContent.size();
    }

    public Object[] toArray()
    {
        return branchContent.toArray();
    }

    public Object[] toArray(Object aobj[])
    {
        return branchContent.toArray(aobj);
    }
}
