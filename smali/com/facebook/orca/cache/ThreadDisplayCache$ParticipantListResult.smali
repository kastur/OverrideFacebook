.class Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;
.super Ljava/lang/Object;
.source "ThreadDisplayCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->a:J

    .line 41
    iput-object p3, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->b:Lcom/google/common/collect/ImmutableList;

    .line 42
    iput-object p4, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->c:Lcom/google/common/collect/ImmutableList;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)J
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
