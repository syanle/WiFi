// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.callback;

import java.io.Serializable;

// Referenced classes of package org.apache.harmony.javax.security.auth.callback:
//            Callback

public class ChoiceCallback
    implements Callback, Serializable
{

    private static final long serialVersionUID = 0xc8d39a9743328639L;
    private String choices[];
    private int defaultChoice;
    private boolean multipleSelectionsAllowed;
    private String prompt;
    private int selections[];

    public ChoiceCallback(String s, String as[], int i, boolean flag)
    {
        setPrompt(s);
        setChoices(as);
        setDefaultChoice(i);
        multipleSelectionsAllowed = flag;
    }

    private void setChoices(String as[])
    {
        if (as == null || as.length == 0)
        {
            throw new IllegalArgumentException("auth.1C");
        }
        int i = 0;
        do
        {
            if (i >= as.length)
            {
                choices = as;
                return;
            }
            if (as[i] == null || as[i].length() == 0)
            {
                throw new IllegalArgumentException("auth.1C");
            }
            i++;
        } while (true);
    }

    private void setDefaultChoice(int i)
    {
        if (i < 0 || i >= choices.length)
        {
            throw new IllegalArgumentException("auth.1D");
        } else
        {
            defaultChoice = i;
            return;
        }
    }

    private void setPrompt(String s)
    {
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("auth.14");
        } else
        {
            prompt = s;
            return;
        }
    }

    public boolean allowMultipleSelections()
    {
        return multipleSelectionsAllowed;
    }

    public String[] getChoices()
    {
        return choices;
    }

    public int getDefaultChoice()
    {
        return defaultChoice;
    }

    public String getPrompt()
    {
        return prompt;
    }

    public int[] getSelectedIndexes()
    {
        return selections;
    }

    public void setSelectedIndex(int i)
    {
        selections = new int[1];
        selections[0] = i;
    }

    public void setSelectedIndexes(int ai[])
    {
        if (!multipleSelectionsAllowed)
        {
            throw new UnsupportedOperationException();
        } else
        {
            selections = ai;
            return;
        }
    }
}
