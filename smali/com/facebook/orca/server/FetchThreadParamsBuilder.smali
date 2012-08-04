.class public Lcom/facebook/orca/server/FetchThreadParamsBuilder;
.super Ljava/lang/Object;
.source "FetchThreadParamsBuilder.java"


# instance fields
.field private a:Lcom/facebook/orca/server/ThreadCriteria;

.field private b:Lcom/facebook/orca/server/DataFreshnessParam;

.field private c:J

.field private d:Z

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->c:J

    .line 14
    const/16 v0, 0x32

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->e:I

    .line 15
    iput-wide v1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f:J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->e:I

    .line 69
    return-object p0
.end method

.method public final a(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->c:J

    .line 60
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 42
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 2
    .parameter

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a:Lcom/facebook/orca/server/ThreadCriteria;

    .line 19
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->d:Z

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->c:J

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->e:I

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f:J

    .line 24
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a:Lcom/facebook/orca/server/ThreadCriteria;

    .line 33
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->d:Z

    .line 51
    return-object p0
.end method

.method public final a()Lcom/facebook/orca/server/ThreadCriteria;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a:Lcom/facebook/orca/server/ThreadCriteria;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    return-object v0
.end method

.method public final b(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f:J

    .line 78
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->d:Z

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->c:J

    return-wide v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->e:I

    return v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f:J

    return-wide v0
.end method

.method public final g()Lcom/facebook/orca/server/FetchThreadParams;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/FetchThreadParams;-><init>(Lcom/facebook/orca/server/FetchThreadParamsBuilder;)V

    return-object v0
.end method
