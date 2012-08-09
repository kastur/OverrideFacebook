.class public Lcom/facebook/orca/threads/ThreadSummaryStitching;
.super Ljava/lang/Object;
.source "ThreadSummaryStitching.java"


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryStitching;->a:Ljavax/inject/Provider;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x78

    const/4 v2, 0x0

    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 33
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    .line 34
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 36
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_3

    .line 43
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryStitching;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 49
    :goto_2
    new-instance v2, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->n()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->n()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    .line 47
    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method
