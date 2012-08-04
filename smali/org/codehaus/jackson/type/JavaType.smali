.class public abstract Lorg/codehaus/jackson/type/JavaType;
.super Ljava/lang/Object;
.source "JavaType.java"


# instance fields
.field private a:I

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/Object;

.field protected e:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/codehaus/jackson/type/JavaType;->a:I

    .line 59
    return-void
.end method

.method private d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
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
    .line 158
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/type/JavaType;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not assignable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
.end method

.method public b(I)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public abstract c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 232
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 233
    and-int/lit16 v1, v1, 0x600

    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 176
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to reset value handler for type ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]; old handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/type/JavaType;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/type/JavaType;->d:Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/JavaType;->h()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final f(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
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
    .line 93
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 105
    :goto_0
    return-object p0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/type/JavaType;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Object;)V

    .line 102
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    :cond_2
    move-object p0, v0

    .line 105
    goto :goto_0
.end method

.method public abstract f()Z
.end method

.method public g()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
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
    .line 117
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 127
    :goto_0
    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/type/JavaType;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Object;)V

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    :cond_2
    move-object p0, v0

    .line 127
    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
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
    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 147
    :goto_0
    return-object p0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Class;)V

    .line 147
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lorg/codehaus/jackson/type/JavaType;->a:I

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public k()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public final n()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 246
    const-class v0, Ljava/lang/Throwable;

    iget-object v1, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final t()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public final u()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->e:Ljava/lang/Object;

    return-object v0
.end method
