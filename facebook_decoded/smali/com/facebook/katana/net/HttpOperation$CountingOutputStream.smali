.class Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "HttpOperation.java"


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:J

.field private synthetic e:Lcom/facebook/katana/net/HttpOperation;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/net/HttpOperation;Ljava/io/OutputStream;J)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->e:Lcom/facebook/katana/net/HttpOperation;

    .line 496
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 497
    iput-wide p3, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->a:J

    .line 498
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    .line 499
    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->a:J

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->b:J

    .line 500
    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->b:J

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->d:J

    .line 501
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 5
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 527
    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    .line 528
    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    iget-wide v2, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 529
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 532
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->e:Lcom/facebook/katana/net/HttpOperation;

    invoke-static {v0}, Lcom/facebook/katana/net/HttpOperation;->a(Lcom/facebook/katana/net/HttpOperation;)Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->e:Lcom/facebook/katana/net/HttpOperation;

    invoke-static {v0}, Lcom/facebook/katana/net/HttpOperation;->a(Lcom/facebook/katana/net/HttpOperation;)Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->e:Lcom/facebook/katana/net/HttpOperation;

    iget-wide v1, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    iget-wide v3, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->a:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;->a(JJ)V

    .line 535
    :cond_0
    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->d:J

    iget-wide v2, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->d:J

    .line 537
    :cond_1
    return-void
.end method

.method public write([BII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 509
    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    .line 510
    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    iget-wide v2, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 511
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 514
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->e:Lcom/facebook/katana/net/HttpOperation;

    invoke-static {v0}, Lcom/facebook/katana/net/HttpOperation;->a(Lcom/facebook/katana/net/HttpOperation;)Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->e:Lcom/facebook/katana/net/HttpOperation;

    invoke-static {v0}, Lcom/facebook/katana/net/HttpOperation;->a(Lcom/facebook/katana/net/HttpOperation;)Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->e:Lcom/facebook/katana/net/HttpOperation;

    iget-wide v1, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->c:J

    iget-wide v3, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->a:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;->a(JJ)V

    .line 517
    :cond_0
    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->d:J

    iget-wide v2, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;->d:J

    .line 519
    :cond_1
    return-void
.end method
