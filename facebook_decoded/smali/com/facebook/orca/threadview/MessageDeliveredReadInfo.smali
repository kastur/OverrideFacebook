.class public Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;
.super Ljava/lang/Object;
.source "MessageDeliveredReadInfo.java"


# instance fields
.field private final a:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/orca/threads/ParticipantInfo;

.field private d:J


# direct methods
.method private constructor <init>(Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;-><init>(Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;J)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    .line 38
    iput-wide p2, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->d:J

    .line 39
    return-void
.end method

.method public static a(J)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;
    .locals 2
    .parameter

    .prologue
    .line 90
    new-instance v0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    sget-object v1, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->READER:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;-><init>(Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;J)V

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;
    .locals 2
    .parameter

    .prologue
    .line 98
    new-instance v0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    sget-object v1, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->SENDER:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;-><init>(Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;)V

    .line 100
    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->b(Lcom/facebook/orca/threads/ParticipantInfo;)V

    .line 101
    return-object v0
.end method

.method private b(Lcom/facebook/orca/threads/ParticipantInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->c:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    sget-object v1, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->READER:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->b:Ljava/util/List;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/threadview/RowReceiptParticipant;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    sget-object v1, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->READER:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MessageDeliveredReadInfo is not of type READER - Cannot add a reader"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->b:Ljava/util/List;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->b:Ljava/util/List;

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 71
    if-gez v0, :cond_1

    .line 72
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->b:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    return-void

    .line 63
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    sget-object v1, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->SENDER:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->c:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    sget-object v1, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->DELIVEREE:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->c:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->d:J

    return-wide v0
.end method
