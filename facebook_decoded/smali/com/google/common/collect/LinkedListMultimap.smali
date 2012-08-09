.class public final Lcom/google/common/collect/LinkedListMultimap;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient b:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient c:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient g:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->d()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Lcom/google/common/collect/Multiset;

    .line 165
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:Ljava/util/Map;

    .line 166
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:Ljava/util/Map;

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/LinkedListMultimap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_0

    .line 190
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v1

    .line 193
    :cond_0
    if-nez p3, :cond_2

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 196
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 197
    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 200
    :cond_1
    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 201
    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 207
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 208
    iput-object p3, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 209
    iput-object p3, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 210
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :goto_2
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_4

    .line 216
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 220
    :goto_3
    iput-object v1, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 221
    iput-object v1, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_2

    .line 218
    :cond_4
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_3
.end method

.method private a(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 238
    :goto_0
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 243
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 250
    :goto_2
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 257
    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Lcom/google/common/collect/Multiset;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    .line 258
    return-void

    .line 236
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 245
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->e:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 252
    :cond_4
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->f(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method static synthetic d(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->g(Ljava/lang/Object;)V

    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 262
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/Object;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 271
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 273
    :cond_0
    return-void
.end method

.method private h(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$1;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Ljava/util/Set;

    .line 615
    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$2;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Ljava/util/Set;

    .line 632
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    .line 910
    if-nez v0, :cond_0

    .line 911
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$5;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$5;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    .line 941
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 568
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->f(Ljava/lang/Object;)V

    .line 569
    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 489
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 490
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 493
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 954
    if-ne p1, p0, :cond_0

    .line 955
    const/4 v0, 0x1

    .line 961
    :goto_0
    return v0

    .line 957
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 958
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 959
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 961
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/Multiset;

    .line 640
    if-nez v0, :cond_0

    .line 641
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/Multiset;

    .line 643
    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
