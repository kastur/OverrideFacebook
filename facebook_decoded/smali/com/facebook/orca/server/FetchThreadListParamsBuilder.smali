.class public Lcom/facebook/orca/server/FetchThreadListParamsBuilder;
.super Ljava/lang/Object;
.source "FetchThreadListParamsBuilder.java"


# instance fields
.field private a:Lcom/facebook/orca/server/DataFreshnessParam;

.field private b:Lcom/facebook/orca/threads/FolderName;

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->c:J

    .line 14
    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a:Lcom/facebook/orca/server/DataFreshnessParam;

    return-object v0
.end method

.method public final a(J)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->c:J

    .line 48
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 30
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 18
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->b:Lcom/facebook/orca/threads/FolderName;

    .line 19
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->c:J

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->d:I

    .line 21
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->b:Lcom/facebook/orca/threads/FolderName;

    .line 39
    return-object p0
.end method

.method public final b()Lcom/facebook/orca/threads/FolderName;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->b:Lcom/facebook/orca/threads/FolderName;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->c:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->d:I

    return v0
.end method

.method public final e()Lcom/facebook/orca/server/FetchThreadListParams;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/facebook/orca/server/FetchThreadListParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/FetchThreadListParams;-><init>(Lcom/facebook/orca/server/FetchThreadListParamsBuilder;)V

    return-object v0
.end method
