// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.io.PrintStream;
import java.io.PrintWriter;

public class DocumentException extends Exception
{

    private Throwable nestedException;

    public DocumentException()
    {
        super("Error occurred in DOM4J application.");
    }

    public DocumentException(String s)
    {
        super(s);
    }

    public DocumentException(String s, Throwable throwable)
    {
        super(s);
        nestedException = throwable;
    }

    public DocumentException(Throwable throwable)
    {
        super(throwable.getMessage());
        nestedException = throwable;
    }

    public String getMessage()
    {
        if (nestedException != null)
        {
            return super.getMessage() + " Nested exception: " + nestedException.getMessage();
        } else
        {
            return super.getMessage();
        }
    }

    public Throwable getNestedException()
    {
        return nestedException;
    }

    public void printStackTrace()
    {
        super.printStackTrace();
        if (nestedException != null)
        {
            System.err.print("Nested exception: ");
            nestedException.printStackTrace();
        }
    }

    public void printStackTrace(PrintStream printstream)
    {
        super.printStackTrace(printstream);
        if (nestedException != null)
        {
            printstream.println("Nested exception: ");
            nestedException.printStackTrace(printstream);
        }
    }

    public void printStackTrace(PrintWriter printwriter)
    {
        super.printStackTrace(printwriter);
        if (nestedException != null)
        {
            printwriter.println("Nested exception: ");
            nestedException.printStackTrace(printwriter);
        }
    }
}
