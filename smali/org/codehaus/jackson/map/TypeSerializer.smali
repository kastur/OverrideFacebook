.class public abstract Lorg/codehaus/jackson/map/TypeSerializer;
.super Ljava/lang/Object;
.source "TypeSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
.end method

.method public a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
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
    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 134
    return-void
.end method

.method public abstract a(Lorg/codehaus/jackson/JsonGenerator;)V
.end method

.method public abstract b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
.end method

.method public abstract b(Lorg/codehaus/jackson/JsonGenerator;)V
.end method

.method public abstract c(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
.end method

.method public abstract c(Lorg/codehaus/jackson/JsonGenerator;)V
.end method
