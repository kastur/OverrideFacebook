.class final Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private b:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private c:I


# direct methods
.method public constructor <init>([Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;)V
    .locals 4
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->a:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 190
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->a:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 192
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->a:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v3, v1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->b:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 198
    :goto_1
    iput v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->c:I

    .line 199
    return-void

    :cond_0
    move v1, v0

    .line 197
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->b:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 210
    if-nez v1, :cond_0

    .line 211
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iget-object v0, v1, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->a:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 215
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->c:I

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->a:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 216
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->a:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    iget v2, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->c:I

    aget-object v0, v0, v2

    goto :goto_0

    .line 218
    :cond_1
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->b:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 219
    iget-object v0, v1, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->c:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->b:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->a()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
