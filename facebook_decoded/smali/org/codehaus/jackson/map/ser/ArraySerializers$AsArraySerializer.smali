.class public abstract Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
.source "ArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/TypeSerializer;

.field protected final b:Lorg/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;-><init>(Ljava/lang/Class;)V

    .line 47
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;->a:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 48
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;->b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 57
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->c(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;->b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 67
    invoke-virtual {p4, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->c(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 68
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation
.end method
