.class public Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;
.super Ljava/lang/Object;
.source "ThreadViewMessagesAdapterUpdater.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    .line 102
    return-void
.end method

.method private static a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;IILcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;II",
            "Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    if-ge v0, p1, :cond_0

    .line 517
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c(I)V

    .line 518
    invoke-virtual {p3, p1}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;->b(I)V

    .line 523
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(I)V

    .line 521
    invoke-virtual {p3, p2}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;->a(I)V

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;ILcom/facebook/orca/threadview/RowItem;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;I",
            "Lcom/facebook/orca/threadview/RowItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    if-ge v0, p1, :cond_0

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b(ILjava/lang/Object;)V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 189
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    :cond_0
    const-string v0, "    none\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    return-void

    .line 192
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 193
    const-string v0, "   "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 166
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    const-string v1, "Current messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Ljava/lang/StringBuilder;Ljava/util/List;I)V

    .line 174
    const-string v1, "  New Message:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {p2}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Ljava/lang/StringBuilder;Ljava/util/List;I)V

    .line 177
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "orca:ThreadViewMessagesAdapterUpdater"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            "Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {p2}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v4

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 390
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 391
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 394
    instance-of v1, v2, Lcom/facebook/orca/threadview/RowReceiptItem;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/facebook/orca/threadview/RowReceiptItem;

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 396
    check-cast v1, Lcom/facebook/orca/threadview/RowReceiptItem;

    move-object v3, v0

    check-cast v3, Lcom/facebook/orca/threadview/RowReceiptItem;

    invoke-direct {p0, v1, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Lcom/facebook/orca/threadview/RowReceiptItem;Lcom/facebook/orca/threadview/RowReceiptItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    check-cast v2, Lcom/facebook/orca/threadview/RowItem;

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;->NONE:Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 402
    :cond_2
    instance-of v1, v2, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_5

    move-object v1, v2

    .line 404
    check-cast v1, Lcom/facebook/orca/threadview/RowMessageItem;

    move-object v3, v0

    .line 405
    check-cast v3, Lcom/facebook/orca/threadview/RowMessageItem;

    .line 406
    invoke-static {v1, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->c(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threadview/RowMessageItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 407
    check-cast v2, Lcom/facebook/orca/threadview/RowItem;

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-static {v1, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->b(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threadview/RowMessageItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;->HIDE:Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 410
    :cond_3
    invoke-static {v1, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threadview/RowMessageItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 412
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;->REVEAL:Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 414
    :cond_4
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;->NONE:Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 419
    :cond_5
    instance-of v1, v2, Lcom/facebook/orca/threadview/SimpleRowItem;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/facebook/orca/threadview/SimpleRowItem;

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 420
    check-cast v1, Lcom/facebook/orca/threadview/SimpleRowItem;

    move-object v3, v0

    check-cast v3, Lcom/facebook/orca/threadview/SimpleRowItem;

    invoke-static {v1, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Lcom/facebook/orca/threadview/RowItem;Lcom/facebook/orca/threadview/RowItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    check-cast v2, Lcom/facebook/orca/threadview/RowItem;

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;->NONE:Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 429
    :cond_6
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;Ldifflib/Patch;)Z
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;",
            "Ldifflib/Patch;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 210
    new-instance v7, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;

    invoke-direct {v7, p0, v5}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;B)V

    .line 212
    invoke-virtual {p2}, Ldifflib/Patch;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v3

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldifflib/Delta;

    .line 213
    instance-of v2, v0, Ldifflib/InsertDelta;

    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {v0}, Ldifflib/Delta;->b()Ldifflib/Chunk;

    move-result-object v2

    invoke-virtual {v2}, Ldifflib/Chunk;->b()Ljava/util/List;

    move-result-object v6

    move v4, v5

    move v2, v1

    .line 215
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 216
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/RowItem;

    .line 217
    invoke-virtual {v0}, Ldifflib/Delta;->b()Ldifflib/Chunk;

    move-result-object v9

    invoke-virtual {v9}, Ldifflib/Chunk;->a()I

    move-result v9

    add-int/2addr v9, v4

    .line 219
    if-eqz v2, :cond_b

    .line 220
    invoke-virtual {v7, v9}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;->d(I)I

    move-result v2

    add-int/2addr v2, v9

    invoke-static {p1, v2, v1}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;ILcom/facebook/orca/threadview/RowItem;)V

    .line 215
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v5

    goto :goto_1

    :cond_1
    move v1, v2

    .line 229
    goto :goto_0

    :cond_2
    instance-of v2, v0, Ldifflib/DeleteDelta;

    if-eqz v2, :cond_3

    .line 230
    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v2

    invoke-virtual {v2}, Ldifflib/Chunk;->b()Ljava/util/List;

    move-result-object v4

    move v2, v5

    .line 231
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 232
    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v6

    invoke-virtual {v6}, Ldifflib/Chunk;->a()I

    move-result v6

    add-int/2addr v6, v2

    .line 233
    invoke-virtual {v7, v6}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;->c(I)I

    move-result v9

    sub-int v9, v6, v9

    invoke-static {p1, v9, v6, v7}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;IILcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 239
    :cond_3
    instance-of v2, v0, Ldifflib/ChangeDelta;

    if-eqz v2, :cond_c

    .line 240
    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v2

    invoke-virtual {v2}, Ldifflib/Chunk;->b()Ljava/util/List;

    move-result-object v4

    .line 241
    invoke-virtual {v0}, Ldifflib/Delta;->b()Ldifflib/Chunk;

    move-result-object v2

    invoke-virtual {v2}, Ldifflib/Chunk;->b()Ljava/util/List;

    move-result-object v9

    .line 242
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v6

    .line 243
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v10

    .line 244
    invoke-direct {p0, v4, v9, v6, v10}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;)V

    move v2, v5

    .line 251
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_5

    .line 252
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 253
    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v11

    invoke-virtual {v11}, Ldifflib/Chunk;->a()I

    move-result v11

    add-int/2addr v11, v2

    .line 254
    invoke-virtual {v7, v11}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;->c(I)I

    move-result v12

    sub-int v12, v11, v12

    invoke-static {p1, v12, v11, v7}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;IILcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;)V

    .line 251
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v6, v5

    move v4, v1

    .line 263
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_9

    .line 264
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/RowItem;

    .line 265
    invoke-virtual {v0}, Ldifflib/Delta;->b()Ldifflib/Chunk;

    move-result-object v2

    invoke-virtual {v2}, Ldifflib/Chunk;->a()I

    move-result v2

    add-int/2addr v2, v6

    .line 266
    invoke-virtual {v7, v2}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ItemDeletionTracker;->d(I)I

    move-result v11

    add-int/2addr v11, v2

    .line 267
    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 268
    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;

    .line 269
    sget-object v12, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;->HIDE:Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;

    if-ne v2, v12, :cond_6

    .line 270
    invoke-virtual {p1, v11, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d(ILjava/lang/Object;)V

    .line 271
    sget v1, Lcom/facebook/orca/R$id;->row_receipt_animating_item_view:I

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->HIDE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    invoke-virtual {p1, v11, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(IILcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;)V

    move v1, v4

    .line 263
    :goto_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_4

    .line 275
    :cond_6
    sget-object v12, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;->REVEAL:Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater$ReplaceAction;

    if-ne v2, v12, :cond_7

    .line 276
    invoke-virtual {p1, v11, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c(ILjava/lang/Object;)V

    .line 277
    sget v1, Lcom/facebook/orca/R$id;->row_receipt_animating_item_view:I

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->REVEAL_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    invoke-virtual {p1, v11, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(IILcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;)V

    move v1, v4

    goto :goto_5

    .line 282
    :cond_7
    invoke-virtual {p1, v11, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c(ILjava/lang/Object;)V

    move v1, v4

    .line 284
    goto :goto_5

    .line 286
    :cond_8
    if-eqz v4, :cond_b

    .line 287
    invoke-static {p1, v11, v1}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;ILcom/facebook/orca/threadview/RowItem;)V

    move v1, v5

    .line 288
    goto :goto_5

    :cond_9
    move v0, v4

    :goto_6
    move v1, v0

    .line 294
    goto/16 :goto_0

    :cond_a
    move v3, v5

    .line 296
    :cond_b
    return v3

    :cond_c
    move v0, v1

    goto :goto_6
.end method

.method private static a(Lcom/facebook/orca/threadview/RowItem;Lcom/facebook/orca/threadview/RowItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 463
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowItem;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowItem;->a()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowItem;->a()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowItem;->a()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threadview/RowMessageItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threadview/RowReceiptItem;Lcom/facebook/orca/threadview/RowReceiptItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-static {p1, p2}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->b(Lcom/facebook/orca/threadview/RowReceiptItem;Lcom/facebook/orca/threadview/RowReceiptItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->d(Lcom/facebook/orca/threadview/RowReceiptItem;Lcom/facebook/orca/threadview/RowReceiptItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->c(Lcom/facebook/orca/threadview/RowReceiptItem;Lcom/facebook/orca/threadview/RowReceiptItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ldifflib/Patch;)[I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 353
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 354
    invoke-virtual {p0}, Ldifflib/Patch;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldifflib/Delta;

    .line 355
    instance-of v3, v0, Ldifflib/DeleteDelta;

    if-eqz v3, :cond_1

    .line 356
    aget v3, v1, v6

    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v0

    invoke-virtual {v0}, Ldifflib/Chunk;->c()I

    move-result v0

    add-int/2addr v0, v3

    aput v0, v1, v6

    goto :goto_0

    .line 357
    :cond_1
    instance-of v3, v0, Ldifflib/InsertDelta;

    if-eqz v3, :cond_2

    .line 358
    aget v3, v1, v7

    invoke-virtual {v0}, Ldifflib/Delta;->b()Ldifflib/Chunk;

    move-result-object v0

    invoke-virtual {v0}, Ldifflib/Chunk;->c()I

    move-result v0

    add-int/2addr v0, v3

    aput v0, v1, v7

    goto :goto_0

    .line 359
    :cond_2
    instance-of v3, v0, Ldifflib/ChangeDelta;

    if-eqz v3, :cond_0

    .line 360
    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v3

    invoke-virtual {v3}, Ldifflib/Chunk;->c()I

    move-result v3

    invoke-virtual {v0}, Ldifflib/Delta;->b()Ldifflib/Chunk;

    move-result-object v4

    invoke-virtual {v4}, Ldifflib/Chunk;->c()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 361
    aget v3, v1, v6

    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v0

    invoke-virtual {v0}, Ldifflib/Chunk;->c()I

    move-result v0

    add-int/2addr v0, v3

    aput v0, v1, v6

    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {v0}, Ldifflib/Delta;->b()Ldifflib/Chunk;

    move-result-object v3

    invoke-virtual {v3}, Ldifflib/Chunk;->c()I

    move-result v3

    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v4

    invoke-virtual {v4}, Ldifflib/Chunk;->c()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 363
    aget v3, v1, v7

    invoke-virtual {v0}, Ldifflib/Delta;->b()Ldifflib/Chunk;

    move-result-object v4

    invoke-virtual {v4}, Ldifflib/Chunk;->c()I

    move-result v4

    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v5

    invoke-virtual {v5}, Ldifflib/Chunk;->c()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, v1, v7

    .line 364
    aget v3, v1, v6

    invoke-virtual {v0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v0

    invoke-virtual {v0}, Ldifflib/Chunk;->c()I

    move-result v0

    add-int/2addr v0, v3

    aput v0, v1, v6

    goto/16 :goto_0

    .line 368
    :cond_4
    return-object v1
.end method

.method private static b(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threadview/RowMessageItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/orca/threadview/RowReceiptItem;Lcom/facebook/orca/threadview/RowReceiptItem;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->DELIVERED:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->DELIVERED:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threadview/RowMessageItem;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 579
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 580
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    const/4 v0, 0x1

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 584
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 586
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Lcom/facebook/orca/threadview/RowReceiptItem;Lcom/facebook/orca/threadview/RowReceiptItem;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->SENT:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/facebook/orca/threadview/RowReceiptItem;Lcom/facebook/orca/threadview/RowReceiptItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Lcom/facebook/orca/threadview/RowReceiptItem;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 565
    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->a()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(Ljava/util/Collection;)V

    .line 118
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {v1, p1}, Ldifflib/DiffUtils;->a(Ljava/util/List;Ljava/util/List;)Ldifflib/Patch;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ldifflib/Patch;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Ldifflib/Patch;)[I

    move-result-object v2

    .line 130
    aget v3, v2, v5

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    aget v3, v2, v5

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v2, v3

    const/16 v3, 0x8

    if-le v2, v3, :cond_3

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->b()V

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->a()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(Ljava/util/Collection;)V

    .line 136
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b()V

    goto :goto_0

    .line 140
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Ljava/util/List;Ljava/util/List;)V

    .line 144
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->a()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;

    move-result-object v1

    .line 145
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;Ldifflib/Patch;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b()V

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->a()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;

    move-result-object v1

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0, p1}, Ldifflib/DiffUtils;->a(Ljava/util/List;Ljava/util/List;)Ldifflib/Patch;

    move-result-object v0

    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b()V

    goto :goto_0
.end method

.method public final a(ZLjava/util/List;Lcom/facebook/orca/threads/ParticipantInfo;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 314
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->a()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;

    move-result-object v3

    .line 316
    if-eqz p1, :cond_1

    .line 319
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 320
    instance-of v1, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    new-instance v4, Lcom/facebook/orca/threadview/RowMessageItem;

    move-object v1, v0

    check-cast v1, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;)V

    invoke-virtual {v3, v2, v4}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c(ILjava/lang/Object;)V

    .line 327
    new-instance v0, Lcom/facebook/orca/threadview/RowTypingItem;

    invoke-direct {v0, p3}, Lcom/facebook/orca/threadview/RowTypingItem;-><init>(Lcom/facebook/orca/threads/ParticipantInfo;)V

    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(Ljava/lang/Object;)V

    .line 343
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b()V

    .line 344
    return-void

    .line 329
    :cond_0
    new-instance v0, Lcom/facebook/orca/threadview/RowTypingItem;

    invoke-direct {v0, p3}, Lcom/facebook/orca/threadview/RowTypingItem;-><init>(Lcom/facebook/orca/threads/ParticipantInfo;)V

    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 335
    instance-of v1, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 337
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3, v1, v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c(ILjava/lang/Object;)V

    .line 338
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(I)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b(I)V

    goto :goto_0
.end method
