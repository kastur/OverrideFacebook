.class public Lorg/codehaus/jackson/map/ser/MapSerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
.source "MapSerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field private static a:Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field private b:Lorg/codehaus/jackson/map/BeanProperty;

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lorg/codehaus/jackson/type/JavaType;

.field private f:Lorg/codehaus/jackson/type/JavaType;

.field private g:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lorg/codehaus/jackson/map/TypeSerializer;

.field private j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->b()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ser/MapSerializer;->a:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/ser/MapSerializer;-><init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 124
    iput-object p8, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    .line 125
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->c:Ljava/util/HashSet;

    .line 126
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->e:Lorg/codehaus/jackson/type/JavaType;

    .line 127
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->f:Lorg/codehaus/jackson/type/JavaType;

    .line 128
    iput-boolean p4, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->d:Z

    .line 129
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->i:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 130
    iput-object p6, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 131
    iput-object p7, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 132
    invoke-static {}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a()Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 133
    return-void
.end method

.method private static a([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    .line 188
    :cond_0
    const/4 v0, 0x0

    .line 194
    :cond_1
    return-object v0

    .line 190
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 191
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 192
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 429
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 430
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 432
    :cond_0
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->a:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 439
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 440
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 442
    :cond_0
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->a:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public static a([Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/MapSerializer;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/MapSerializer;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p0}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 172
    if-nez p1, :cond_0

    .line 173
    sget-object v2, Lorg/codehaus/jackson/map/ser/MapSerializer;->a:Lorg/codehaus/jackson/type/JavaType;

    move-object v3, v2

    .line 179
    :goto_0
    if-nez p2, :cond_2

    .line 180
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v4, v0

    .line 182
    :goto_2
    new-instance v0, Lorg/codehaus/jackson/map/ser/MapSerializer;

    move-object v5, p3

    move-object v6, p5

    move-object v7, p6

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/ser/MapSerializer;-><init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->k()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 176
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v4, p2

    goto :goto_2
.end method

.method private a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 307
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->c:Ljava/util/HashSet;

    .line 308
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->i:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 309
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 311
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 314
    if-nez v7, :cond_2

    .line 315
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->c()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 322
    :goto_2
    if-nez v6, :cond_5

    .line 323
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 309
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 318
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v6, :cond_0

    .line 319
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :cond_4
    invoke-virtual {v2, v7, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 326
    :cond_5
    if-nez v4, :cond_6

    .line 327
    :try_start_0
    invoke-virtual {p4, v6, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 331
    :catch_0
    move-exception v0

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 334
    invoke-static {p3, v0, p1, v6}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_6
    :try_start_1
    invoke-virtual {p4, v6, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 338
    :cond_7
    return-void
.end method

.method private a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 224
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p4, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->b(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 232
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method private b(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 208
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 215
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 216
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method private c(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 343
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 346
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->c:Ljava/util/HashSet;

    .line 347
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 349
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    move-object v4, v3

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 353
    if-nez v9, :cond_2

    .line 354
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->c()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    invoke-virtual {v0, v3, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 364
    :goto_2
    if-nez v8, :cond_5

    .line 365
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 347
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 357
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v8, :cond_0

    .line 359
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    :cond_4
    invoke-virtual {v5, v9, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 367
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 369
    if-ne v0, v2, :cond_6

    move-object v0, v2

    move-object v2, v4

    .line 377
    :goto_3
    :try_start_0
    iget-object v10, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->i:Lorg/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v4, v8, p2, p3, v10}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    move-object v2, v0

    .line 382
    goto :goto_1

    .line 372
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v0, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    move-object v2, v4

    .line 374
    goto :goto_3

    .line 378
    :catch_0
    move-exception v4

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-static {p3, v4, p1, v8}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v0

    .line 384
    goto :goto_1

    .line 385
    :cond_7
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lorg/codehaus/jackson/map/ser/MapSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->c:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->e:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->f:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v4, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->d:Z

    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/ser/MapSerializer;-><init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 140
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v1, v0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 143
    :cond_0
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/MapSerializer;->b(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method protected final a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->i:Lorg/codehaus/jackson/map/TypeSerializer;

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/MapSerializer;->c(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 295
    :cond_0
    return-void

    .line 251
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 253
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->c:Ljava/util/HashSet;

    .line 254
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 256
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 258
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 262
    if-nez v7, :cond_4

    .line 263
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->c()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 273
    :goto_2
    if-nez v6, :cond_7

    .line 274
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 254
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 266
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v6, :cond_2

    .line 268
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    :cond_6
    invoke-virtual {v3, v7, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 276
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 277
    invoke-virtual {v2, v8}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 278
    if-nez v0, :cond_9

    .line 279
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->f:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 280
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->f:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/type/JavaType;->g(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-direct {p0, v2, v0, p3}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 284
    :goto_3
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 287
    :goto_4
    :try_start_0
    invoke-virtual {v2, v6, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 292
    goto :goto_1

    .line 282
    :cond_8
    invoke-direct {p0, v2, v8, p3}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_3

    .line 288
    :catch_0
    move-exception v2

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    invoke-static {p3, v2, p1, v6}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 294
    goto :goto_1

    :cond_9
    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_4
.end method

.method public final a(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter

    .prologue
    .line 403
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->f:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->e:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->b(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 416
    :cond_1
    return-void
.end method
