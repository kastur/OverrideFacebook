.class final Lcom/facebook/orca/threadview/RowReceiptParticipant$1;
.super Ljava/lang/Object;
.source "RowReceiptParticipant.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/threadview/RowReceiptParticipant;Lcom/facebook/orca/threadview/RowReceiptParticipant;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 28
    :goto_0
    return v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 26
    const/4 v0, -0x1

    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    check-cast p2, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    invoke-static {p1, p2}, Lcom/facebook/orca/threadview/RowReceiptParticipant$1;->a(Lcom/facebook/orca/threadview/RowReceiptParticipant;Lcom/facebook/orca/threadview/RowReceiptParticipant;)I

    move-result v0

    return v0
.end method
