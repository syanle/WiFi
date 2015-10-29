// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            Message

public static class <init>
{

    private String language;
    private String subject;

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag;
        if (this == obj)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (obj != null)
            {
                flag = flag1;
                if (getClass() == obj.getClass())
                {
                    obj = (<init>)obj;
                    flag = flag1;
                    if (language.equals(((language) (obj)).language))
                    {
                        return subject.equals(((subject) (obj)).subject);
                    }
                }
            }
        }
        return flag;
    }

    public String getLanguage()
    {
        return language;
    }

    public String getSubject()
    {
        return subject;
    }

    public int hashCode()
    {
        return subject.hashCode() * 31 + language.hashCode();
    }



    private (String s, String s1)
    {
        if (s == null)
        {
            throw new NullPointerException("Language cannot be null.");
        }
        if (s1 == null)
        {
            throw new NullPointerException("Subject cannot be null.");
        } else
        {
            language = s;
            subject = s1;
            return;
        }
    }

    subject(String s, String s1, subject subject1)
    {
        this(s, s1);
    }
}
