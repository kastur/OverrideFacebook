.class public Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;
.super Ljava/lang/Object;
.source "MessageReaderListView.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/orca/threads/ThreadSummary;

.field private d:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
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
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->d:Lcom/facebook/orca/threads/Message;

    .line 68
    return-void
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->c:Lcom/facebook/orca/threads/ThreadSummary;

    .line 60
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->a:Ljava/util/List;

    .line 44
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->b:Ljava/util/List;

    .line 52
    return-void
.end method

.method public final c()Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->c:Lcom/facebook/orca/threads/ThreadSummary;

    return-object v0
.end method

.method public final d()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->d:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method
