.class public final Lorg/codehaus/jackson/map/type/ArrayType;
.super Lorg/codehaus/jackson/map/type/TypeBase;
.source "ArrayType.java"


# instance fields
.field private a:Lorg/codehaus/jackson/type/JavaType;

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;I)V

    .line 30
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 31
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->b:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public static a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/codehaus/jackson/map/type/ArrayType;

    invoke-direct {v1, p0, v0}, Lorg/codehaus/jackson/map/type/ArrayType;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    return-object v1
.end method

.method private c(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 3
    .parameter

    .prologue
    .line 50
    new-instance v0, Lorg/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/ArrayType;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    .line 51
    iput-object p1, v0, Lorg/codehaus/jackson/map/type/ArrayType;->e:Ljava/lang/Object;

    .line 52
    return-object v0
.end method

.method private d(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 3
    .parameter

    .prologue
    .line 59
    new-instance v0, Lorg/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/type/JavaType;->b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/ArrayType;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 164
    if-nez p1, :cond_0

    const-string v0, "E"

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
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
    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible narrowing operation: trying to narrow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/ArrayType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 97
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->a()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/ArrayType;->d(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 184
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
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
    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 112
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/type/JavaType;->f(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/ArrayType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/ArrayType;->c(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
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
    .line 119
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 122
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/type/JavaType;->h(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/ArrayType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->e()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 214
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 218
    check-cast p1, Lorg/codehaus/jackson/map/type/ArrayType;

    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p1, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[array type, component type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
