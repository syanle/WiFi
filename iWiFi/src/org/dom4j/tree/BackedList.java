// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.tree:
//            AbstractBranch

public class BackedList extends ArrayList
{

    private AbstractBranch branch;
    private List branchContent;

    public BackedList(AbstractBranch abstractbranch, List list)
    {
        this(abstractbranch, list, list.size());
    }

    public BackedList(AbstractBranch abstractbranch, List list, int i)
    {
        super(i);
        branch = abstractbranch;
        branchContent = list;
    }

    public BackedList(AbstractBranch abstractbranch, List list, List list1)
    {
        super(list1);
        branch = abstractbranch;
        branchContent = list;
    }

    public void add(int i, Object obj)
    {
        int j = size();
        if (i < 0)
        {
            throw new IndexOutOfBoundsException("Index value: " + i + " is less than zero");
        }
        if (i > j)
        {
            throw new IndexOutOfBoundsException("Index value: " + i + " cannot be greater than " + "the size: " + j);
        }
        if (j == 0)
        {
            j = branchContent.size();
        } else
        if (i < j)
        {
            j = branchContent.indexOf(get(i));
        } else
        {
            j = branchContent.indexOf(get(j - 1)) + 1;
        }
        branch.addNode(j, asNode(obj));
        super.add(i, obj);
    }

    public boolean add(Object obj)
    {
        branch.addNode(asNode(obj));
        return super.add(obj);
    }

    public boolean addAll(int i, Collection collection)
    {
        ensureCapacity(size() + collection.size());
        int j = size();
        for (collection = collection.iterator(); collection.hasNext();)
        {
            add(i, collection.next());
            j--;
            i++;
        }

        return j != 0;
    }

    public boolean addAll(Collection collection)
    {
        ensureCapacity(size() + collection.size());
        int i = size();
        for (collection = collection.iterator(); collection.hasNext();)
        {
            add(collection.next());
            i--;
        }

        return i != 0;
    }

    public void addLocal(Object obj)
    {
        super.add(obj);
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
            branchContent.remove(obj);
        }

        super.clear();
    }

    public Object remove(int i)
    {
        Object obj = super.remove(i);
        if (obj != null)
        {
            branch.removeNode(asNode(obj));
        }
        return obj;
    }

    public boolean remove(Object obj)
    {
        branch.removeNode(asNode(obj));
        return super.remove(obj);
    }

    public Object set(int i, Object obj)
    {
        int k = branchContent.indexOf(get(i));
        int j = k;
        if (k < 0)
        {
            if (i == 0)
            {
                j = 0;
            } else
            {
                j = 0x7fffffff;
            }
        }
        if (j < branchContent.size())
        {
            branch.removeNode(asNode(get(i)));
            branch.addNode(j, asNode(obj));
        } else
        {
            branch.removeNode(asNode(get(i)));
            branch.addNode(asNode(obj));
        }
        branch.childAdded(asNode(obj));
        return super.set(i, obj);
    }
}
