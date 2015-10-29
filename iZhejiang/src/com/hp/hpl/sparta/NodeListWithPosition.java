// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

// Referenced classes of package com.hp.hpl.sparta:
//            Node

class NodeListWithPosition
{

    private static final Integer EIGHT = new Integer(8);
    private static final Integer FIVE = new Integer(5);
    private static final Integer FOUR = new Integer(4);
    private static final Integer NINE = new Integer(9);
    private static final Integer ONE = new Integer(1);
    private static final Integer SEVEN = new Integer(7);
    private static final Integer SIX = new Integer(6);
    private static final Integer TEN = new Integer(10);
    private static final Integer THREE = new Integer(3);
    private static final Integer TWO = new Integer(2);
    private Hashtable positions_;
    private final Vector vector_ = new Vector();

    NodeListWithPosition()
    {
        positions_ = new Hashtable();
    }

    private static Integer identity(Node node)
    {
        return new Integer(System.identityHashCode(node));
    }

    void add(Node node, int i)
    {
        vector_.addElement(node);
        i;
        JVM INSTR tableswitch 1 10: default 64
    //                   1 87
    //                   2 94
    //                   3 101
    //                   4 108
    //                   5 115
    //                   6 122
    //                   7 129
    //                   8 136
    //                   9 143
    //                   10 150;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
        Integer integer = new Integer(i);
_L13:
        positions_.put(identity(node), integer);
        return;
_L2:
        integer = ONE;
        continue; /* Loop/switch isn't completed */
_L3:
        integer = TWO;
        continue; /* Loop/switch isn't completed */
_L4:
        integer = THREE;
        continue; /* Loop/switch isn't completed */
_L5:
        integer = FOUR;
        continue; /* Loop/switch isn't completed */
_L6:
        integer = FIVE;
        continue; /* Loop/switch isn't completed */
_L7:
        integer = SIX;
        continue; /* Loop/switch isn't completed */
_L8:
        integer = SEVEN;
        continue; /* Loop/switch isn't completed */
_L9:
        integer = EIGHT;
        continue; /* Loop/switch isn't completed */
_L10:
        integer = NINE;
        continue; /* Loop/switch isn't completed */
_L11:
        integer = TEN;
        if (true) goto _L13; else goto _L12
_L12:
    }

    void add(String s)
    {
        vector_.addElement(s);
    }

    Enumeration iterator()
    {
        return vector_.elements();
    }

    int position(Node node)
    {
        return ((Integer)positions_.get(identity(node))).intValue();
    }

    void removeAllElements()
    {
        vector_.removeAllElements();
        positions_.clear();
    }

    public String toString()
    {
        Object obj;
        Enumeration enumeration;
        obj = new StringBuffer("{ ");
        enumeration = vector_.elements();
_L2:
        Object obj1;
        do
        {
            if (!enumeration.hasMoreElements())
            {
                ((StringBuffer) (obj)).append("}");
                return ((StringBuffer) (obj)).toString();
            }
            obj1 = enumeration.nextElement();
            if (!(obj1 instanceof String))
            {
                break MISSING_BLOCK_LABEL_91;
            }
            ((StringBuffer) (obj)).append("String(" + obj1 + ") ");
        } while (true);
        try
        {
            obj1 = (Node)obj1;
            ((StringBuffer) (obj)).append("Node(" + ((Node) (obj1)).toXml() + ")[" + positions_.get(identity(((Node) (obj1)))) + "] ");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return ((Throwable) (obj)).toString();
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

}
