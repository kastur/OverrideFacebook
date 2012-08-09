.class public abstract Lorg/codehaus/jackson/map/BeanDescription;
.super Ljava/lang/Object;
.source "BeanDescription.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/codehaus/jackson/map/BeanDescription;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanDescription;->a:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanDescription;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
