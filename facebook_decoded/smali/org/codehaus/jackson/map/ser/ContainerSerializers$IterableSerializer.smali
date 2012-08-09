.class public Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer;
.source "ContainerSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer",
        "<",
        "Ljava/lang/Iterable",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    const-class v1, Ljava/lang/Iterable;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 541
    return-void
.end method

.method private a(Ljava/lang/Iterable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 552
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 553
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;->c:Lorg/codehaus/jackson/map/TypeSerializer;

    move-object v1, v0

    .line 559
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 560
    if-nez v5, :cond_2

    .line 561
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 579
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    :cond_1
    return-void

    .line 564
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 566
    if-ne v2, v0, :cond_3

    move-object v2, v1

    .line 573
    :goto_1
    if-nez v4, :cond_4

    .line 574
    invoke-virtual {v2, v5, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 569
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;->e:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v2, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    move-object v0, v2

    move-object v2, v1

    .line 571
    goto :goto_1

    .line 576
    :cond_4
    invoke-virtual {v2, v5, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

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
    .line 545
    new-instance v0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;->a:Z

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;->e:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    check-cast p1, Ljava/lang/Iterable;

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;->a(Ljava/lang/Iterable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
