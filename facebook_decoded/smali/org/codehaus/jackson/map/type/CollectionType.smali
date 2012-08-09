.class public final Lorg/codehaus/jackson/map/type/CollectionType;
.super Lorg/codehaus/jackson/map/type/CollectionLikeType;
.source "CollectionType.java"


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method private f(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 3
    .parameter

    .prologue
    .line 57
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    .line 58
    iput-object p1, v0, Lorg/codehaus/jackson/map/type/CollectionType;->e:Ljava/lang/Object;

    .line 59
    return-object v0
.end method

.method private g(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 3
    .parameter

    .prologue
    .line 66
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->g(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/CollectionType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 34
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->f(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/CollectionType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->f(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->f(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/CollectionType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 44
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->h(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/CollectionType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method

.method public final synthetic d(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->g(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[collection type; class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
