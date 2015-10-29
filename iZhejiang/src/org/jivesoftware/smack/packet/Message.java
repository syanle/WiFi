// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack.packet:
//            Packet, XMPPError

public class Message extends Packet
{
    public static class Body
    {

        private String language;
        private String message;

        public boolean equals(Object obj)
        {
            boolean flag1 = false;
            if (this != obj) goto _L2; else goto _L1
_L1:
            boolean flag = true;
_L4:
            return flag;
_L2:
            flag = flag1;
            if (obj == null) goto _L4; else goto _L3
_L3:
            flag = flag1;
            if (getClass() != obj.getClass()) goto _L4; else goto _L5
_L5:
            obj = (Body)obj;
            if (language == null) goto _L7; else goto _L6
_L6:
            flag = flag1;
            if (!language.equals(((Body) (obj)).language)) goto _L4; else goto _L8
_L8:
            return message.equals(((Body) (obj)).message);
_L7:
            if (((Body) (obj)).language != null)
            {
                return false;
            }
            if (true) goto _L8; else goto _L9
_L9:
        }

        public String getLanguage()
        {
            return language;
        }

        public String getMessage()
        {
            return message;
        }

        public int hashCode()
        {
            int j = message.hashCode();
            int i;
            if (language != null)
            {
                i = language.hashCode();
            } else
            {
                i = 0;
            }
            return j * 31 + i;
        }



        private Body(String s, String s1)
        {
            if (s == null)
            {
                throw new NullPointerException("Language cannot be null.");
            }
            if (s1 == null)
            {
                throw new NullPointerException("Message cannot be null.");
            } else
            {
                language = s;
                message = s1;
                return;
            }
        }

        Body(String s, String s1, Body body)
        {
            this(s, s1);
        }
    }

    public static class Subject
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
                        obj = (Subject)obj;
                        flag = flag1;
                        if (language.equals(((Subject) (obj)).language))
                        {
                            return subject.equals(((Subject) (obj)).subject);
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



        private Subject(String s, String s1)
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

        Subject(String s, String s1, Subject subject1)
        {
            this(s, s1);
        }
    }

    public static final class Type extends Enum
    {

        private static final Type ENUM$VALUES[];
        public static final Type chat;
        public static final Type error;
        public static final Type groupchat;
        public static final Type headline;
        public static final Type normal;

        public static Type fromString(String s)
        {
            try
            {
                s = valueOf(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return normal;
            }
            return s;
        }

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(org/jivesoftware/smack/packet/Message$Type, s);
        }

        public static Type[] values()
        {
            Type atype[] = ENUM$VALUES;
            int i = atype.length;
            Type atype1[] = new Type[i];
            System.arraycopy(atype, 0, atype1, 0, i);
            return atype1;
        }

