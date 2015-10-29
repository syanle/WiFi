// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.util;

import junit.framework.Test;
import junit.framework.TestSuite;
import junit.textui.TestRunner;

// Referenced classes of package org.bouncycastle.util:
//            IPTest

public class AllTests
{

    public AllTests()
    {
    }

    public static void main(String args[])
    {
        TestRunner.run(suite());
    }

    public static Test suite()
    {
        TestSuite testsuite = new TestSuite("util tests");
        testsuite.addTestSuite(org/bouncycastle/util/IPTest);
        return testsuite;
    }
}
