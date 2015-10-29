// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.util.io.pem;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import junit.textui.TestRunner;

// Referenced classes of package org.bouncycastle.util.io.pem:
//            PemWriter, PemObject, PemHeader

public class AllTests extends TestCase
{

    public AllTests()
    {
    }

    private void lengthTest(String s, List list, byte abyte0[])
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        PemWriter pemwriter = new PemWriter(new OutputStreamWriter(bytearrayoutputstream));
        s = new PemObject(s, list, abyte0);
        pemwriter.writeObject(s);
        pemwriter.close();
        assertEquals(bytearrayoutputstream.toByteArray().length, pemwriter.getOutputSize(s));
    }

    public static void main(String args[])
    {
        TestRunner.run(suite());
    }

    public static Test suite()
    {
        TestSuite testsuite = new TestSuite("util tests");
        testsuite.addTestSuite(org/bouncycastle/util/io/pem/AllTests);
        return testsuite;
    }

    public void testPemLength()
        throws IOException
    {
        for (int i = 1; i != 60; i++)
        {
            lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[i]);
        }

        lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[100]);
        lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[101]);
        lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[102]);
        lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[103]);
        lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[1000]);
        lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[1001]);
        lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[1002]);
        lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[1003]);
        ArrayList arraylist = new ArrayList();
        arraylist.add(new PemHeader("Proc-Type", "4,ENCRYPTED"));
        arraylist.add(new PemHeader("DEK-Info", "DES3,0001020304050607"));
        lengthTest("RSA PRIVATE KEY", arraylist, new byte[103]);
    }
}
