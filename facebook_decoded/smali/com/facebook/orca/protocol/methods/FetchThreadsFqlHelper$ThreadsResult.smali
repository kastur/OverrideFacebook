.class Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;
.super Ljava/lang/Object;
.source "FetchThreadsFqlHelper.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field final e:I

.field final f:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    .line 179
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->b:Lcom/google/common/collect/ImmutableList;

    .line 180
    iput-object p3, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    .line 181
    iput-object p4, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->d:Lcom/google/common/collect/ImmutableList;

    .line 182
    iput p5, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->e:I

    .line 183
    iput-wide p6, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->f:J

    .line 184
    return-void
.end method
