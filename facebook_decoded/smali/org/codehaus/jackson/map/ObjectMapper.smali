.class public Lorg/codehaus/jackson/map/ObjectMapper;
.super Lorg/codehaus/jackson/ObjectCodec;
.source "ObjectMapper.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# static fields
.field private static a:Lorg/codehaus/jackson/map/ClassIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field private static c:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lorg/codehaus/jackson/JsonFactory;

.field private e:Lorg/codehaus/jackson/map/type/TypeFactory;

.field private f:Lorg/codehaus/jackson/map/SerializationConfig;

.field private g:Lorg/codehaus/jackson/map/SerializerProvider;

.field private h:Lorg/codehaus/jackson/map/SerializerFactory;

.field private i:Lorg/codehaus/jackson/map/DeserializationConfig;

.field private j:Lorg/codehaus/jackson/map/DeserializerProvider;

.field private k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const-class v0, Lorg/codehaus/jackson/JsonNode;

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/SimpleType;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;

    .line 193
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->a:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;

    sput-object v0, Lorg/codehaus/jackson/map/ObjectMapper;->a:Lorg/codehaus/jackson/map/ClassIntrospector;

    .line 196
    new-instance v0, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ObjectMapper;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 201
    invoke-static {}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a()Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ObjectMapper;->c:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, v0, v0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonFactory;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-direct {p0, p1, v0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    .line 337
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/DeserializationConfig;)V

    .line 357
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/DeserializationConfig;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 372
    invoke-direct {p0}, Lorg/codehaus/jackson/ObjectCodec;-><init>()V

    .line 303
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const v2, 0x3f19999a

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 379
    if-nez p1, :cond_0

    new-instance p1, Lorg/codehaus/jackson/map/MappingJsonFactory;

    invoke-direct {p1, p0}, Lorg/codehaus/jackson/map/MappingJsonFactory;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;)V

    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->d:Lorg/codehaus/jackson/JsonFactory;

    .line 381
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->a()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->e:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 382
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/ObjectMapper;->a:Lorg/codehaus/jackson/map/ClassIntrospector;

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    sget-object v3, Lorg/codehaus/jackson/map/ObjectMapper;->c:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v6, p0, Lorg/codehaus/jackson/map/ObjectMapper;->e:Lorg/codehaus/jackson/map/type/TypeFactory;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->f:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 385
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/ObjectMapper;->a:Lorg/codehaus/jackson/map/ClassIntrospector;

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    sget-object v3, Lorg/codehaus/jackson/map/ObjectMapper;->c:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v6, p0, Lorg/codehaus/jackson/map/ObjectMapper;->e:Lorg/codehaus/jackson/map/type/TypeFactory;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->i:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 388
    if-nez p2, :cond_1

    new-instance p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    invoke-direct {p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;-><init>()V

    :cond_1
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->g:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 389
    if-nez p3, :cond_2

    new-instance p3, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;

    invoke-direct {p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;-><init>()V

    :cond_2
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectMapper;->j:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 392
    sget-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->a:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->h:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 393
    return-void
.end method

.method private a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2389
    :try_start_0
    invoke-static {p1}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 2390
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 2391
    :cond_0
    const/4 v0, 0x0

    .line 2398
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2402
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2403
    :goto_1
    return-object v0

    .line 2393
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->b()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    .line 2394
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v1

    .line 2395
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2401
    :catchall_0
    move-exception v0

    .line 2402
    :try_start_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2403
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;
    .locals 2
    .parameter

    .prologue
    .line 2429
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 2430
    if-nez v0, :cond_0

    .line 2432
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 2433
    if-nez v0, :cond_0

    .line 2437
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "No content to map to Object due to end of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2440
    :cond_0
    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2472
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->j:Lorg/codehaus/jackson/map/DeserializerProvider;

    invoke-direct {v0, p2, p1, v1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2456
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 2457
    if-eqz v0, :cond_0

    .line 2466
    :goto_0
    return-object v0

    .line 2461
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->j:Lorg/codehaus/jackson/map/DeserializerProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/DeserializerProvider;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 2462
    if-nez v0, :cond_1

    .line 2463
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not find a deserializer for type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2465
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->f:Lorg/codehaus/jackson/map/SerializationConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2341
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    .line 2343
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->g:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->h:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p3, p1, p2, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 2344
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2345
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    :cond_0
    const/4 v1, 0x0

    .line 2349
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2351
    return-void

    .line 2353
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2354
    :cond_1
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 2353
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private b()Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->i:Lorg/codehaus/jackson/map/DeserializationConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1641
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->d:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->e:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->d:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->e:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1341
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->a()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 1342
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 1343
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->g:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->h:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, v0, p1, p2, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 1346
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->f()V

    goto :goto_0
.end method