        static 
        {
            normal = new Type("normal", 0);
            chat = new Type("chat", 1);
            groupchat = new Type("groupchat", 2);
            headline = new Type("headline", 3);
            error = new Type("error", 4);
            ENUM$VALUES = (new Type[] {
                normal, chat, groupchat, headline, error
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    private final Set bodies;
    private String language;
    private final Set subjects;
    private String thread;
    private Type type;

    public Message()
    {
        type = Type.normal;
        thread = null;
        subjects = new HashSet();
        bodies = new HashSet();
    }

    public Message(String s)
    {
        type = Type.normal;
        thread = null;
        subjects = new HashSet();
        bodies = new HashSet();
        setTo(s);
    }

    public Message(String s, Type type1)
    {
        type = Type.normal;
        thread = null;
        subjects = new HashSet();
        bodies = new HashSet();
        setTo(s);
        type = type1;
    }

    private String determineLanguage(String s)
    {
        String s1 = s;
        if ("".equals(s))
        {
            s1 = null;
        }
        if (s1 == null && language != null)
        {
            s = language;
        } else
        {
            s = s1;
            if (s1 == null)
            {
                return getDefaultLanguage();
            }
        }
        return s;
    }

    private Body getMessageBody(String s)
    {
        s = determineLanguage(s);
        Iterator iterator = bodies.iterator();
        Body body;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            body = (Body)iterator.next();
        } while (!s.equals(body.language));
        return body;
    }

    private Subject getMessageSubject(String s)
    {
        s = determineLanguage(s);
        Iterator iterator = subjects.iterator();
        Subject subject;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            subject = (Subject)iterator.next();
        } while (!s.equals(subject.language));
        return subject;
    }

    public Body addBody(String s, String s1)
    {
        s = new Body(determineLanguage(s), s1, null);
        bodies.add(s);
        return s;
    }

    public Subject addSubject(String s, String s1)
    {
        s = new Subject(determineLanguage(s), s1, null);
        subjects.add(s);
        return s;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (Message)obj;
            if (!super.equals(obj))
            {
                return false;
            }
            if (bodies.size() != ((Message) (obj)).bodies.size() || !bodies.containsAll(((Message) (obj)).bodies))
            {
                return false;
            }
            if (language == null ? ((Message) (obj)).language != null : !language.equals(((Message) (obj)).language))
            {
                return false;
            }
            if (subjects.size() != ((Message) (obj)).subjects.size() || !subjects.containsAll(((Message) (obj)).subjects))
            {
                return false;
            }
            if (thread == null ? ((Message) (obj)).thread != null : !thread.equals(((Message) (obj)).thread))
            {
                return false;
            }
            if (type != ((Message) (obj)).type)
            {
                return false;
            }
        }
        return true;
    }

    public Collection getBodies()
    {
        return Collections.unmodifiableCollection(bodies);
    }

    public String getBody()
    {
        return getBody(null);
    }

    public String getBody(String s)
    {
        s = getMessageBody(s);
        if (s == null)
        {
            return null;
        } else
        {
            return ((Body) (s)).message;
        }
    }

    public Collection getBodyLanguages()
    {
        Body body = getMessageBody(null);
        ArrayList arraylist = new ArrayList();
        Iterator iterator = bodies.iterator();
        do
        {
            Body body1;
            do
            {
                if (!iterator.hasNext())
                {
                    return Collections.unmodifiableCollection(arraylist);
                }
                body1 = (Body)iterator.next();
            } while (body1.equals(body));
            arraylist.add(body1.language);
        } while (true);
    }

    public String getLanguage()
    {
        return language;
    }

    public String getSubject()
    {
        return getSubject(null);
    }

    public String getSubject(String s)
    {
        s = getMessageSubject(s);
        if (s == null)
        {
            return null;
        } else
        {
            return ((Subject) (s)).subject;
        }
    }

    public Collection getSubjectLanguages()
    {
        Subject subject = getMessageSubject(null);
        ArrayList arraylist = new ArrayList();
        Iterator iterator = subjects.iterator();
        do
        {
            Subject subject1;
            do
            {
                if (!iterator.hasNext())
                {
                    return Collections.unmodifiableCollection(arraylist);
                }
                subject1 = (Subject)iterator.next();
            } while (subject1.equals(subject));
            arraylist.add(subject1.language);
        } while (true);
    }

    public Collection getSubjects()
    {
        return Collections.unmodifiableCollection(subjects);
    }

    public String getThread()
    {
        return thread;
    }

    public Type getType()
    {
        return type;
    }

    public int hashCode()
    {
        int k = 0;
        int i;
        int j;
        int l;
        if (type != null)
        {
            i = type.hashCode();
        } else
        {
            i = 0;
        }
        l = subjects.hashCode();
        if (thread != null)
        {
            j = thread.hashCode();
        } else
        {
            j = 0;
        }
        if (language != null)
        {
            k = language.hashCode();
        }
        return (((i * 31 + l) * 31 + j) * 31 + k) * 31 + bodies.hashCode();
    }

    public boolean removeBody(String s)
    {
        s = determineLanguage(s);
        Iterator iterator = bodies.iterator();
        Body body;
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
            body = (Body)iterator.next();
        } while (!s.equals(body.language));
        return bodies.remove(body);
    }

