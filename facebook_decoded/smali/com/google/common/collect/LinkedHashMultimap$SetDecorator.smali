.class Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;
.super Lcom/google/common/collect/ForwardingSet;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedHashMultimap;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 173
    iput-object p3, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    .line 174
    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->c:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private d(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TE;>;>;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 190
    invoke-virtual {p0, v2}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->a:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->a:Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->d(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 208
    :cond_0
    return v0
.end method

.method protected final synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v2, v2, Lcom/google/common/collect/LinkedHashMultimap;->a:Ljava/util/Collection;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 216
    return-void
.end method

.method final d(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Map$Entry",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->a:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->a:Ljava/util/Collection;

    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->d(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 257
    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 269
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 271
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->a:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->c:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 272
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return v0
.end method
