.class public Lcom/facebook/apache/http/message/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/Header;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a([Lcom/facebook/apache/http/Header;)V
    .locals 3
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/facebook/apache/http/message/HeaderGroup;->a()V

    .line 123
    if-nez p1, :cond_1

    .line 129
    :cond_0
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)[Lcom/facebook/apache/http/Header;
    .locals 4
    .parameter

    .prologue
    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/Header;

    .line 176
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/apache/http/Header;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/apache/http/Header;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/apache/http/Header;
    .locals 3
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/Header;

    .line 195
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    :goto_1
    return-object v0

    .line 193
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/facebook/apache/http/Header;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/Header;

    .line 106
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b()[Lcom/facebook/apache/http/Header;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/apache/http/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/apache/http/Header;

    return-object v0
.end method

.method public final c()Lcom/facebook/apache/http/HeaderIterator;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Lcom/facebook/apache/http/message/BasicListHeaderIterator;

    iget-object v1, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 241
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/Header;

    .line 243
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const/4 v2, 0x1

    .line 248
    :cond_0
    return v2

    .line 241
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/message/HeaderGroup;

    .line 291
    iget-object v1, v0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 292
    iget-object v1, v0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/apache/http/HeaderIterator;
    .locals 2
    .parameter

    .prologue
    .line 273
    new-instance v0, Lcom/facebook/apache/http/message/BasicListHeaderIterator;

    iget-object v1, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/facebook/apache/http/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/apache/http/message/HeaderGroup;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
