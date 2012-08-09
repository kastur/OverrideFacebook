.class public final Lcom/facebook/apache/commons/logging/impl/WeakHashtable;
.super Ljava/util/Hashtable;
.source "WeakHashtable.java"


# instance fields
.field private a:Ljava/lang/ref/ReferenceQueue;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a:Ljava/lang/ref/ReferenceQueue;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    .line 134
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v1

    .line 323
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;

    if-eqz v0, :cond_0

    .line 324
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;->a(Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;->a(Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 142
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;B)V

    .line 143
    invoke-super {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 151
    invoke-super {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 6

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 159
    invoke-super {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 160
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 161
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 164
    invoke-static {v1}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a(Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    move-result-object v1

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 166
    if-eqz v1, :cond_0

    .line 167
    new-instance v4, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Entry;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v5}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;B)V

    .line 168
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_1
    return-object v2
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 179
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;B)V

    .line 180
    invoke-super {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 288
    invoke-super {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 206
    invoke-super {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 210
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a(Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    return-object v1
.end method

.method public final keys()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 188
    invoke-super {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$1;-><init>(Lcom/facebook/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null keys are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    if-nez p2, :cond_1

    .line 227
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null values are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    iget v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_3

    .line 233
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 234
    iput v2, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    .line 241
    :cond_2
    :goto_0
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;B)V

    .line 242
    invoke-super {p0, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 237
    :cond_3
    iget v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b()V

    goto :goto_0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3
    .parameter

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method protected final rehash()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 313
    invoke-super {p0}, Ljava/util/Hashtable;->rehash()V

    .line 314
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 272
    iget v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 274
    iput v2, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    .line 280
    :cond_0
    :goto_0
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    invoke-direct {v0, p1, v2}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;B)V

    invoke-super {p0, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 277
    :cond_1
    iget v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->b()V

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 296
    invoke-super {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 304
    invoke-super {p0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable;->a()V

    .line 263
    invoke-super {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
