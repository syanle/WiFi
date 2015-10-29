.class public Lcom/ta/util/TAInjector;
.super Ljava/lang/Object;
.source "TAInjector.java"


# static fields
.field private static instance:Lcom/ta/util/TAInjector;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/ta/util/TAInjector;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ta/util/TAInjector;->instance:Lcom/ta/util/TAInjector;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/ta/util/TAInjector;

    invoke-direct {v0}, Lcom/ta/util/TAInjector;-><init>()V

    sput-object v0, Lcom/ta/util/TAInjector;->instance:Lcom/ta/util/TAInjector;

    .line 42
    :cond_0
    sget-object v0, Lcom/ta/util/TAInjector;->instance:Lcom/ta/util/TAInjector;

    return-object v0
.end method

.method private inject(Landroid/app/Activity;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 72
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private injectResource(Landroid/app/Activity;Ljava/lang/reflect/Field;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 101
    const-class v5, Lcom/ta/annotation/TAInjectResource;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const-class v5, Lcom/ta/annotation/TAInjectResource;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/ta/annotation/TAInjectResource;

    .line 105
    .local v2, "resourceJect":Lcom/ta/annotation/TAInjectResource;
    invoke-interface {v2}, Lcom/ta/annotation/TAInjectResource;->id()I

    move-result v1

    .line 108
    .local v1, "resourceID":I
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 110
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "type":Ljava/lang/String;
    const-string v5, "string"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .end local v1    # "resourceID":I
    .end local v2    # "resourceJect":Lcom/ta/annotation/TAInjectResource;
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v1    # "resourceID":I
    .restart local v2    # "resourceJect":Lcom/ta/annotation/TAInjectResource;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_1
    const-string v5, "drawable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 117
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "layout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 121
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v5, "array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 125
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, [I

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 128
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 127
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 132
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 136
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_6
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 144
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 143
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 147
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 148
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 147
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private injectView(Landroid/app/Activity;Ljava/lang/reflect/Field;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 83
    const-class v3, Lcom/ta/annotation/TAInjectView;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const-class v3, Lcom/ta/annotation/TAInjectView;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/ta/annotation/TAInjectView;

    .line 86
    .local v2, "viewInject":Lcom/ta/annotation/TAInjectView;
    invoke-interface {v2}, Lcom/ta/annotation/TAInjectView;->id()I

    move-result v1

    .line 89
    .local v1, "viewId":I
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "viewId":I
    .end local v2    # "viewInject":Lcom/ta/annotation/TAInjectView;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v1    # "viewId":I
    .restart local v2    # "viewInject":Lcom/ta/annotation/TAInjectView;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public inJectAll(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 49
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 51
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 65
    :cond_0
    return-void

    .line 51
    :cond_1
    aget-object v0, v1, v2

    .line 53
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/ta/annotation/TAInjectView;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/ta/util/TAInjector;->injectView(Landroid/app/Activity;Ljava/lang/reflect/Field;)V

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_3
    const-class v4, Lcom/ta/annotation/TAInjectResource;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/ta/util/TAInjector;->injectResource(Landroid/app/Activity;Ljava/lang/reflect/Field;)V

    goto :goto_1

    .line 59
    :cond_4
    const-class v4, Lcom/ta/annotation/TAInject;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/ta/util/TAInjector;->inject(Landroid/app/Activity;Ljava/lang/reflect/Field;)V

    goto :goto_1
.end method

.method public inject(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 163
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 165
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 173
    :cond_0
    return-void

    .line 165
    :cond_1
    aget-object v0, v1, v2

    .line 167
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/ta/annotation/TAInject;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/ta/util/TAInjector;->inject(Landroid/app/Activity;Ljava/lang/reflect/Field;)V

    .line 165
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public injectResource(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 195
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 197
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 205
    :cond_0
    return-void

    .line 197
    :cond_1
    aget-object v0, v1, v2

    .line 199
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/ta/annotation/TAInjectResource;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    invoke-direct {p0, p1, v0}, Lcom/ta/util/TAInjector;->injectResource(Landroid/app/Activity;Ljava/lang/reflect/Field;)V

    .line 197
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public injectView(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 179
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 181
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 189
    :cond_0
    return-void

    .line 181
    :cond_1
    aget-object v0, v1, v2

    .line 183
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/ta/annotation/TAInjectView;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/ta/util/TAInjector;->injectView(Landroid/app/Activity;Ljava/lang/reflect/Field;)V

    .line 181
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
