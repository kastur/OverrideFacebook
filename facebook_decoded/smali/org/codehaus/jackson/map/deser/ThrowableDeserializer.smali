.class public Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;
.super Lorg/codehaus/jackson/map/deser/BeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .line 126
    :cond_0
    :goto_0
    return-object v4

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not instantiate abstract type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 53
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    if-nez v0, :cond_4

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not deserialize Throwable of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without having either single-String-arg constructor; or explicit @JsonCreator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v5

    move-object v2, v3

    move-object v4, v3

    .line 62
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v6, :cond_d

    .line 63
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v6

    .line 65
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 67
    if-eqz v6, :cond_7

    .line 68
    if-eqz v4, :cond_5

    .line 69
    invoke-virtual {v6, p1, p2, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    move v0, v1

    move-object v1, v2

    move-object v2, v4

    .line 62
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-object v4, v2

    move-object v2, v1

    move v1, v0

    goto :goto_1

    .line 73
    :cond_5
    if-nez v2, :cond_6

    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->b()I

    move-result v0

    .line 75
    add-int/2addr v0, v0

    new-array v2, v0, [Ljava/lang/Object;

    .line 77
    :cond_6
    add-int/lit8 v7, v1, 0x1

    aput-object v6, v2, v1

    .line 78
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v7

    move-object v1, v2

    move-object v2, v4

    .line 79
    goto :goto_2

    .line 83
    :cond_7
    const-string v6, "message"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 84
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 86
    if-eqz v2, :cond_c

    move v6, v5

    .line 87
    :goto_3
    if-ge v6, v1, :cond_8

    .line 88
    aget-object v0, v2, v6

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 89
    add-int/lit8 v7, v6, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v0, v4, v7}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_3

    :cond_8
    move v0, v1

    move-object v2, v4

    move-object v1, v3

    .line 91
    goto :goto_2

    .line 98
    :cond_9
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->g:Ljava/util/HashSet;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->g:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 99
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    move v0, v1

    move-object v1, v2

    move-object v2, v4

    .line 100
    goto :goto_2

    .line 102
    :cond_a
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v6, :cond_b

    .line 103
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v6, p1, p2, v4, v0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    move-object v2, v4

    .line 104
    goto :goto_2

    .line 107
    :cond_b
    invoke-virtual {p0, p1, p2, v4, v0}, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    move v0, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_2

    .line 110
    :cond_d
    if-nez v4, :cond_0

    .line 117
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 119
    if-eqz v2, :cond_0

    .line 120
    :goto_4
    if-ge v5, v1, :cond_0

    .line 121
    aget-object v0, v2, v5

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 122
    add-int/lit8 v3, v5, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v0, v4, v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v5, v5, 0x2

    goto :goto_4
.end method
