.class public Lorg/codehaus/jackson/map/util/RootNameLookup;
.super Ljava/lang/Object;
.source "RootNameLookup.java"


# instance fields
.field private a:Lorg/codehaus/jackson/map/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LRUMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/io/SerializedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Class;Lorg/codehaus/jackson/map/MapperConfig;)Lorg/codehaus/jackson/io/SerializedString;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;)",
            "Lorg/codehaus/jackson/io/SerializedString;"
        }
    .end annotation

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    new-instance v2, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v2, p1}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 33
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/RootNameLookup;->a:Lorg/codehaus/jackson/map/util/LRUMap;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lorg/codehaus/jackson/map/util/LRUMap;

    const/16 v1, 0x14

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v3}, Lorg/codehaus/jackson/map/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/RootNameLookup;->a:Lorg/codehaus/jackson/map/util/LRUMap;

    .line 41
    :cond_0
    invoke-virtual {p2, p1}, Lorg/codehaus/jackson/map/MapperConfig;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 42
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/MapperConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 50
    :goto_0
    new-instance v0, Lorg/codehaus/jackson/io/SerializedString;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lorg/codehaus/jackson/map/util/RootNameLookup;->a:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/map/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_1
    monitor-exit p0

    return-object v0

    .line 36
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/RootNameLookup;->a:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/io/SerializedString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-eqz v0, :cond_0

    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
