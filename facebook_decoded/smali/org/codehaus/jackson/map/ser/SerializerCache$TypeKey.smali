.class public final Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Lorg/codehaus/jackson/type/JavaType;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 227
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    .line 228
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a:I

    .line 229
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    .line 234
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    .line 235
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a(Lorg/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a:I

    .line 236
    return-void
.end method

.method private static final a(Ljava/lang/Class;Z)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 240
    if-eqz p1, :cond_0

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_0
    return v0
.end method

.method private static final a(Lorg/codehaus/jackson/type/JavaType;Z)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 248
    if-eqz p1, :cond_0

    .line 249
    add-int/lit8 v0, v0, -0x1

    .line 251
    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 256
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    .line 257
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    .line 258
    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a:I

    .line 259
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 269
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    .line 271
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    .line 272
    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a(Lorg/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a:I

    .line 273
    return-void
.end method

.method public final b(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 263
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    .line 264
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    .line 265
    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a:I

    .line 266
    return-void
.end method

.method public final b(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 276
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    .line 278
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    .line 279
    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a(Lorg/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a:I

    .line 280
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    if-ne p1, p0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    check-cast p1, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    .line 296
    iget-boolean v2, p1, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    iget-boolean v3, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    if-ne v2, v3, :cond_3

    .line 297
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 298
    iget-object v2, p1, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p1, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 302
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
