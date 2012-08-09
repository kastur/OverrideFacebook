.class public Lorg/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;
.super Lorg/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
.source "SimpleBeanPropertyFilter.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->a:Ljava/util/Set;

    invoke-virtual {p4}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p4, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 107
    :cond_0
    return-void
.end method
