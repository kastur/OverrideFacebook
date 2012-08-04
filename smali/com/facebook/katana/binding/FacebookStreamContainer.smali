.class public Lcom/facebook/katana/binding/FacebookStreamContainer;
.super Ljava/lang/Object;
.source "FacebookStreamContainer.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/binding/FacebookStreamContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-static {p0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/katana/binding/FacebookStreamContainer;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 133
    invoke-static {p0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->b(Ljava/lang/String;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    move-result-object v1

    .line 136
    sget-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 137
    iget-object v0, v0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/facebook/katana/model/FacebookPost;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    invoke-static {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a(Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPost;)V
    .locals 3
    .parameter

    .prologue
    .line 63
    invoke-static {p1}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a(Lcom/facebook/katana/model/FacebookPost;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    .line 90
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 97
    :cond_1
    if-nez p2, :cond_3

    .line 98
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->d:J

    move v1, v2

    .line 117
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    .line 118
    invoke-static {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a(Lcom/facebook/katana/model/FacebookPost;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    move-result-object v0

    .line 119
    iget-object v4, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 105
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    iget-object v4, v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->a:Ljava/lang/String;

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    .line 108
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    sget-object v3, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->d:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    iput-boolean v2, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->c:Z

    .line 126
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->c:Z

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->d:J

    return-wide v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer;->c:Z

    .line 212
    return-void
.end method
