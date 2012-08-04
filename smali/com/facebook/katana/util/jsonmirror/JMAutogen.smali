.class public Lcom/facebook/katana/util/jsonmirror/JMAutogen;
.super Ljava/lang/Object;
.source "JMAutogen.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/JMDictDestination;",
            ">;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMDict;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private static a(Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;
    .locals 3
    .parameter

    .prologue
    .line 336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 337
    invoke-interface {p0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;->valueElementType()Ljava/lang/Class;

    move-result-object v1

    .line 339
    invoke-static {v1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->c(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v2

    .line 340
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;

    invoke-interface {p0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;->a()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;-><init>(Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/JMDictDestination;",
            ">;)",
            "Lcom/facebook/katana/util/jsonmirror/types/JMDict;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    .line 104
    if-nez v0, :cond_b

    .line 105
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v2, v1

    move v0, v4

    :goto_0
    if-ge v0, v2, :cond_c

    aget-object v5, v1, v0

    .line 110
    instance-of v5, v5, Lcom/facebook/katana/util/jsonmirror/JMAutogen$IgnoreUnexpectedJsonFields;

    if-eqz v5, :cond_4

    move v0, v3

    .line 116
    :goto_1
    new-instance v6, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;

    invoke-direct {v6, p0, v7, v0}, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;-><init>(Ljava/lang/Class;Ljava/util/Map;Z)V

    .line 117
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->b:Ljava/util/Map;

    invoke-interface {v0, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->d(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Field;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 125
    instance-of v0, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;

    if-nez v0, :cond_1

    instance-of v0, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;

    if-nez v0, :cond_1

    instance-of v0, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$EscapedObjectType;

    if-eqz v0, :cond_8

    .line 134
    :cond_1
    instance-of v0, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 135
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;

    .line 136
    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;->jsonFieldName()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 149
    :goto_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 150
    invoke-static {v5}, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v2

    .line 152
    if-nez v2, :cond_2

    .line 153
    const-class v2, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 155
    invoke-static {v5}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v2

    .line 164
    :cond_2
    instance-of v1, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$EscapedObjectType;

    if-eqz v1, :cond_3

    .line 165
    new-instance v1, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;

    new-instance v5, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v5}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    invoke-direct {v1, v2, v5}, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;-><init>(Lcom/facebook/katana/util/jsonmirror/types/JMBase;Lorg/codehaus/jackson/JsonFactory;)V

    move-object v2, v1

    .line 169
    :cond_3
    const-string v1, "json field [%s] is defined multiple times in the model"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v1, v5}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/String;Z)V

    .line 174
    new-instance v1, Lcom/facebook/katana/util/Tuple;

    invoke-direct {v1, v9, v2}, Lcom/facebook/katana/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 109
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 138
    :cond_5
    instance-of v0, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 139
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;

    .line 140
    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;->jsonFieldName()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;->type()Ljava/lang/Class;

    move-result-object v0

    move-object v10, v5

    move-object v5, v0

    move-object v0, v10

    .line 142
    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 143
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$EscapedObjectType;

    .line 145
    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$EscapedObjectType;->jsonFieldName()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_3

    .line 157
    :cond_7
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not infer type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_8
    instance-of v0, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;

    if-eqz v0, :cond_9

    .line 176
    check-cast v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;

    .line 180
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-interface {v1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;->jsonFieldName()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;)Lcom/facebook/katana/util/jsonmirror/types/JMList;

    move-result-object v1

    .line 184
    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/facebook/katana/util/Assert;->a(Z)V

    .line 185
    new-instance v5, Lcom/facebook/katana/util/Tuple;

    invoke-direct {v5, v0, v1}, Lcom/facebook/katana/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 186
    :cond_9
    instance-of v0, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;

    if-eqz v0, :cond_0

    .line 187
    check-cast v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;

    .line 191
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-interface {v1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;->jsonFieldName()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v1

    .line 195
    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/facebook/katana/util/Assert;->a(Z)V

    .line 196
    new-instance v5, Lcom/facebook/katana/util/Tuple;

    invoke-direct {v5, v0, v1}, Lcom/facebook/katana/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 200
    :cond_a
    invoke-static {p0, v7}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;Ljava/util/Map;)V

    move-object v0, v6

    .line 203
    :cond_b
    return-object v0

    :cond_c
    move v0, v4

    goto/16 :goto_1
.end method

.method private static a(Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;)Lcom/facebook/katana/util/jsonmirror/types/JMList;
    .locals 5
    .parameter

    .prologue
    .line 323
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 324
    invoke-interface {p0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 326
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 327
    invoke-static {v4}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->c(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v4

    .line 328
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/types/JMList;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/JMDictDestination;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 247
    :try_start_0
    const-string v0, "postprocessJMAutogenFields"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 253
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a:Ljava/lang/String;

    const-string v1, "Can\'t access %s in %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "postprocessJMAutogenFields"

    aput-object v3, v2, v5

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :catch_1
    move-exception v0

    sget-object v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a:Ljava/lang/String;

    const-string v1, "InvocationTargetException while invoking %s on %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "postprocessJMAutogenFields"

    aput-object v3, v2, v5

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/JMDictDestination;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-static {p0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->d(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 277
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 279
    instance-of v3, v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;

    if-eqz v3, :cond_0

    .line 280
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;

    .line 281
    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;->jsonFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_0
    instance-of v3, v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;

    if-eqz v3, :cond_1

    .line 283
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;

    .line 284
    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;->jsonFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
    :cond_1
    instance-of v3, v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;

    if-eqz v3, :cond_2

    .line 286
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;

    .line 287
    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;->jsonFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    const-string v1, "Got a class with unexpected JMAutogen annotations"

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_3
    invoke-static {p0, v1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 295
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    .line 309
    if-nez v0, :cond_0

    .line 311
    const-class v0, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-static {p0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v0

    .line 317
    :cond_0
    return-object v0

    .line 314
    :cond_1
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not infer type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$1;-><init>(Ljava/lang/Class;)V

    .line 235
    sget-object v1, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_SUPERCLASSES:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    sget-object v2, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_FIELDS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/util/ReflectionUtils;->a(Ljava/lang/Class;Lcom/facebook/katana/util/ReflectionUtils$Filter;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v0

    .line 240
    return-object v0
.end method
