.class public Lcom/facebook/orca/merge/MergeServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "MergeServiceHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/threads/ThreadsCollectionMerger;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threads/ThreadsCollectionMerger;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadsCollectionMerger;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "MergeServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/merge/MergeServiceHandler;->a:Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/merge/MergeServiceHandler;->b:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method private static a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 97
    const-string v0, "fetchThreadListParams"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 99
    new-instance v3, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->e()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v3

    .line 103
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 104
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    new-instance v2, Lcom/facebook/orca/server/OperationParams;

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    invoke-interface {p2, v2}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 155
    const-string v0, "fetchMoreThreadsParams"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 157
    new-instance v3, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v0

    invoke-direct {v3, p1, v4, v5, v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;-><init>(Lcom/facebook/orca/threads/FolderName;JI)V

    .line 159
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 160
    const-string v2, "fetchMoreThreadsParams"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    new-instance v2, Lcom/facebook/orca/server/OperationParams;

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 162
    invoke-interface {p2, v2}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 46
    const-string v3, "fetchThreadListParams"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/merge/MergeServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 89
    :goto_0
    return-object v2

    .line 52
    :cond_0
    sget-object v3, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1}, Lcom/facebook/orca/merge/MergeServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v3

    .line 54
    sget-object v4, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1}, Lcom/facebook/orca/merge/MergeServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v4

    .line 57
    invoke-virtual {v3}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 59
    invoke-virtual {v4}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/merge/MergeServiceHandler;->a:Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v2

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/facebook/orca/threads/ThreadsCollection;

    const/4 v5, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/facebook/orca/threads/ThreadsCollectionMerger;->a(I[Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v5

    .line 68
    new-instance v2, Lcom/facebook/orca/server/FetchThreadListResult;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/orca/server/DataFreshnessResult;

    const/4 v4, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/facebook/orca/server/DataFreshnessResult;)Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/common/collect/ImmutableList;

    const/4 v7, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/common/collect/ImmutableList;

    const/4 v8, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/common/collect/ImmutableList;

    const/4 v9, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/facebook/orca/threads/FolderCounts;

    const/4 v10, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/facebook/orca/threads/FolderCounts;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v9

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->i()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Z

    const/4 v12, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->j()Z

    move-result v13

    aput-boolean v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->j()Z

    move-result v13

    aput-boolean v13, v11, v12

    invoke-static {v11}, Lcom/facebook/orca/merge/MergingUtil;->a([Z)Z

    move-result v11

    const/4 v12, 0x2

    new-array v12, v12, [J

    const/4 v13, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->b()J

    move-result-wide v16

    aput-wide v16, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->b()J

    move-result-wide v16

    aput-wide v16, v12, v13

    invoke-static {v12}, Lcom/facebook/orca/merge/MergingUtil;->a([J)J

    move-result-wide v12

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/facebook/orca/server/FetchThreadListResult;->k()J

    move-result-wide v18

    aput-wide v18, v16, v17

    const/4 v15, 0x1

    invoke-virtual {v14}, Lcom/facebook/orca/server/FetchThreadListResult;->k()J

    move-result-wide v17

    aput-wide v17, v16, v15

    invoke-static/range {v16 .. v16}, Lcom/facebook/orca/merge/MergingUtil;->a([J)J

    move-result-wide v14

    invoke-direct/range {v2 .. v15}, Lcom/facebook/orca/server/FetchThreadListResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    .line 89
    invoke-static {v2}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected final b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 115
    iget-object v1, p0, Lcom/facebook/orca/merge/MergeServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    invoke-static {p1, v1, p2}, Lcom/facebook/orca/merge/MergeServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-static {p1, v2, p2}, Lcom/facebook/orca/merge/MergeServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 124
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 126
    invoke-virtual {v2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 129
    iget-object v1, p0, Lcom/facebook/orca/merge/MergeServiceHandler;->a:Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v0

    new-array v2, v8, [Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/threads/ThreadsCollectionMerger;->a(I[Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v3

    .line 135
    new-instance v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    new-array v1, v8, [Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v1}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/facebook/orca/server/DataFreshnessResult;)Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    new-array v4, v8, [Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    aput-object v7, v4, v10

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    aput-object v7, v4, v11

    invoke-static {v4}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    new-array v7, v8, [J

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()J

    move-result-wide v8

    aput-wide v8, v7, v10

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()J

    move-result-wide v5

    aput-wide v5, v7, v11

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([J)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;J)V

    .line 146
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method
