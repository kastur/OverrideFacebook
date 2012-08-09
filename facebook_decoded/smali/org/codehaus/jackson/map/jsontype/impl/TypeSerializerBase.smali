.class public abstract Lorg/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;
.super Lorg/codehaus/jackson/map/TypeSerializer;
.source "TypeSerializerBase.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/codehaus/jackson/map/TypeSerializer;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 21
    return-void
.end method
