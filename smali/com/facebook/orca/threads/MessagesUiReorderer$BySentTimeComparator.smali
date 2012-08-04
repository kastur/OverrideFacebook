.class Lcom/facebook/orca/threads/MessagesUiReorderer$BySentTimeComparator;
.super Ljava/lang/Object;
.source "MessagesUiReorderer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/threads/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/threads/MessagesUiReorderer;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/threads/MessagesUiReorderer;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/orca/threads/MessagesUiReorderer$BySentTimeComparator;->a:Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/threads/MessagesUiReorderer;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/MessagesUiReorderer$BySentTimeComparator;-><init>(Lcom/facebook/orca/threads/MessagesUiReorderer;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesUiReorderer$BySentTimeComparator;->a:Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-static {v0, p1}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/MessagesUiReorderer;Lcom/facebook/orca/threads/Message;)J

    move-result-wide v0

    .line 101
    iget-object v2, p0, Lcom/facebook/orca/threads/MessagesUiReorderer$BySentTimeComparator;->a:Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-static {v2, p2}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/MessagesUiReorderer;Lcom/facebook/orca/threads/Message;)J

    move-result-wide v2

    .line 102
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 103
    const/4 v0, -0x1

    .line 107
    :goto_0
    return v0

    .line 104
    :cond_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 105
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    check-cast p1, Lcom/facebook/orca/threads/Message;

    check-cast p2, Lcom/facebook/orca/threads/Message;

    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threads/MessagesUiReorderer$BySentTimeComparator;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)I

    move-result v0

    return v0
.end method
