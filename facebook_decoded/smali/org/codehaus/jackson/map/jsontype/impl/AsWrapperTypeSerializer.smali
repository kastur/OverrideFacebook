.class public Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;
.super Lorg/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;
.source "AsWrapperTypeSerializer.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;-><init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p3}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 120
    return-void
.end method

.method public final b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 40
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->g(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public final b(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 101
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 102
    return-void
.end method

.method public final c(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 61
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->f(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public final c(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 111
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 112
    return-void
.end method
