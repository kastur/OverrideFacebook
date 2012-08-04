.class public abstract Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.super Lcom/facebook/katana/util/jsonmirror/JMDictDestination;
.source "JMCachingDictDestination.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "JMCachingDictDestination"

.field protected static jf:Lorg/codehaus/jackson/JsonFactory;

.field protected static final reflectionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->reflectionCache:Ljava/util/Map;

    .line 415
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->jf:Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 351
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 355
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    invoke-static {p1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;

    invoke-interface {v1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;->jsonFieldName()Ljava/lang/String;

    move-result-object v6

    .line 367
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;

    .line 374
    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;->type()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0

    .line 358
    :catch_1
    move-exception v0

    move-object v0, v3

    .line 404
    :cond_1
    :goto_1
    return-object v0

    .line 384
    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v0

    .line 386
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;

    .line 388
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_2 .. :try_end_2} :catch_3

    .line 391
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 392
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 395
    :catch_2
    move-exception v1

    goto :goto_2

    .line 401
    :catch_3
    move-exception v0

    move-object v0, v3

    goto :goto_1

    .line 402
    :catch_4
    move-exception v0

    move-object v0, v3

    .line 404
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-static {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 412
    invoke-static {v0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 102
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->reflectionCache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    move-object v3, v0

    move-object v0, v1

    .line 110
    :goto_0
    if-nez v0, :cond_1

    move-object v1, v2

    .line 116
    :goto_1
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 119
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 120
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 106
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    sget-object v3, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->reflectionCache:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    move-object v0, v1

    goto :goto_0

    .line 133
    :cond_1
    if-nez v0, :cond_2

    .line 134
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cannot find field "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    return-object v0

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private static a(Ljava/lang/Class;)Ljava/util/Map;
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
            "Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$1;

    invoke-direct {v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$1;-><init>()V

    .line 72
    sget-object v1, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_SUPERCLASSES:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    sget-object v2, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_FIELDS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/util/ReflectionUtils;->a(Ljava/lang/Class;Lcom/facebook/katana/util/ReflectionUtils$Filter;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 419
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 422
    :try_start_0
    sget-object v2, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->jf:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    :goto_0
    return-object v0

    .line 425
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 427
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 186
    const/4 v0, 0x0

    .line 187
    invoke-static {p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 192
    :try_start_0
    const-class v4, Ljava/lang/Double;

    if-eq v3, v4, :cond_0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    .line 193
    :cond_0
    invoke-virtual {v2, p0, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 204
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 205
    const-string v0, "JMCachingDictDestination"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to write to field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    return-void

    .line 195
    :cond_3
    :try_start_1
    const-class v4, Ljava/lang/Float;

    if-eq v3, v4, :cond_4

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    .line 196
    :cond_4
    double-to-float v3, p2

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 197
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-static {p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 167
    :try_start_0
    const-class v4, Ljava/lang/Long;

    if-eq v3, v4, :cond_0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    .line 168
    :cond_0
    invoke-virtual {v2, p0, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 179
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 180
    const-string v0, "JMCachingDictDestination"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to write to field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_2
    return-void

    .line 170
    :cond_3
    :try_start_1
    const-class v4, Ljava/lang/Integer;

    if-eq v3, v4, :cond_4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    .line 171
    :cond_4
    long-to-int v3, p2

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 172
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/katana/util/jsonmirror/JMDictDestination;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    invoke-static {p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v0, 0x1

    .line 242
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 243
    const-string v0, "JMCachingDictDestination"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to write to field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    invoke-static {p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v0, 0x1

    .line 154
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 155
    const-string v0, "JMCachingDictDestination"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to write to field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 255
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 259
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMDict;->a()Ljava/util/Map;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/Tuple;
    :try_end_0
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 267
    :try_start_1
    iget-object v0, v0, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/util/Collection;

    if-eqz v5, :cond_4

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 270
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 271
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 272
    instance-of v7, v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;

    if-eqz v7, :cond_2

    .line 273
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;

    invoke-virtual {v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->n()Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_1

    .line 275
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 299
    :catch_1
    move-exception v0

    .line 332
    :goto_2
    return-object v2

    .line 281
    :cond_3
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 301
    :catch_2
    move-exception v0

    goto :goto_2

    .line 282
    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_5

    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 284
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 285
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 286
    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;

    if-eqz v5, :cond_6

    .line 287
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;

    invoke-virtual {v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->n()Ljava/lang/String;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 293
    :cond_6
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 304
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 308
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;

    invoke-interface {v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;->jsonFieldName()Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 310
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 312
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 314
    if-eqz v0, :cond_8

    .line 316
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->n()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 319
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 328
    :cond_9
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 329
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v2, v0

    .line 332
    goto/16 :goto_2

    .line 323
    :catch_4
    move-exception v0

    goto :goto_3

    :cond_a
    move-object v0, v2

    goto :goto_4
.end method
