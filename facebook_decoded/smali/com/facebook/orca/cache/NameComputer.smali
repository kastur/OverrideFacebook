.class Lcom/facebook/orca/cache/NameComputer;
.super Ljava/lang/Object;
.source "NameComputer.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method final a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 31
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/facebook/orca/cache/NameComputer$CountingSet;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/cache/NameComputer$CountingSet;-><init>(Lcom/facebook/orca/cache/NameComputer;B)V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 35
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 36
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->a(Ljava/lang/Object;)V

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->a(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->a(Ljava/lang/Object;)V

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 59
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->b(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 61
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->e()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->b(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 63
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 64
    :cond_5
    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->e()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->b(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 65
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->b(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v6, :cond_7

    .line 67
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 68
    :cond_7
    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 69
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 70
    :cond_8
    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 71
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 72
    :cond_9
    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 73
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 74
    :cond_a
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->j()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 75
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 77
    :cond_b
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 80
    :cond_c
    return-object v1
.end method
