.class public interface abstract annotation Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;
.super Ljava/lang/Object;
.source "JsonSubTypes.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;
        name = ""
    .end subannotation
.end annotation


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method
