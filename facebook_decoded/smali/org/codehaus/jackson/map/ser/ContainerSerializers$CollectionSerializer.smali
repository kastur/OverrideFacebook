.class public Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer;
.source "ContainerSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer",
        "<",
        "Ljava/util/Collection",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method private constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 394
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 395
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    const-class v1, Ljava/util/Collection;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 401
    return-void
.end method

.method private a(Ljava/util/Collection;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->d:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->d:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->a(Ljava/util/Collection;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 417
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 421
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->c:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 423
    const/4 v1, 0x0

    .line 426
    :cond_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 427
    if-nez v5, :cond_3

    .line 428
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 447
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 448
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 431
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 432
    if-nez v2, :cond_4

    .line 434
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 435
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, v6}, Lorg/codehaus/jackson/type/JavaType;->g(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 439
    :goto_2
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    .line 441
    :cond_4
    if-nez v4, :cond_6

    .line 442
    invoke-virtual {v2, v5, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 449
    :catch_0
    move-exception v0

    .line 451
    invoke-static {p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 437
    :cond_5
    :try_start_1
    invoke-virtual {p0, v0, v6, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_2

    .line 444
    :cond_6
    invoke-virtual {v2, v5, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/util/Collection;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 460
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->c:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 462
    const/4 v0, 0x0

    .line 464
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 466
    if-nez v1, :cond_2

    .line 467
    :try_start_0
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 480
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    :cond_1
    return-void

    .line 469
    :cond_2
    if-nez v3, :cond_3

    .line 470
    :try_start_1
    invoke-virtual {p4, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 478
    invoke-static {p3, v1, p1, v0}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 472
    :cond_3
    :try_start_2
    invoke-virtual {p4, v1, p2, p3, v3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 4
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
    .line 405
    new-instance v0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->a:Z

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->e:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;->a(Ljava/util/Collection;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
