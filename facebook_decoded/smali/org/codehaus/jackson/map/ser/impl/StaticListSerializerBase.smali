.class public abstract Lorg/codehaus/jackson/map/ser/impl/StaticListSerializerBase;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "StaticListSerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection",
        "<*>;>",
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;B)V

    .line 29
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/impl/StaticListSerializerBase;->a:Lorg/codehaus/jackson/map/BeanProperty;

    .line 30
    return-void
.end method