    public boolean removeBody(Body body)
    {
        return bodies.remove(body);
    }

    public boolean removeSubject(String s)
    {
        s = determineLanguage(s);
        Iterator iterator = subjects.iterator();
        Subject subject;
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
            subject = (Subject)iterator.next();
        } while (!s.equals(subject.language));
        return subjects.remove(subject);
    }

    public boolean removeSubject(Subject subject)
    {
        return subjects.remove(subject);
    }

    public void setBody(String s)
    {
        if (s == null)
        {
            removeBody("");
            return;
        } else
        {
            addBody(null, s);
            return;
        }
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setSubject(String s)
    {
        if (s == null)
        {
            removeSubject("");
            return;
        } else
        {
            addSubject(null, s);
            return;
        }
    }

    public void setThread(String s)
    {
        thread = s;
    }

    public void setType(Type type1)
    {
        if (type1 == null)
        {
            throw new IllegalArgumentException("Type cannot be null.");
        } else
        {
            type = type1;
            return;
        }
    }

    public String toXML()
    {
        StringBuilder stringbuilder;
        Object obj;
        stringbuilder = new StringBuilder();
        stringbuilder.append("<message");
        if (getXmlns() != null)
        {
            stringbuilder.append(" xmlns=\"").append(getXmlns()).append("\"");
        }
        if (language != null)
        {
            stringbuilder.append(" xml:lang=\"").append(getLanguage()).append("\"");
        }
        if (getPacketID() != null)
        {
            stringbuilder.append(" id=\"").append(getPacketID()).append("\"");
        }
        if (getTo() != null)
        {
            stringbuilder.append(" to=\"").append(StringUtils.escapeForXML(getTo())).append("\"");
        }
        if (getFrom() != null)
        {
            stringbuilder.append(" from=\"").append(StringUtils.escapeForXML(getFrom())).append("\"");
        }
        if (type != Type.normal)
        {
            stringbuilder.append(" type=\"").append(type).append("\"");
        }
        stringbuilder.append(">");
        obj = getMessageSubject(null);
        if (obj != null)
        {
            stringbuilder.append("<subject>").append(StringUtils.escapeForXML(((Subject) (obj)).getSubject()));
            stringbuilder.append("</subject>");
        }
        obj = getSubjects().iterator();
_L3:
        if (((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
        Object obj1;
        obj = getMessageBody(null);
        if (obj != null)
        {
            stringbuilder.append("<body>").append(StringUtils.escapeForXML(((Body) (obj)).message)).append("</body>");
        }
        obj1 = getBodies().iterator();
_L4:
        if (!((Iterator) (obj1)).hasNext())
        {
            if (thread != null)
            {
                stringbuilder.append("<thread>").append(thread).append("</thread>");
            }
            if (type == Type.error)
            {
                obj = getError();
                if (obj != null)
                {
                    stringbuilder.append(((XMPPError) (obj)).toXML());
                }
            }
            stringbuilder.append(getExtensionsXML());
            stringbuilder.append("</message>");
            return stringbuilder.toString();
        }
        break MISSING_BLOCK_LABEL_434;
_L2:
        obj1 = (Subject)((Iterator) (obj)).next();
        stringbuilder.append((new StringBuilder("<subject xml:lang=\"")).append(((Subject) (obj1)).getLanguage()).append("\">").toString());
        stringbuilder.append(StringUtils.escapeForXML(((Subject) (obj1)).getSubject()));
        stringbuilder.append("</subject>");
          goto _L3
        Body body = (Body)((Iterator) (obj1)).next();
        if (!body.equals(obj))
        {
            stringbuilder.append("<body xml:lang=\"").append(body.getLanguage()).append("\">");
            stringbuilder.append(StringUtils.escapeForXML(body.getMessage()));
            stringbuilder.append("</body>");
        }
          goto _L4
    }
}
