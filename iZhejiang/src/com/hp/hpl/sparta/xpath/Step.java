// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;

import java.io.IOException;

// Referenced classes of package com.hp.hpl.sparta.xpath:
//            ThisNodeTest, TrueExpr, XPathException, SimpleStreamTokenizer, 
//            ParentNodeTest, ExprFactory, AllElementTest, AttrTest, 
//            TextTest, ElementTest, NodeTest, BooleanExpr, 
//            XPath

public class Step
{

    public static Step DOT;
    private final boolean multiLevel_;
    private final NodeTest nodeTest_;
    private final BooleanExpr predicate_;

    Step(NodeTest nodetest, BooleanExpr booleanexpr)
    {
        nodeTest_ = nodetest;
        predicate_ = booleanexpr;
        multiLevel_ = false;
    }

    Step(XPath xpath, boolean flag, SimpleStreamTokenizer simplestreamtokenizer)
        throws XPathException, IOException
    {
        multiLevel_ = flag;
        simplestreamtokenizer.ttype;
        JVM INSTR lookupswitch 4: default 56
    //                   -3: 197
    //                   42: 146
    //                   46: 70
    //                   64: 156;
           goto _L1 _L2 _L3 _L4 _L5
_L2:
        break MISSING_BLOCK_LABEL_197;
_L1:
        throw new XPathException(xpath, "at begininning of step", simplestreamtokenizer, "'.' or '*' or name");
_L4:
        if (simplestreamtokenizer.nextToken() == 46)
        {
            nodeTest_ = ParentNodeTest.INSTANCE;
        } else
        {
            simplestreamtokenizer.pushBack();
            nodeTest_ = ThisNodeTest.INSTANCE;
        }
_L6:
        if (simplestreamtokenizer.nextToken() == 91)
        {
            simplestreamtokenizer.nextToken();
            predicate_ = ExprFactory.createExpr(xpath, simplestreamtokenizer);
            if (simplestreamtokenizer.ttype != 93)
            {
                throw new XPathException(xpath, "after predicate expression", simplestreamtokenizer, "]");
            } else
            {
                simplestreamtokenizer.nextToken();
                return;
            }
        } else
        {
            predicate_ = TrueExpr.INSTANCE;
            return;
        }
_L3:
        nodeTest_ = AllElementTest.INSTANCE;
          goto _L6
_L5:
        if (simplestreamtokenizer.nextToken() != -3)
        {
            throw new XPathException(xpath, "after @ in node test", simplestreamtokenizer, "name");
        }
        nodeTest_ = new AttrTest(simplestreamtokenizer.sval);
          goto _L6
        if (simplestreamtokenizer.sval.equals("text"))
        {
            if (simplestreamtokenizer.nextToken() != 40 || simplestreamtokenizer.nextToken() != 41)
            {
                throw new XPathException(xpath, "after text", simplestreamtokenizer, "()");
            }
            nodeTest_ = TextTest.INSTANCE;
        } else
        {
            nodeTest_ = new ElementTest(simplestreamtokenizer.sval);
        }
          goto _L6
    }

    public NodeTest getNodeTest()
    {
        return nodeTest_;
    }

    public BooleanExpr getPredicate()
    {
        return predicate_;
    }

    public boolean isMultiLevel()
    {
        return multiLevel_;
    }

    public boolean isStringValue()
    {
        return nodeTest_.isStringValue();
    }

    public String toString()
    {
        return nodeTest_.toString() + predicate_.toString();
    }

    static 
    {
        DOT = new Step(ThisNodeTest.INSTANCE, TrueExpr.INSTANCE);
    }
}
