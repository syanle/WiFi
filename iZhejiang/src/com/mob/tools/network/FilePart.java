// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

// Referenced classes of package com.mob.tools.network:
//            HTTPPart

public class FilePart extends HTTPPart
{

    private File file;

    public FilePart()
    {
    }

    protected InputStream getInputStream()
        throws Throwable
    {
        return new FileInputStream(file);
    }

    protected long length()
        throws Throwable
    {
        return file.length();
    }

    public void setFile(File file1)
    {
        file = file1;
    }

    public void setFile(String s)
    {
        file = new File(s);
    }

    public String toString()
    {
        return file.toString();
    }
}
