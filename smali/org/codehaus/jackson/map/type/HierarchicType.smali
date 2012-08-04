.class public Lorg/codehaus/jackson/map/type/HierarchicType;
.super Ljava/lang/Object;
.source "HierarchicType.java"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/ParameterizedType;

.field private c:Lorg/codehaus/jackson/map/type/HierarchicType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->a:Ljava/lang/Class;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->b:Ljava/lang/reflect/ParameterizedType;

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->b:Ljava/lang/reflect/ParameterizedType;

    .line 38
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->b:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->a:Ljava/lang/Class;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not be used to construct HierarchicType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->c:Lorg/codehaus/jackson/map/type/HierarchicType;

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/type/HierarchicType;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->c:Lorg/codehaus/jackson/map/type/HierarchicType;

    return-void
.end method

.method public final b(Lorg/codehaus/jackson/map/type/HierarchicType;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->b:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->b:Ljava/lang/reflect/ParameterizedType;

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->b:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->b:Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
