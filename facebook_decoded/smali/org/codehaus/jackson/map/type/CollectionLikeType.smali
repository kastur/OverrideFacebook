.class public Lorg/codehaus/jackson/map/type/CollectionLikeType;
.super Lorg/codehaus/jackson/map/type/TypeBase;
.source "CollectionLikeType.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 1
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
    .line 31
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;I)V

    .line 32
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    .line 134
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 111
    if-nez p1, :cond_0

    const-string v0, "E"

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
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
    .line 37
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->d(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 102
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
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
    .line 44
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 47
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->f(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 3
    .parameter

    .prologue
    .line 70
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    .line 71
    iput-object p1, v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->e:Ljava/lang/Object;

    .line 72
    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
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
    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 57
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->h(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 3
    .parameter

    .prologue
    .line 79
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    if-ne p1, p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 172
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    .line 173
    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    iget-object v3, p1, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p1, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public final n_()Z
    .locals 2

    .prologue
    .line 156
    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[collection-like type; class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
