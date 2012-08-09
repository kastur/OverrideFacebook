.class Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;
.super Ljava/lang/Object;
.source "MessagesCollectionMerger.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void
.end method

.method final b(Lcom/facebook/orca/threads/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->c(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 2
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 298
    if-eqz v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object v0

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    goto :goto_0
.end method

.method final d(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    return-void
.end method
