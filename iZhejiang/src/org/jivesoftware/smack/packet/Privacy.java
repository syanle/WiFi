// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package org.jivesoftware.smack.packet:
//            IQ, PrivacyItem

public class Privacy extends IQ
{

    private String activeName;
    private boolean declineActiveList;
    private boolean declineDefaultList;
    private String defaultName;
    private Map itemLists;

    public Privacy()
    {
        declineActiveList = false;
        declineDefaultList = false;
        itemLists = new HashMap();
    }

    public boolean changeDefaultList(String s)
    {
        if (getItemLists().containsKey(s))
        {
            setDefaultName(s);
            return true;
        } else
        {
            return false;
        }
    }

    public void deleteList(String s)
    {
        getItemLists().remove(s);
    }

    public void deletePrivacyList(String s)
    {
        getItemLists().remove(s);
        if (getDefaultName() != null && s.equals(getDefaultName()))
        {
            setDefaultName(null);
        }
    }

    public String getActiveName()
    {
        return activeName;
    }

    public List getActivePrivacyList()
    {
        if (getActiveName() == null)
        {
            return null;
        } else
        {
            return (List)getItemLists().get(getActiveName());
        }
    }

    public String getChildElementXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<query xmlns=\"jabber:iq:privacy\">");
        Iterator iterator;
        if (isDeclineActiveList())
        {
            stringbuilder.append("<active/>");
        } else
        if (getActiveName() != null)
        {
            stringbuilder.append("<active name=\"").append(getActiveName()).append("\"/>");
        }
        if (isDeclineDefaultList())
        {
            stringbuilder.append("<default/>");
        } else
        if (getDefaultName() != null)
        {
            stringbuilder.append("<default name=\"").append(getDefaultName()).append("\"/>");
        }
        iterator = getItemLists().entrySet().iterator();
        do
        {
label0:
            {
                if (!iterator.hasNext())
                {
                    stringbuilder.append(getExtensionsXML());
                    stringbuilder.append("</query>");
                    return stringbuilder.toString();
                }
                Object obj1 = (java.util.Map.Entry)iterator.next();
                Object obj = (String)((java.util.Map.Entry) (obj1)).getKey();
                obj1 = (List)((java.util.Map.Entry) (obj1)).getValue();
                if (((List) (obj1)).isEmpty())
                {
                    stringbuilder.append("<list name=\"").append(((String) (obj))).append("\"/>");
                } else
                {
                    stringbuilder.append("<list name=\"").append(((String) (obj))).append("\">");
                }
                for (obj = ((List) (obj1)).iterator(); ((Iterator) (obj)).hasNext(); stringbuilder.append(((PrivacyItem)((Iterator) (obj)).next()).toXML()))
                {
                    break label0;
                }

                if (!((List) (obj1)).isEmpty())
                {
                    stringbuilder.append("</list>");
                }
            }
        } while (true);
    }

    public String getDefaultName()
    {
        return defaultName;
    }

    public List getDefaultPrivacyList()
    {
        if (getDefaultName() == null)
        {
            return null;
        } else
        {
            return (List)getItemLists().get(getDefaultName());
        }
    }

    public PrivacyItem getItem(String s, int i)
    {
        Iterator iterator = getPrivacyList(s).iterator();
        s = null;
        do
        {
            PrivacyItem privacyitem;
            do
            {
                if (s != null || !iterator.hasNext())
                {
                    return s;
                }
                privacyitem = (PrivacyItem)iterator.next();
            } while (privacyitem.getOrder() != i);
            s = privacyitem;
        } while (true);
    }

    public Map getItemLists()
    {
        return itemLists;
    }

    public List getPrivacyList(String s)
    {
        return (List)getItemLists().get(s);
    }

    public Set getPrivacyListNames()
    {
        return itemLists.keySet();
    }

    public boolean isDeclineActiveList()
    {
        return declineActiveList;
    }

    public boolean isDeclineDefaultList()
    {
        return declineDefaultList;
    }

    public void setActiveName(String s)
    {
        activeName = s;
    }

    public List setActivePrivacyList()
    {
        setActiveName(getDefaultName());
        return (List)getItemLists().get(getActiveName());
    }

    public void setDeclineActiveList(boolean flag)
    {
        declineActiveList = flag;
    }

    public void setDeclineDefaultList(boolean flag)
    {
        declineDefaultList = flag;
    }

    public void setDefaultName(String s)
    {
        defaultName = s;
    }

    public List setPrivacyList(String s, List list)
    {
        getItemLists().put(s, list);
        return list;
    }
}
