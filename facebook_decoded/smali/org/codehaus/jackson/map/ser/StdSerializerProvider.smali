.class public Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
.super Lorg/codehaus/jackson/map/SerializerProvider;
.source "StdSerializerProvider.java"


# static fields
.field private static b:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lorg/codehaus/jackson/map/SerializerFactory;

.field private f:Lorg/codehaus/jackson/map/ser/SerializerCache;

.field private g:Lorg/codehaus/jackson/map/util/RootNameLookup;

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

.field private i:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

.field private m:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/codehaus/jackson/map/ser/FailingSerializer;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/FailingSerializer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 52
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdKeySerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdKeySerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->c:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$1;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->d:Lorg/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 122
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->d:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 128
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->c:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 134
    sget-object v0, Lorg/codehaus/jackson/map/ser/NullSerializer;->a:Lorg/codehaus/jackson/map/ser/NullSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->j:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 143
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->k:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 178
    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 179
    new-instance v0, Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    .line 181
    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->l:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 182
    new-instance v0, Lorg/codehaus/jackson/map/util/RootNameLookup;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/RootNameLookup;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->g:Lorg/codehaus/jackson/map/util/RootNameLookup;

    .line 183
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/StdSerializerProvider;Lorg/codehaus/jackson/map/SerializerFactory;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/SerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 122
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->d:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 128
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->c:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 134
    sget-object v0, Lorg/codehaus/jackson/map/ser/NullSerializer;->a:Lorg/codehaus/jackson/map/ser/NullSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->j:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 143
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->k:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 198
    :cond_0
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 200
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    .line 201
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 202
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 203
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->j:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->j:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 204
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->k:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->k:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 205
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->g:Lorg/codehaus/jackson/map/util/RootNameLookup;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->g:Lorg/codehaus/jackson/map/util/RootNameLookup;

    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->a()Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->l:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 211
    return-void
.end method

.method private a(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    instance-of v0, p1, Lorg/codehaus/jackson/map/ContextualSerializer;

    if-nez v0, :cond_0

    .line 794
    :goto_0
    return-object p1

    :cond_0
    move-object v0, p1

    .line 786
    check-cast v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-interface {v0}, Lorg/codehaus/jackson/map/ContextualSerializer;->a()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 787
    if-eq v1, p1, :cond_2

    .line 789
    instance-of v0, v1, Lorg/codehaus/jackson/map/ResolvableSerializer;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 790
    check-cast v0, Lorg/codehaus/jackson/map/ResolvableSerializer;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/map/ResolvableSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;)V

    :cond_1
    :goto_1
    move-object p1, v1

    .line 794
    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method private a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    invoke-direct {v0, p1, p0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/StdSerializerProvider;Lorg/codehaus/jackson/map/SerializerFactory;)V

    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 585
    if-nez p2, :cond_2

    .line 586
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->d()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 587
    const/4 v0, 0x0

    .line 600
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1, p2, p1, p0}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 601
    if-eqz v0, :cond_1

    .line 602
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    :cond_1
    return-void

    .line 589
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 591
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Ljava/lang/Class;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 593
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_ROOT_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    .line 594
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 596
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->g:Lorg/codehaus/jackson/map/util/RootNameLookup;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/util/RootNameLookup;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/MapperConfig;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonGenerator;->a(Lorg/codehaus/jackson/io/SerializedString;)V

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 608
    throw v0

    .line 609
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 611
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 612
    if-nez v0, :cond_3

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[no message for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    :cond_3
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-direct {v2, v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private b(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->d(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 733
    if-eqz v0, :cond_0

    .line 734
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v1, p1, v0, p0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 736
    :cond_0
    return-object v0

    .line 726
    :catch_0
    move-exception v0

    .line 730
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->d(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 756
    if-eqz v0, :cond_0

    .line 757
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v1, p1, v0, p0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 759
    :cond_0
    return-object v0

    .line 749
    :catch_0
    move-exception v0

    .line 753
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/map/SerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method private e()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->l:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 361
    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 364
    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 367
    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->b(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->l:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-object v0

    .line 440
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 441
    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 447
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p3}, Lorg/codehaus/jackson/map/SerializerFactory;->b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v2

    .line 449
    if-eqz v2, :cond_2

    .line 450
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;

    invoke-direct {v0, v2, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 452
    :goto_1
    if-eqz p2, :cond_0

    .line 453
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->l:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 401
    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 404
    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->c(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 412
    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->l:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-object v0

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 470
    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 476
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v2, p1, p3}, Lorg/codehaus/jackson/map/SerializerFactory;->b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v2

    .line 477
    if-eqz v2, :cond_2

    .line 478
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;

    invoke-direct {v0, v2, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 480
    :goto_1
    if-eqz p2, :cond_0

    .line 481
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(JLorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 541
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->a(J)V

    .line 550
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->m:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->o()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->m:Ljava/text/DateFormat;

    .line 548
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->m:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 557
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->a(J)V

    .line 567
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->m:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->o()Ljava/text/DateFormat;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->m:Ljava/text/DateFormat;

    .line 565
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->m:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    if-nez p4, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null serializerFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-direct {p0, p1, p4}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 277
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Broken serializer provider: createInstance returned instance of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; blueprint of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_1
    invoke-direct {v0, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public final b(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/map/SerializerFactory;->c(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 501
    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 505
    :cond_0
    instance-of v1, v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    if-eqz v1, :cond_1

    .line 506
    check-cast v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    .line 507
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-interface {v0}, Lorg/codehaus/jackson/map/ContextualSerializer;->a()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 509
    :cond_1
    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->k:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public final d()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->j:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method
